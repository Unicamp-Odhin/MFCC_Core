import sys
import numpy as np
import matplotlib.pyplot as plt

if len(sys.argv) < 2:
    print("Uso: python script.py caminho/do/arquivo.dat")
    sys.exit(1)

path = sys.argv[1]

data = np.loadtxt(path)

plt.figure(figsize=(14, 5))
plt.imshow(data.T, cmap='hot', aspect='auto')
plt.title('Ceps por Frame')
plt.xlabel('Frame')
plt.ylabel('Ceps')
# plt.colorbar(label="Energia (log)")
plt.show()
