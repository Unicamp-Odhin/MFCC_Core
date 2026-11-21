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
