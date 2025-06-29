import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("spectrogram_matrix.dat")
plt.figure(figsize=(14, 5))
plt.imshow(data.T, cmap='hot', aspect='auto')
plt.title("Filterbank Energies por Frame")
plt.xlabel("Frame")
plt.ylabel("Filtro")
plt.colorbar(label="Energia (log)")
plt.show()
