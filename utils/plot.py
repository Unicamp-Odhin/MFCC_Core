import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("spectrogram_matrix.dat")
plt.imshow(data.T, origin='lower', aspect='auto', cmap='viridis', interpolation='nearest')
plt.title("Filterbank Energies por Frame")
plt.xlabel("Frame")
plt.ylabel("Filtro")
plt.colorbar(label="Energia (log)")
plt.show()
