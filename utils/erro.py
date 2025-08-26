import os
import csv
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Diretórios
dir_c = "dumps/c"
dir_py = "dumps/python"
log_file = "logs/erro.csv"

os.makedirs("logs", exist_ok=True)

with open(log_file, mode="w", newline="") as f_log:
    csv_writer = csv.writer(f_log)
    csv_writer.writerow(["Arquivo", "MSE", "MAE", "MaxErro"])

    # Assume que ambos diretórios têm os mesmos arquivos
    for fname in sorted(os.listdir(dir_c)):
        path_c = os.path.join(dir_c, fname)
        path_py = os.path.join(dir_py, fname)

        if not os.path.exists(path_py):
            csv_writer.writerow([fname, "Arquivo ausente no Python", "", ""])
            continue

        try:
            # Lê os valores
            data_c = np.loadtxt(path_c)
            data_py = np.loadtxt(path_py)

            # Garante que tenham o mesmo tamanho
            min_len = min(len(data_c), len(data_py))
            data_c = data_c[:min_len]
            data_py = data_py[:min_len]

            # Calcula erros
            mse = np.mean((data_c - data_py) ** 2)
            mae = np.mean(np.abs(data_c - data_py))
            max_err = np.max(np.abs(data_c - data_py))

            # Salva no log
            csv_writer.writerow([fname, f"{mse:.6f}", f"{mae:.6f}", f"{max_err:.6f}"])
        except Exception as e:
            csv_writer.writerow([fname, f"Erro ao processar: {e}", "", ""])

print(f"Erros salvos em {log_file}")

# Lê o CSV
try:
    df = pd.read_csv(log_file, skipinitialspace=True)

    # Plota histograma do MAE (dados <= 1000)
    plt.figure(figsize=(16, 5))

    # Subplot 1: MAE <= 1000
    plt.subplot(1, 2, 1)
    plt.hist(df[df["MAE"] <= 1000]["MAE"].dropna(), bins=20, edgecolor="black", alpha=0.7)
    plt.xlabel("Erro Médio Absoluto (MAE) <= 1000")
    plt.ylabel("Frequência")
    plt.title("Histograma do MAE (<= 1000)")
    plt.grid(axis="y", linestyle="--", alpha=0.7)

    # Subplot 2: Todos os dados
    plt.subplot(1, 2, 2)
    plt.hist(df["MAE"].dropna(), bins=20, edgecolor="black", alpha=0.7)
    plt.xlabel("Erro Médio Absoluto (MAE)")
    plt.ylabel("Frequência")
    plt.title("Histograma do MAE (Completo)")
    plt.grid(axis="y", linestyle="--", alpha=0.7)

    plt.tight_layout()
    plt.savefig("logs/histograma_mae_completo.png", dpi=300)
    plt.show()
except Exception as e:
    print(f"Erro ao ler o arquivo CSV ou gerar os histogramas: {e}")