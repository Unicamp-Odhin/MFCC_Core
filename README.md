# MFCC Core

IP de extração de coeficientes MFCC (Mel-Frequency Cepstral Coefficients) em
SystemVerilog, com modelos de referência em C (ponto fixo) e Python (ponto
flutuante), fluxo de geração de vetores de referência e testbenches de
validação.

```
pcm_in ──> pre_emphasis ──> fifo ──> window_buffer ──> hamming_window ──> fft_radix2
                                                                              │
 dct <── cos_lut_rom <──────────────────── dct (energias) <── mel <──────────┘
  │                                          (log2_fp_pipelined, mel_table_rom)
  └──> mfcc_data_o (NUM_CEPS coeficientes)
```

---

## 1. Configuração única de parâmetros (`.env`)

Todos os parâmetros - do modelo C, do modelo Python e dos testbenches RTL -
partem de **um único arquivo**: o `.env` na raiz do repositório. O script
`utils/gen_params.py` lê o `.env` e gera:

| Arquivo gerado | Consumidor |
|---|---|
| `ref_model/c/lib/mfcc_fixed_point/include/mfcc/params.h` | C - macros de compilação (`NFFT`, `NUM_FILTERS`, `NUM_CEPS`, janela em segundos) |
| `ref_model/c/config.txt` | C - configuração de runtime (`F_*`, `TRUNCATE_*`) |
| `ref_model/python/params.py` | Python - `NFFT`, `NFILT`, `NUM_CEPS`, `FRAME_SIZE`, `PRE_EMPHASIS`... |
| `rtl/mfcc_params.vh` | RTL - testbenches e `dct.sv` (`include "mfcc_params.vh"`) |

Para trocar a configuração do IP (ex.: FFT de 256 pontos, 20 filtros, 7 ceps),
edite o `.env` e rode o fluxo da seção 3. **Não edite os arquivos gerados à
mão** - eles são sobrescritos.

Regras do `.env`:

- `F` é a precisão de ponto fixo e **deve ser o mesmo valor para todas as
  transformadas** (`F_PRE = F_HAMMING = F_FFT = F_MEL = F_DCT`). Os campos
  `F_*` individuais são overrides opcionais; se vazios, herdam `F`.
- A janela deve caber na FFT: `SAMPLE_RATE * FRAME_SIZE_SEC <= NFFT`.
  Ex.: a 44,1 kHz, 25 ms = 1102 amostras > 1024 - use `FRAME_SIZE_SEC=0.023`.

---

## 2. Geração de referência: os DOIS dumps do modelo C

O executável do modelo C (`ref_model/c/build/main.elf`) gera **duas séries de
dumps**, com propósitos diferentes:

| Dump | Formato | Onde | Para quê |
|---|---|---|---|
| **`ref_vectors/`** | **hex inteiro** (ponto fixo, exatamente como o RTL calcula) | `tests/ref_vectors/{0_samples,1_pre_emphasis,2_frames,3_hamming_frames,4_power_spectrum,5_energies,6_ceps}` | **Comparação bit-a-bit com o RTL** - são os golden vectors que os testbenches consomem |
| **`dumps/`** | **float** (o mesmo dado convertido de volta para ponto flutuante) | `ref_model/c/dumps/{0..6}` | **Comparação/visualização com o modelo Python** - o Python gera dumps equivalentes em `ref_model/python/dumps/` |

Ou seja: o mesmo dado atravessa os dois formatos - o inteiro valida o RTL
ciclo a ciclo; o float valida o Python e serve para plots/análise de erro.

Os vetores de `ref_vectors/` incluem também o dump de amostras de entrada
(`0_samples_dump.hex`), que os testbenches reinjetam no RTL.

---

## 3. Fluxo completo de geração de referência + tabelas

```bash
# 1. Configura o .env na raiz (NFFT, NUM_FILTERS, NUM_CEPS, SAMPLE_RATE, F, WAV_FILE...)

# 2. Gera params.h / config.txt / params.py / mfcc_params.vh e roda o modelo C
./utils/run_reference.sh
```

O `utils/run_reference.sh` faz, em sequência:

1. **`utils/gen_params.py`** - gera os 4 arquivos do `.env`.
2. **Compila e executa o modelo C** (`make` + `main.elf <wav>`) sobre o WAV
   apontado por `WAV_FILE` no `.env`. Produz:
   - os golden vectors (`tests/ref_vectors/`, hex inteiro → RTL);
   - os dumps float (`ref_model/c/dumps/` → comparação com Python);
   - as tabelas em `tables/` (`cos_lut.hex`, `mel_table.hex`,
     `hamming_window.hex`, `twiddles.hex`) - **as mesmas que o próprio C usa
     em ponto fixo**.
3. **Extrai do log do C** os valores derivados em runtime e atualiza
   `rtl/mfcc_params.vh`: `FACTOR0`, `FACTORk` (constantes do DCT, função do
   número de filtros e de `F_DCT`) e `MEL_BANK_SIZE` (largura máxima de banco
   do filterbank, que o C imprime como `MEL_BANK_SIZE=`).
4. **`utils/rom_generate.py`** - converte `tables/*.hex` nas ROMs
   SystemVerilog (`rtl/cos_lut_rom.sv`, `rtl/mel_table_rom.sv`,
   `rtl/hamming_rom.sv`, `rtl/twiddles_rom.sv`), dimensionando o barramento de
   endereços pelo número de entradas.

> **Importante:** o script limpa **também** a `libmfcc.a`
> (`make -C ref_model/c/lib/mfcc_fixed_point clean`). Como os headers da lib
> (`params.h`) mudam a cada configuração e o Makefile não rastreia
> dependências de header, uma lib obsoleta (compilada com o `NFFT` da
> configuração anterior) desalinia todas as alocações e **segfaulta** no
> `dump_hex` do espectro. Se for rodar o C manualmente, limpe os dois makes.

O log do C também imprime os marcadores `>>>>MUDAR O RTL...<<<<` com
`FACTOR0`, `FACTORk` e `MEL_BANK_SIZE` - hoje o passo 3 do script faz essa
"troca" automaticamente no `mfcc_params.vh`.

---

## 4. Testbenches (`run_simulation.sh`)

O `run_simulation.sh <teste>` compila com Verilator e executa um testbench.
Uso:

```bash
source setup.sh          # exporta RTL_DIR, TESTS_DIR, TABLES_DIR, ...
./run_simulation.sh fft            # só a FFT (2 quadros, turbo)
./run_simulation.sh mel            # mel isolado (vetores de power spectrum)
./run_simulation.sh dct            # FFT+mel+dct (compara energias e ceps)
./run_simulation.sh window_buffer  # janela circular (compara 9 movimentos)
./run_simulation.sh hamming        # hamming (9 quadros)
./run_simulation.sh fifo | log | pre_emphasis
./run_simulation.sh mfcc           # IP completo, 10 quadros, tempo real
./run_simulation.sh all            # todos
./run_simulation.sh clean
```

Detalhes de cada TB relevante para a validação do IP:

- **`mfcc_tb`** - o teste end-to-end do `MFCC_Core`. Injeta as amostras na
  **taxa real** (`SAMPLE_INTERVAL` ciclos de clock por amostra, derivado de
  `SAMPLE_RATE`), processa `NUM_FRAMES` quadros e **compara os ceps
  gerados com `ref_vectors/6_ceps`**, além de verificar o pré-ênfase e
  reportar qualquer evento de FIFO cheia. Também imprime os coeficientes.
- **`dct_tb`** - cadeia pré-ênfase→janela→hamming→FFT→mel→dct em modo turbo
  (injeção à taxa de clock, gate `!fifo_full`); compara **energias** com
  `ref_vectors/5_energies` e **ceps** com `ref_vectors/6_ceps` de 2 quadros.
- **`fft_tb`** - dumpa o espectro de potência de 2 quadros em
  `tests/data/4_power_spectrum` (comparação offline com `ref_vectors`).
- **`window_buffer_tb`** - valida o endereçamento circular da janela: 9
  movimentos de `FRAME_STEP`, comparando o conteúdo do buffer com
  `ref_vectors/2_frames`.
- **`hamming_tb`** - 9 quadros da janela+hamming, comparados com
  `ref_vectors/3_hamming_frames`.
- **`mel_tb`** - mel isolado: carrega `ref_vectors/4_power_spectrum` direto no
  filtro e compara com `ref_vectors/5_energies`.

Todos leem os parâmetros de `rtl/mfcc_params.vh` (gerado), portanto **não
precisam ser editados ao trocar de configuração** - basta regenerar a
referência. O `run_simulation.sh` adiciona `-I${RTL_DIR}` ao Verilator para
resolver o include.

Modo turbo vs tempo real: os TBs `fft/dct/mel/hamming` injetam à taxa de clock
para rodarem rápido; o `mfcc_tb` injeta em tempo real porque é o modo de
operação do IP (microfone). Na taxa real a FIFO de PCM não satura (nível
máximo medido ≪ profundidade).

---

## 5. Matriz de verificação de configurações

`utils/run_matrix.sh` roda a matriz completa: para cada configuração
(NFFT/filtros/ceps/taxa) e cada precisão `F ∈ {8, 16, 24}`, regenera a
referência (C + ROMs) e roda `mfcc_tb` + `dct_tb` + `mel_tb`, acumulando o
resultado em `tests/build/sweep_results.txt`:

```bash
./utils/run_matrix.sh
```

Configurações alvo (F = taxa de amostragem em kHz):

| NFFT | Filtros mel | Ceps | Taxa |
|---|---|---|---|
| 256  | 20 | 7  | 8.0   |
| 512  | 40 | 12 | 16.0  |
| 1024 | 60 | 20 | 44.1  |

Resultado atual (todas as células **APROVADAS** — bit-exact contra o modelo C):

| Config                   | F=8 | F=16 | F=24 |
|---|---|---|---|
| A — 256/20/7 @ 8 kHz     | ✅  | ✅   | ✅   |
| B — 512/40/12 @ 16 kHz   | ✅  | ✅   | ✅   |
| C — 1024/60/20 @ 44.1 kHz| ✅  | ✅   | ✅   |

Em cada célula: `mfcc_tb` end-to-end em tempo real (10/10 quadros, FIFO nunca
cheia, pré-ênfase sem erros), `dct_tb` turbo com energias **e** ceps idênticos
ao C, e `mel_tb` 2/2.

---

## 6. Netlists de benchmark (`benchmark/`, via sv2v)

`utils/gen_benchmark.sh` gera os **9 netlists** (3 NFFT × F ∈ {8,16,24}) em
`benchmark/` como Verilog-2005 plano:

```bash
./utils/gen_benchmark.sh
```

Para cada combinação o script: (1) regenera o `.env`; (2) roda
`run_reference.sh` — que usa `utils/gen_params.py` para gerar
`mfcc_params.vh`/`params.h`/`config.txt`/`params.py`, o modelo C para as
tabelas (dependem de NFFT **e** F) e corrige `FACTOR0`/`FACTORk`/
`MEL_BANK_SIZE` no `.vh`; (3) roda `sv2v --top=MFCC_Core -Irtl rtl/*.sv`
produzindo `benchmark/mfcc_NFFT<n>_F<f>.v`; (4) verifica a elaboração com
`iverilog -g2005`.

Como os defaults dos parâmetros do `MFCC_Core` vêm de `mfcc_params.vh`, o
sv2v especializa o netlist: cada arquivo já nasce com parâmetros, ROMs e
constantes consistentes para a sua combinação (não há overrides a fazer).
Detalhes do netlist:

- `mfcc_data_o` é empacotado pelo sv2v em `[(NUM_CEPS*32)-1:0]`, com o
  **coeficiente 0 no slice mais significativo** (elemento `j` em
  `[32*(NUM_CEPS-1-j) +: 32]`).
- Dois netlists foram validados funcionalmente em iverilog contra o modelo C
  (`mfcc_NFFT1024_F16.v` e `mfcc_NFFT256_F8.v`, 2 quadros cada, ceps
  bit-exact) — logs em `tests/build/bench_sim*.log`.

---

## 7. Estrutura do repositório

```
rtl/            núcleo (MFCC_Core + estágios) e ROMs geradas
tests/          testbenches; ref_vectors/ (golden, hex); data/ (dumps dos TBs)
ref_model/c     modelo de referência em C (lib/mfcc_fixed_point + main)
ref_model/python modelo de referência em Python
tables/         tabelas intermediárias (hex) geradas pelo C
utils/          gen_params.py, run_reference.sh, run_matrix.sh,
                gen_benchmark.sh, rom_generate.py, create_wav.py,
                scripts de comparação
benchmark/      netlists Verilog-2005 gerados pelo sv2v (seção 6)
wav/            áudios de teste (seno 8/16/44.1 kHz)
.env            fonte única de parâmetros (seção 1)
```

---

## 8. Bugs importantes já corrigidos (histórico para revisão)

- **`window_buffer`**: consumia `FRAME_SIZE` amostras da FIFO por quadro em
  vez de `FRAME_STEP` e zerava `wr_ptr` a cada movimento - destruía amostras
  que os quadros seguintes ainda precisavam (janelamento válido só até o
  quadro 1) e fazia a FIFO saturar (turbo) ou esvaziar (tempo real).
  Reescrito com contador `fill_need` (FRAME_SIZE no 1º fill, FRAME_STEP nos
  demais), `mem_we` alinhado 1:1 com os pops da FIFO e `wr_ptr` circular
  contínuo. Além disso `frame_size`/`frame_step` internos truncavam em
  `$clog2(FRAME_SIZE)` bits - para `FRAME_SIZE` potência de 2 (ex.: 256) o
  valor virava 0 e o FSM nunca saía do `FILL`; as comparações agora usam os
  **parâmetros** diretamente.
- **`hamming_window`**: `frame_ptr`/`temp_ptr` com `$clog2(NFFT)` bits wrapavam
  quando `FRAME_SIZE == NFFT` (ex.: 256/256), fazendo o estado `PADDING` injetar
  `NFFT` zeros extras que sobrescreviam o quadro dentro da FFT. Ponteiros
  alargados em 1 bit e o `PADDING` não emite mais amostra quando não há nada a
  padear (a versão anterior reemitia o último produto com o ponteiro wrapado).
- **`dct.sv`**: `FACTOR0`/`FACTORk` agora vêm de `mfcc_params.vh` (gerados a
  partir do log do modelo C) em vez de constantes fixas de 40 filtros.
- **Testbenches**: removido o rollback `i <= i-3` (duplicava amostras quando a
  FIFO enchia); `window_buffer_tb`/`hamming_tb` referenciavam `buffer` em vez
  de `mem` e injetavam sem throttle.
