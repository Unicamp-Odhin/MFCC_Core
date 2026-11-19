import os
import sys
import glob
import math
import subprocess
import csv
import time
import matplotlib.pyplot as plt  # <-- ADICIONADO

ROOT_DIR = os.environ.get('PROJECT_ROOT')
REF_C_DIR = os.environ.get('REF_C_DIR')
REF_PYTHON_DIR = os.environ.get('REF_PYTHON_DIR')
WAV_DIR = os.environ.get('WAV_DIR')
SAMPLES_DIR = os.environ.get('SAMPLES_DIR')
WAV_FILE = os.path.join(WAV_DIR, '16_000_hz', 'sagarana_03.wav')
C_BINARY = os.path.join(REF_C_DIR, 'build', 'main.elf')
C_DUMP_FILE = os.path.join(REF_C_DIR, 'dumps', '1_pre_emphasis.hex')
PY_DUMP_PATH = os.path.join(REF_PYTHON_DIR, 'dumps', '1_pre_emphasis.hex')

F_PRE=24
F_HAMMING=12
F_FFT=12
F_MEL=12
F_DCT=12

TRUNCATE_PRE=0
TRUNCATE_HAMMING=0
TRUNCATE_FFT=0
TRUNCATE_MEL=0
TRUNCATE_DCT=0

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

def parse_valor(linha):
    linha = linha.strip()
    if not linha:
        return None
    raw = linha
    if linha.lower().startswith('0x'):
        raw = linha[2:]
    if any(c in 'abcdefABCDEF' for c in raw):
        valor = int(raw, 16)
        if valor >= 0x80000000:
            valor -= 0x100000000
        return valor
    return int(raw, 10)

def ler_arquivo_hex(caminho):
    dados = []
    with open(caminho, 'r') as f:
        for linha in f:
            # valor = parse_valor(linha)
            valor = float(linha)
            if valor is not None:
                dados.append(valor)
    return dados

def ler_dumps(caminho):
    if not os.path.exists(caminho):
        return None
    if os.path.isfile(caminho):
        return ler_arquivo_hex(caminho)
    elif os.path.isdir(caminho):
        hex_files = glob.glob(os.path.join(caminho, '*.hex'))
        def chave(arq):
            nome = os.path.basename(arq)
            nome_sem_ext = os.path.splitext(nome)[0]
            try:
                return int(nome_sem_ext)
            except ValueError:
                return nome
        hex_files.sort(key=chave)
        dados = []
        for arq in hex_files:
            dados.extend(ler_arquivo_hex(arq))
        return dados
    return None

def calcular_metricas(c, py):
    n = len(c)
    if n == 0:
        return {'mae': 0, 'max_abs': 0, 'mre': 0, 'rmse': 0}

    abs_erros = [abs(c[i] - py[i]) for i in range(n)]
    quad_erros = [(c[i] - py[i])**2 for i in range(n)]

    rel_erros = []
    for i in range(n):
        denom = abs(py[i])
        if denom < 1e-12:
            rel_erros.append(0.0 if abs_erros[i] < 1e-12 else float('inf'))
        else:
            rel_erros.append(abs_erros[i] / denom)

    mae = sum(abs_erros) / n
    max_abs = max(abs_erros)
    rmse = math.sqrt(sum(quad_erros) / n)

    rel_validos = [e for e in rel_erros if e != float('inf')]
    mre = sum(rel_validos) / len(rel_validos) if rel_validos else float('inf')

    return {'mae': mae, 'max_abs': max_abs, 'mre': mre, 'rmse': rmse}

def main():
    py_data = ler_dumps(PY_DUMP_PATH)
    if py_data is None or len(py_data) == 0:
        print(f"Erro: Referência Python não encontrada ou vazia em {PY_DUMP_PATH}")
        sys.exit(1)

    cabecalho = ['F_PRE', 'Erro Absoluto Médio', 'Erro Absoluto Máximo',
                 'Erro Relativo Médio', 'Erro Quadrático Médio']
    resultados = []

    for F_PRE_local in range(0, 30):
        global F_PRE
        F_PRE = F_PRE_local
        write_config()
        cmd = [C_BINARY, WAV_FILE]
        print(f"Processando F_PRE = {F_PRE} ...")
        try:
            subprocess.run(cmd, cwd=REF_C_DIR, check=True,
                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        except subprocess.CalledProcessError as e:
            print(f"  Erro ao executar C para F_PRE={F_PRE}: {e}")
            continue

        c_data = ler_dumps(C_DUMP_FILE)
        if c_data is None or len(c_data) == 0:
            print(f"  Nenhum dump encontrado para F_PRE={F_PRE} (em {C_DUMP_FILE})")
            continue

        min_len = min(len(c_data), len(py_data))
        if min_len == 0:
            print(f"  Dados vazios para F_PRE={F_PRE}")
            continue

        c_trim = c_data[:min_len]
        py_trim = py_data[:min_len]

        metricas = calcular_metricas(c_trim, py_trim)
        resultados.append([
            F_PRE,
            metricas['mae'],
            metricas['max_abs'],
            metricas['mre'],
            metricas['rmse']
        ])

    # Salva CSV
    with open('metrics_pre_empahsis.csv', 'w', newline='') as f:
        writer = csv.writer(f, delimiter=',')
        writer.writerow(cabecalho)
        writer.writerows(resultados)

    print("\nResultados salvos em metrics.csv")

    if not resultados:
        print("Nenhum dado para plotar.")
        return

    # Extrai colunas
    F_vals = [r[0] for r in resultados]
    mae_vals = [r[1] for r in resultados]
    max_vals = [r[2] for r in resultados]
    mre_vals = [r[3] for r in resultados]
    rmse_vals = [r[4] for r in resultados]

    fig, axs = plt.subplots(2, 2, figsize=(12, 8))
    fig.suptitle('Métricas de Erro vs F_PRE (pré-ênfase)', fontsize=14)

    axs[0, 0].plot(F_vals, mae_vals, 'b-o')
    axs[0, 0].set_title('Erro Absoluto Médio (MAE)')
    axs[0, 0].set_xlabel('F_PRE')
    axs[0, 0].set_ylabel('MAE')
    axs[0, 0].grid(True)

    axs[0, 1].plot(F_vals, max_vals, 'r-o')
    axs[0, 1].set_title('Erro Absoluto Máximo (MAX)')
    axs[0, 1].set_xlabel('F_PRE')
    axs[0, 1].set_ylabel('MAX')
    axs[0, 1].grid(True)

    axs[1, 0].plot(F_vals, mre_vals, 'g-o')
    axs[1, 0].set_title('Erro Relativo Médio (MRE)')
    axs[1, 0].set_xlabel('F_PRE')
    axs[1, 0].set_ylabel('MRE')
    axs[1, 0].grid(True)

    axs[1, 1].plot(F_vals, rmse_vals, 'm-o')
    axs[1, 1].set_title('Erro Quadrático Médio (RMSE)')
    axs[1, 1].set_xlabel('F_PRE')
    axs[1, 1].set_ylabel('RMSE')
    axs[1, 1].grid(True)

    plt.tight_layout()
    plt.savefig('metrics_pre_empahsis_plot.png', dpi=150)
    print("Gráfico salvo em metrics_plot.png")
    # Opcional: mostrar na tela (comente se não quiser)
    # plt.show()

if __name__ == '__main__':
    main()