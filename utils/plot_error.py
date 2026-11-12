import os
import sys
import glob
import math
import subprocess
import csv
import matplotlib.pyplot as plt

ROOT_DIR = os.environ.get('PROJECT_ROOT')
REF_C_DIR = os.environ.get('REF_C_DIR')
REF_PYTHON_DIR = os.environ.get('REF_PYTHON_DIR')
WAV_DIR = os.environ.get('WAV_DIR')
WAV_FILE = os.path.join(WAV_DIR, '16_000_hz', 'sagarana_03.wav')
C_BINARY = os.path.join(REF_C_DIR, 'build', 'main.elf')
C_DUMP_DIR = os.path.join(REF_C_DIR, 'dumps', '6_ceps')
PY_DUMP_DIR = os.path.join(REF_PYTHON_DIR, 'dumps', '6_ceps')

F_REF = 16
F_INICIO = 1
F_FIM = 21

F_PRE = 24
F_HAMMING = 24
F_FFT = 24
F_MEL = 24
F_DCT = 20

TRUNCATE_PRE = 0
TRUNCATE_HAMMING = 0
TRUNCATE_FFT = 0
TRUNCATE_MEL = 0
TRUNCATE_DCT = 0


def write_config():
    config_path = os.path.join(REF_C_DIR, 'config.txt')
    with open(config_path, 'w') as f:
        f.write(f"F_PRE={F_PRE}\n")
        f.write(f"F_HAMMING={F_HAMMING}\n")
        f.write(f"F_FFT={F_FFT}\n")
        f.write(f"F_MEL={F_MEL}\n")
        f.write(f"F_DCT={F_DCT}\n")
        f.write(f"TRUNCATE_PRE={TRUNCATE_PRE}\n")
        f.write(f"TRUNCATE_HAMMING={TRUNCATE_HAMMING}\n")
        f.write(f"TRUNCATE_FFT={TRUNCATE_FFT}\n")
        f.write(f"TRUNCATE_MEL={TRUNCATE_MEL}\n")
        f.write(f"TRUNCATE_DCT={TRUNCATE_DCT}\n")


def ler_arquivo_hex(caminho):
    dados = []
    with open(caminho, 'r') as f:
        for linha in f:
            valor = float(linha)
            if valor is not None:
                dados.append(valor)
    return dados


def ler_dumps_por_frame(caminho):
    if not os.path.exists(caminho):
        return None
    if os.path.isdir(caminho):
        hex_files = glob.glob(os.path.join(caminho, '*.hex'))

        def chave(arq):
            nome = os.path.splitext(os.path.basename(arq))[0]
            try:
                return int(nome)
            except ValueError:
                return nome

        hex_files.sort(key=chave)
        return [ler_arquivo_hex(arq) for arq in hex_files]
    return [ler_arquivo_hex(caminho)]


def calcular_metricas_frame(c, py):
    n = len(c)
    if n == 0:
        return None
    abs_erros = [abs(c[i] - py[i]) for i in range(n)]
    quad_erros = [(c[i] - py[i]) ** 2 for i in range(n)]
    rel_erros = []
    for i in range(n):
        denom = abs(py[i])
        if denom < 1e-12:
            rel_erros.append(None)
        else:
            rel_erros.append(abs_erros[i] / denom)

    mae = sum(abs_erros) / n
    max_abs = max(abs_erros)
    rmse = math.sqrt(sum(quad_erros) / n)
    rel_validos = [e for e in rel_erros if e is not None]
    mre = sum(rel_validos) / len(rel_validos) if rel_validos else None

    return {'mae': mae, 'max_abs': max_abs, 'mre': mre, 'rmse': rmse}


def metricas_medias_todos_frames(py_frames, c_frames):
    n = min(len(py_frames), len(c_frames))
    if n == 0:
        return None
    mae_l, mre_l, rmse_l, max_l = [], [], [], []
    for i in range(n):
        py, c = py_frames[i], c_frames[i]
        ml = min(len(py), len(c))
        if ml == 0:
            continue
        m = calcular_metricas_frame(c[:ml], py[:ml])
        if m is None:
            continue
        mae_l.append(m['mae'])
        rmse_l.append(m['rmse'])
        max_l.append(m['max_abs'])
        if m['mre'] is not None:
            mre_l.append(m['mre'])

    if not mae_l:
        return None
    return {
        'mae': sum(mae_l) / len(mae_l),
        'mre': sum(mre_l) / len(mre_l) if mre_l else None,
        'rmse': sum(rmse_l) / len(rmse_l),
        'max_abs': sum(max_l) / len(max_l),
        'n_frames': len(mae_l),
    }


def identificar_frame_critico(py_frames, c_frames):
    n = min(len(py_frames), len(c_frames))
    metricas = []
    for i in range(n):
        py, c = py_frames[i], c_frames[i]
        ml = min(len(py), len(c))
        if ml == 0:
            continue
        m = calcular_metricas_frame(c[:ml], py[:ml])
        if m is None or m['mre'] is None:
            continue
        metricas.append((i, m))
    if not metricas:
        return None
    return max(metricas, key=lambda r: r[1]['mre'])[0]


def plot_barras_frame(py_frame, c_frame, frame_idx, F_val, output_path,
                      excluir_c0=True):
    ml = min(len(py_frame), len(c_frame))
    if ml == 0:
        return
    py = py_frame[:ml]
    c = c_frame[:ml]
    inicio = 1 if (excluir_c0 and ml > 1) else 0
    idx = list(range(inicio, ml))
    if not idx:
        return

    py_v = [py[i] for i in idx]
    c_v = [c[i] for i in idx]
    abs_err = [abs(c[i] - py[i]) for i in idx]
    rel_err = []
    for i in idx:
        d = abs(py[i])
        err = abs(c[i] - py[i])
        if d < 1e-12:
            rel_err.append(0.0 if err < 1e-12 else float('inf'))
        else:
            rel_err.append(100.0 * err / d)

    fig, axs = plt.subplots(1, 3, figsize=(18, 5.5))
    fig.suptitle(
        f'Seção 6.3 — Python vs. RTL (frame {frame_idx}, F={F_val})',
        fontsize=13, fontweight='bold')

    w = 0.38
    axs[0].bar([i - w / 2 for i in idx], py_v, w,
               label='Python (float)', color='#4C72B0')
    axs[0].bar([i + w / 2 for i in idx], c_v, w,
               label='RTL (ponto fixo)', color='#DD8452')
    axs[0].set_xlabel('Índice do coeficiente MFCC')
    axs[0].set_ylabel('Valor')
    axs[0].set_title('(a) Coeficientes: Python vs. RTL')
    axs[0].set_xticks(idx)
    axs[0].legend()
    axs[0].grid(True, axis='y', alpha=0.3)
    axs[0].axhline(0, color='k', lw=0.5)

    b = axs[1].bar(idx, abs_err, color='#C44E52')
    axs[1].set_xlabel('Índice do coeficiente MFCC')
    axs[1].set_ylabel('|RTL − Python|')
    axs[1].set_title('(b) Erro absoluto por coeficiente')
    axs[1].set_xticks(idx)
    axs[1].grid(True, axis='y', alpha=0.3)
    axs[1].bar_label(b, fmt='%.3f', padding=2, fontsize=8)

    rel_plot = [0 if r == float('inf') else r for r in rel_err]
    b = axs[2].bar(idx, rel_plot, color='#55A868')
    axs[2].set_xlabel('Índice do coeficiente MFCC')
    axs[2].set_ylabel('|RTL − Python| / |Python| (%)')
    axs[2].set_title('(c) Erro relativo por coeficiente')
    axs[2].set_xticks(idx)
    axs[2].grid(True, axis='y', alpha=0.3)
    axs[2].bar_label(b, fmt='%.1f%%', padding=2, fontsize=8)

    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close(fig)
    print(f"[fig] {output_path}")


def main():
    global F_DCT, F_PRE, F_HAMMING, F_FFT, F_MEL

    py_frames = ler_dumps_por_frame(PY_DUMP_DIR)
    if not py_frames:
        print(f"Erro: Referência Python não encontrada em {PY_DUMP_DIR}")
        sys.exit(1)

    print(f"Referência Python: {len(py_frames)} frames, "
          f"{len(py_frames[0])} coeficientes/frame")

    resultados = []

    for F in range(F_INICIO, F_FIM):
        F_DCT = F
        F_PRE = F
        F_HAMMING = F
        F_FFT = F
        F_MEL = F
        write_config()

        print(f"Processando F = {F} ...")
        try:
            subprocess.run([C_BINARY, WAV_FILE], cwd=REF_C_DIR, check=True,
                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        except subprocess.CalledProcessError as e:
            print(f"  Erro: {e}")
            continue

        c_frames = ler_dumps_por_frame(C_DUMP_DIR)
        if not c_frames:
            print(f"  Nenhum dump encontrado em {C_DUMP_DIR}")
            continue

        m = metricas_medias_todos_frames(py_frames, c_frames)
        if m is None:
            print(f"  Dados insuficientes para F={F}")
            continue

        resultados.append((
            F,
            m['mae'],
            m['mre'] if m['mre'] is not None else float('nan'),
            m['rmse'],
            m['n_frames'],
        ))
        print(f"  F={F}: MAE={m['mae']:.6f}  MRE={m['mre']:.4f}  "
              f"RMSE={m['rmse']:.6f}  ({m['n_frames']} frames)")

    with open('metrics_vs_F.csv', 'w', newline='') as f:
        w = csv.writer(f)
        w.writerow(['F', 'MAE_medio', 'MRE_medio', 'RMSE_medio', 'N_frames'])
        w.writerows(resultados)

    print("\nCSV salvo em metrics_vs_F.csv")

    if not resultados:
        print("Nenhum resultado para plotar.")
        return

    F_vals = [r[0] for r in resultados]
    mae_vals = [r[1] for r in resultados]
    mre_vals = [r[2] for r in resultados]
    rmse_vals = [r[3] for r in resultados]

    fig, axs = plt.subplots(3, 1, figsize=(10, 11), sharex=True)
    fig.suptitle('Métricas de erro médias por frame vs. F',
                 fontsize=14, fontweight='bold')

    axs[0].plot(F_vals, mae_vals, 'b-o', linewidth=2, markersize=6)
    axs[0].set_ylabel('MAE')
    axs[0].set_title('Erro Absoluto Médio (MAE) — média sobre todos os frames')
    axs[0].grid(True, alpha=0.4, which='both')
    axs[0].set_yscale('log')

    axs[1].plot(F_vals, mre_vals, 'g-o', linewidth=2, markersize=6)
    axs[1].set_ylabel('MRE')
    axs[1].set_title('Erro Relativo Médio (MRE) — média sobre todos os frames')
    axs[1].grid(True, alpha=0.4, which='both')
    axs[1].set_yscale('log')

    axs[2].plot(F_vals, rmse_vals, 'm-o', linewidth=2, markersize=6)
    axs[2].set_ylabel('RMSE')
    axs[2].set_title('Erro Quadrático Médio (RMSE) — média sobre todos os frames')
    axs[2].grid(True, alpha=0.4, which='both')
    axs[2].set_yscale('log')

    axs[2].set_xlabel('F (bits fracionários)')
    axs[2].set_xticks(F_vals)

    for ax in axs:
        if F_REF in F_vals:
            ax.axvline(F_REF, color='k', linestyle='--', alpha=0.6)
    axs[0].annotate(f'F_REF = {F_REF}',
                    xy=(F_REF, axs[0].get_ylim()[1] * 0.5),
                    xytext=(6, 0), textcoords='offset points',
                    fontsize=10, color='k')

    plt.tight_layout()
    plt.savefig('metrics_vs_F.png', dpi=150)
    plt.close(fig)
    print("[fig] metrics_vs_F.png")

    F_DCT = F_REF
    F_PRE = F_REF
    F_HAMMING = F_REF
    F_FFT = F_REF
    F_MEL = F_REF
    write_config()
    try:
        subprocess.run([C_BINARY, WAV_FILE], cwd=REF_C_DIR, check=True,
                       stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    except subprocess.CalledProcessError as e:
        print(f"Erro ao executar C para F_REF={F_REF}: {e}")
        return

    c_frames_ref = ler_dumps_por_frame(C_DUMP_DIR)
    if not c_frames_ref:
        print(f"Nenhum dump para F_REF={F_REF}")
        return

    idx_crit = identificar_frame_critico(py_frames, c_frames_ref)
    if idx_crit is not None:
        plot_barras_frame(
            py_frames[idx_crit], c_frames_ref[idx_crit],
            idx_crit, F_REF,
            f'barras_frame_critico_F{F_REF}.png')


if __name__ == '__main__':
    main()