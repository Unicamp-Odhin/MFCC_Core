import numpy as np
import matplotlib.pyplot as plt

def hamming_window(N):
    n = np.arange(N)
    w = 0.54 - 0.46 * np.cos(2 * np.pi * n / (N - 1))
    return w

# Exemplo de uso:
N = 306
window = hamming_window(N)

# Visualizar a forma da janela:
plt.plot(window)
plt.title("Janela de Hamming (N={})".format(N))
plt.xlabel("Amostra")
plt.ylabel("Amplitude")
plt.grid(True)
plt.show()
print(f"Janela de Hamming (N={N}):")
print(window)
