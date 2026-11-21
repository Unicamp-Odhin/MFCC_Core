# Benchmark — netlists MFCC_Core (sv2v, Verilog-2005)

Gerados por `utils/gen_benchmark.sh`: para cada combinação de NFFT e F,
o `.env` é regenerado, `utils/gen_params.py` (via `run_reference.sh`) gera
os parâmetros/ROMs da configuração e o sv2v (`--top=MFCC_Core`) produz um
netlist flat e especializado — os parâmetros já vêm resolvidos para casar
com as ROMs e constantes embutidas.

Portas do `MFCC_Core`: `clock`, `rst_n`, `pcm_in[15:0]`, `pcm_ready_i`
(strobe de amostra), `start_i`, `auto_restart_i`, `mfcc_done_o` (1 ciclo
por quadro) e `mfcc_data_o` — vetor empacotado com `NUM_CEPS` palavras de
32 bits (um coeficiente MFCC por palavra, F bits fracionários).

| Arquivo | NFFT | Filtros | Ceps | Taxa (Hz) | F | FRAME_SIZE | FRAME_STEP |
|---|---|---|---|---|---|---|---|
| mfcc_NFFT256_F8.v    | 256  | 20 | 7  | 8000  | 8  | 256  | 128 |
| mfcc_NFFT256_F16.v   | 256  | 20 | 7  | 8000  | 16 | 256  | 128 |
| mfcc_NFFT256_F24.v   | 256  | 20 | 7  | 8000  | 24 | 256  | 128 |
| mfcc_NFFT512_F8.v    | 512  | 40 | 12 | 16000 | 8  | 400  | 160 |
| mfcc_NFFT512_F16.v   | 512  | 40 | 12 | 16000 | 16 | 400  | 160 |
| mfcc_NFFT512_F24.v   | 512  | 40 | 12 | 16000 | 24 | 400  | 160 |
| mfcc_NFFT1024_F8.v   | 1024 | 60 | 20 | 44100 | 8  | 1014 | 441 |
| mfcc_NFFT1024_F16.v  | 1024 | 60 | 20 | 44100 | 16 | 1014 | 441 |
| mfcc_NFFT1024_F24.v  | 1024 | 60 | 20 | 44100 | 24 | 1014 | 441 |

### Aliases para os scripts de síntese já existentes

Os `.tcl`/`.sh` de síntese desta pasta referenciam nomes curtos; são cópias
dos netlists canônicos acima:

| Alias            | Conteúdo                                        | Consumido por |
|---|---|---|
| `mfcc.v`         | config padrão do repo (1024/40/12 @16k, F=16)   | — (exemplo do fluxo) |
| `mfcc_F16.v`     | idem `mfcc.v`                                   | `kintex.tcl` (com `mfcc_wrapper.v`) |
| `mfcc_1024.v`    | idem `mfcc.v` (12 ceps — compatível com o wrapper) | `artix.tcl`, `virtex.tcl` |
| `mfcc_256.v`     | = `mfcc_NFFT256_F16.v` (config A)               | `gowin.tcl` |

Observação: `mfcc_wrapper.v` amarra a saída em 384 bits (12 coeficientes),
portanto só é compatível com netlists de configurações com `NUM_CEPS=12`
(config B ou a padrão) — não com os netlists da config C (20 ceps).

---

## Sweep de síntese FPGA (`fpga_sweep.sh`)

Roda os **9 netlists** em todas as FPGAs alvo e coleta métricas. Resultados em
`fpga/<NFFTxx_Fxx>/<fpga>/` (logs + relatórios) e resumo em
`fpga/summary.csv` / `fpga/summary.txt`:

```bash
./fpga_sweep.sh            # sweep completo (resumível — pula pastas com .done)
./fpga_sweep.sh pilot      # piloto: NFFT512_F16 em artymini + ECP5 + Gowin
./fpga_sweep.sh one 256 8  # uma combinação em todos os alvos
./fpga_sweep.sh clean
```

| Alvo | Ferramenta | Dispositivo | Top |
|---|---|---|---|
| kintex | Vivado | xc7k325tffg676-2 | MFCC_Wrapper |
| artymini | Vivado | xc7a35tcpg236-1 | MFCC_Wrapper |
| arty | Vivado | xc7a100tcsg324-1 | MFCC_Wrapper |
| zynq | Vivado | xc7z020clg484-1 | MFCC_Wrapper |
| virtex | Vivado | xc7vx690tffg1761-2 | MFCC_Wrapper |
| ecp5_45k / ecp5_85k | yosys + nextpnr-ecp5 | LFE5U-45F (sp6) / 85F (sp8) | MFCC_Core |
| gowin | gw_sh | GW2AR-18C (Tang Nano 9K) | MFCC_Wrapper |
| cyclone10gx | Quartus | 10CX220YF780E5G | MFCC_Wrapper |

Detalhes:

- Os TCLs Vivado foram parametrizados: `vivado -source <alvo>.tcl -tclargs
  <netlist.v> <outdir>`; os relatórios (`utilization/timing/power`,
  pré e pós-route) e o checkpoint vão para `<outdir>`, junto com o
  `vivado.log`. O clock é 100 MHz (`xilinx.xdc`); o **Fmax reportado é
  `1000/(10 ns − WNS)`** (mesma fórmula de `calc_fmax.py`).
- O `mfcc_wrapper.v` original alimentava o core com **constantes**
  (`pcm_in=0`, `start_i=0`), o que permite a síntese colapsar o datapath —
  os números antigos não são confiáveis. O sweep gera por combinação
  `wrap/wrap_<combo>.v` (`MFCC_Wrapper`) com **portas reais**, dimensionada
  para o `NUM_CEPS` da config (224/384/640 bits). Os TCLs do sweep usam o
  wrapper gerado; o antigo continua na pasta para referência.
- Gowin: o TCL do alvo é gerado por combinação em `<outdir>/gowin_sweep.tcl`
  (o `gw_sh` original não aceita args); o flow roda com CWD no `<outdir>`.
- Quartus (Cyclone 10 GX): projeto gerado por combinação
  (`gen_proj.tcl` -> `.qsf`) com `quartus_map/fit/sta/pow`; sem geração de
  bitstream.
- Execução isolada por alvo: `run_xilinx.sh <alvo> <netlist> <outdir>`,
  `run_ecp5.sh <netlist> <outdir>` (45k), `run_ecp5_85.sh` (85k).
- Coleta: `collect_fpga_metrics.py` varre `fpga/<combo>/<fpga>/` e extrai
  LUTs/FFs/DSP/BRAM/Fmax/Power de cada ferramenta -> `summary.csv`.
