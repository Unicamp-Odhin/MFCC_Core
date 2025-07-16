import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt('ceps_matrix.dat')
plt.figure(figsize=(14, 5))
plt.imshow(data.T, cmap='hot', aspect='auto')
plt.title('Ceps por Frame')
plt.xlabel('Frame')
plt.ylabel('Ceps')
# plt.colorbar(label="Energia (log)")
plt.show()
