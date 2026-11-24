// GERADO AUTOMATICAMENTE por utils/gen_params.py a partir do .env - NAO EDITAR
// Consumido pelos testbenches e pelo dct.sv (`include "mfcc_params.vh" )
`ifndef MFCC_PARAMS_VH
`define MFCC_PARAMS_VH

`define MFCC_NFFT 1024
`define MFCC_RFFT_SIZE 512
`define MFCC_NFFT_LOG2 10
`define MFCC_NUM_FILTERS 40
`define MFCC_NUM_CEPS 12
`define MFCC_MEL_BANK_SIZE 64

`define MFCC_SAMPLE_RATE 16000
`define MFCC_SAMPLE_INTERVAL 6250  // ciclos de clock @100MHz
`define MFCC_FRAME_SIZE 400  // amostras
`define MFCC_FRAME_STEP 160  // amostras

`define MFCC_F 16
`define MFCC_ALPHA 63569
`define MFCC_FACTOR0 10362
`define MFCC_FACTORK 14654

`define MFCC_MAX_AUDIO_SIZE 4001
`endif // MFCC_PARAMS_VH
