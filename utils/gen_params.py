import math
import os
import struct
import sys
import wave

#   .env (fonte unica)
#    |-- ref_model/c/lib/mfcc_fixed_point/include/mfcc/params.h  (C, compile-time)
#    |-- ref_model/c/config.txt                                  (C, runtime: F_*/TRUNCATE_*)
#    |-- ref_model/python/params.py                              (Python)
#    `-- rtl/mfcc_params.vh                                      (TBs / dct.sv)

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ENV_PATH = os.path.join(ROOT, ".env")

CLK_HZ = 100_000_000  # clock dos testbenches (100 MHz)


def f32(x: float) -> float:
    """Reproduz o arredondamento para float32 do C."""
    return struct.unpack("f", struct.pack("f", x))[0]


def clog2(n: int) -> int:
    return max(1, math.ceil(math.log2(n)))


def load_env(path: str) -> dict:
    cfg = {}
    with open(path) as f:
        for raw in f:
            line = raw.strip()
            if not line or line.startswith("#") or line.startswith("//"):
                continue
            if "=" not in line:
                continue
            key, val = line.split("=", 1)
            cfg[key.strip()] = val.strip()
    return cfg


def env_int(cfg: dict, key: str, default: int) -> int:
    v = cfg.get(key, "")
    return int(v) if v not in ("", None) else default


# valores replicados do modelo C: factor0 e factork
def dct_factors(num_filters: int, f_dct: int):
    scale = 1 << f_dct
    factor0 = int(math.sqrt(f32(1.0 / num_filters)) * scale)
    factork = int(math.sqrt(f32(2.0 / num_filters)) * scale)
    return factor0, factork


# ajusta a largura do filter banck para seguir a largura da tabela otimizada
def mel_bank_size(nfft: int, num_filters: int, sample_rate: int) -> int:
    n_bins = nfft // 2 + 1

    high_freq_mel = f32(2595.0) * f32(math.log10(f32(1.0) + f32(f32(sample_rate / 2.0) / 700.0)))

    bins = []
    for i in range(num_filters + 2):
        mel_points = f32(i * f32(high_freq_mel / f32(num_filters + 1)))
        hz_points = f32(700.0) * f32(f32(math.pow(f32(10.0), f32(mel_points / 2595.0))) - f32(1.0))
        b = math.floor(f32(f32((nfft + 1) * hz_points) / f32(sample_rate)))
        bins.append(b)

    max_size = 0
    for m in range(1, num_filters + 1):
        f_m_minus, f_m, f_m_plus = bins[m - 1], bins[m], bins[m + 1]
        support = set(range(f_m_minus, min(f_m, n_bins))) | set(range(f_m, min(f_m_plus, n_bins)))
        support = {k for k in support if 0 <= k < n_bins}
        if not support:
            continue
        tmp = max(support) - min(support) + 1
        max_size = max(max_size, tmp)

    return max_size + 1  # o C imprime max_size + 1


def emit_c_header(path, p):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w") as f:
        f.write("#ifndef MFCC_PARAMS_H\n#define MFCC_PARAMS_H\n\n")
        f.write(f"#define NFFT {p['nfft']}\n")
        f.write(f"#define NUM_FILTERS {p['num_filters']}\n")
        f.write(f"#define NUM_CEPS {p['num_ceps']}\n\n")
        f.write(f"#define MFCC_SAMPLE_RATE {p['sample_rate']}\n")
        f.write(f"#define MFCC_FRAME_SIZE_SEC {p['frame_size_sec']}\n")
        f.write(f"#define MFCC_FRAME_STEP_SEC {p['frame_step_sec']}\n")
        f.write(f"#define MFCC_PRE_EMPHASIS {p['pre_emphasis']}\n\n")
        f.write("#endif // MFCC_PARAMS_H\n")


def emit_config_txt(path, p):
    with open(path, "w") as f:
        f.write("# GERADO AUTOMATICAMENTE por utils/gen_params.py a partir do .env - NAO EDITAR\n")
        for stage in ["PRE", "HAMMING", "FFT", "MEL", "DCT"]:
            f.write(f"F_{stage}={p['f'][stage]}\n")
        for stage in ["PRE", "HAMMING", "FFT", "MEL", "DCT"]:
            f.write(f"TRUNCATE_{stage}={p['truncate'][stage]}\n")


def emit_python_params(path, p):
    with open(path, "w") as f:
        f.write("# GERADO AUTOMATICAMENTE por utils/gen_params.py a partir do .env - NAO EDITAR\n")
        f.write("from math import floor\n\n")
        f.write(f"NFFT = {p['nfft']}\n")
        f.write(f"NFILT = {p['num_filters']}\n")
        f.write(f"NUM_CEPS = {p['num_ceps']}\n")
        f.write(f"FRAME_SIZE = {p['frame_size_sec']}  # segundos\n")
        f.write(f"FRAME_STEP = {p['frame_step_sec']}  # segundos\n")
        f.write(f"PRE_EMPHASIS = {p['pre_emphasis']}\n")
        f.write(f"SAMPLE_RATE = {p['sample_rate']}\n")
        f.write(f"F_PRE = {p['f']['PRE']}\n")
        f.write(f"F_HAMMING = {p['f']['HAMMING']}\n")
        f.write(f"F_FFT = {p['f']['FFT']}\n")
        f.write(f"F_MEL = {p['f']['MEL']}\n")
        f.write(f"F_DCT = {p['f']['DCT']}\n")
        f.write("# ALPHA espelha o ALPHA do RTL (pre-enfase em ponto fixo)\n")
        f.write(f"ALPHA = int(PRE_EMPHASIS * (1 << {p['f']['PRE']}))\n")
        # tamanhos em amostras derivados da taxa
        f.write(f"FRAME_SIZE_SAMPLES = int(floor(SAMPLE_RATE * FRAME_SIZE))\n")
        f.write(f"FRAME_STEP_SAMPLES = int(floor(SAMPLE_RATE * FRAME_STEP))\n")


def emit_rtl_params(path, p):
    with open(path, "w") as f:
        f.write("// GERADO AUTOMATICAMENTE por utils/gen_params.py a partir do .env - NAO EDITAR\n")
        f.write("// Consumido pelos testbenches e pelo dct.sv (`include \"mfcc_params.vh\" )\n")
        f.write("`ifndef MFCC_PARAMS_VH\n")
        f.write("`define MFCC_PARAMS_VH\n\n")
        f.write(f"`define MFCC_NFFT {p['nfft']}\n")
        f.write(f"`define MFCC_RFFT_SIZE {p['rfft_size']}\n")
        f.write(f"`define MFCC_NFFT_LOG2 {p['nfft_log2']}\n")
        f.write(f"`define MFCC_NUM_FILTERS {p['num_filters']}\n")
        f.write(f"`define MFCC_NUM_CEPS {p['num_ceps']}\n")
        f.write(f"`define MFCC_MEL_BANK_SIZE {p['mel_bank_size']}\n\n")
        f.write(f"`define MFCC_SAMPLE_RATE {p['sample_rate']}\n")
        f.write(f"`define MFCC_SAMPLE_INTERVAL {p['sample_interval']}  // ciclos de clock @100MHz\n")
        f.write(f"`define MFCC_FRAME_SIZE {p['frame_size']}  // amostras\n")
        f.write(f"`define MFCC_FRAME_STEP {p['frame_step']}  // amostras\n\n")
        f.write(f"`define MFCC_F {p['f']['DCT']}\n")
        f.write(f"`define MFCC_ALPHA {p['alpha']}\n")
        f.write(f"`define MFCC_FACTOR0 {p['factor0']}\n")
        f.write(f"`define MFCC_FACTORK {p['factork']}\n\n")
        f.write(f"`define MFCC_MAX_AUDIO_SIZE {p['max_audio_size']}\n")
        f.write("`endif // MFCC_PARAMS_VH\n")


def main():
    if not os.path.exists(ENV_PATH):
        print(f"ERRO: .env nao encontrado em {ENV_PATH}", file=sys.stderr)
        sys.exit(1)
    env = load_env(ENV_PATH)

    nfft = env_int(env, "NFFT", 1024)
    num_filters = env_int(env, "NUM_FILTERS", 40)
    num_ceps = env_int(env, "NUM_CEPS", 12)
    sample_rate = env_int(env, "SAMPLE_RATE", 16000)
    frame_size_sec = float(env.get("FRAME_SIZE_SEC", "0.025"))
    frame_step_sec = float(env.get("FRAME_STEP_SEC", "0.010"))
    pre_emphasis = float(env.get("PRE_EMPHASIS", "0.97"))
    wav_file = env.get("WAV_FILE", "wav/seno_440Hz.wav")

    # F unico: overrides por etapa herdam F
    f_common = env_int(env, "F", 16)
    f_stage = {}
    warn_diff = False
    for stage in ["PRE", "HAMMING", "FFT", "MEL", "DCT"]:
        raw = env.get(f"F_{stage}", "")
        val = int(raw) if raw not in ("", None) else f_common
        f_stage[stage] = val
        if val != f_common:
            warn_diff = True
    truncate = {s: env_int(env, f"TRUNCATE_{s}", 0) for s in ["PRE", "HAMMING", "FFT", "MEL", "DCT"]}

    # derivados
    frame_size = int(sample_rate * frame_size_sec)
    frame_step = int(sample_rate * frame_step_sec)
    rfft_size = nfft // 2
    nfft_log2 = clog2(nfft)
    sample_interval = CLK_HZ // sample_rate
    alpha = int(pre_emphasis * (1 << f_stage["PRE"]))
    factor0, factork = dct_factors(num_filters, f_stage["DCT"])
    mel_bank = mel_bank_size(nfft, num_filters, sample_rate)

    # tamanho do dump de amostras do C (dimensao dos arrays dos TBs)
    wav_path = os.path.join(ROOT, wav_file)
    num_samples = 0
    try:
        with wave.open(wav_path) as w:
            num_samples = w.getnframes()
    except Exception as e:
        print(f"AVISO: nao foi possivel abrir {wav_path}: {e}", file=sys.stderr)
    max_audio_size = num_samples + 1

    # teste de coerencia
    problems = []
    if frame_size > nfft:
        problems.append(f"FRAME_SIZE ({frame_size} amostras = {frame_size_sec}s @ {sample_rate}Hz) > NFFT ({nfft}) - reduza FRAME_SIZE_SEC")
    if frame_step <= 0 or frame_step >= frame_size:
        problems.append(f"FRAME_STEP ({frame_step}) invalido (0 < step < frame_size)")
    if warn_diff:
        print("AVISO: F_* por etapa difere de F - os modelos assumem o MESMO tamanho por transformada", file=sys.stderr)

    p = {
        "nfft": nfft, "num_filters": num_filters, "num_ceps": num_ceps,
        "sample_rate": sample_rate, "frame_size_sec": frame_size_sec,
        "frame_step_sec": frame_step_sec, "pre_emphasis": pre_emphasis,
        "f": f_stage, "truncate": truncate,
        "frame_size": frame_size, "frame_step": frame_step,
        "rfft_size": rfft_size, "nfft_log2": nfft_log2,
        "sample_interval": sample_interval, "alpha": alpha,
        "factor0": factor0, "factork": factork, "mel_bank_size": mel_bank,
        "max_audio_size": max_audio_size, "wav_file": wav_file,
    }

    emit_c_header(os.path.join(ROOT, "ref_model/c/lib/mfcc_fixed_point/include/mfcc/params.h"), p)
    emit_config_txt(os.path.join(ROOT, "ref_model/c/config.txt"), p)
    emit_python_params(os.path.join(ROOT, "ref_model/python/params.py"), p)
    emit_rtl_params(os.path.join(ROOT, "rtl/mfcc_params.vh"), p)

    print("gen_params: configuracao gerada a partir de .env")
    print(f"  NFFT={nfft} NUM_FILTERS={num_filters} NUM_CEPS={num_ceps} RATE={sample_rate}")
    print(f"  FRAME_SIZE={frame_size} samples ({frame_size_sec}s)  FRAME_STEP={frame_step} samples ({frame_step_sec}s)")
    print(f"  F={f_stage}  TRUNCATE={truncate}")
    print(f"  SAMPLE_INTERVAL={sample_interval} ciclos @ {CLK_HZ} Hz")
    print("  >>> conferir com o log do modelo C (main.elf):")
    print(f"     FACTOR0={factor0} FACTORK={factork} MEL_BANK_SIZE={p['mel_bank_size']} (estimativa)")

    if problems:
        print("\nERRO DE CONFIGURACAO:", file=sys.stderr)
        for pr in problems:
            print(f"  - {pr}", file=sys.stderr)
        sys.exit(2)


if __name__ == "__main__":
    main()
