import os
import csv
import numpy as np

# diretórios
dir_c = "dumps/c"
dir_py = "dumps/python"
log_file = "logs/erro.csv"

os.makedirs("logs", exist_ok=True)

with open(log_file, mode="w", newline="") as f_log:
    csv_writer = csv.writer(f_log)
    csv_writer.writerow(["Arquivo", "MSE", "MAE", "MaxErro"])

    # assume que ambos diretórios têm os mesmos arquivos
    for fname in sorted(os.listdir(dir_c)):
        path_c = os.path.join(dir_c, fname)
        path_py = os.path.join(dir_py, fname)

        if not os.path.exists(path_py):
            csv_writer.writerow([fname, "Arquivo ausente no Python", "", ""])
            continue

        # lê os valores
        data_c = np.loadtxt(path_c)
        data_py = np.loadtxt(path_py)

        # garante que tenham o mesmo tamanho
        min_len = min(len(data_c), len(data_py))
        data_c = data_c[:min_len]
        data_py = data_py[:min_len]

        # erros
        mse = np.mean((data_c - data_py) ** 2)
        mae = np.mean(np.abs(data_c - data_py))
        max_err = np.max(np.abs(data_c - data_py))

        # salva no log
        csv_writer.writerow([fname, f"{mse:.6f}", f"{mae:.6f}", f"{max_err:.6f}"])

print(f"Erros salvos em {log_file}")
