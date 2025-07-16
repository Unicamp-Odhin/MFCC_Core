import math
import cmath


def fft_radix2(x):
    """
    Implementa a FFT radix-2 Cooley-Tukey recursiva.
    Entrada:
        x: Lista de números complexos (tamanho N, potência de 2)
    Saída:
        Lista com a FFT de x (tamanho N)
    """
    N = len(x)
    if N <= 1:
        return x

    if N % 2 != 0:
        raise ValueError('O tamanho da entrada deve ser uma potência de 2')

    # Divide em pares e ímpares
    even = fft_radix2(x[0::2])
    odd = fft_radix2(x[1::2])

    # Combina as partes
    result = [0] * N
    for k in range(N // 2):
        twiddle = cmath.exp(-2j * cmath.pi * k / N) * odd[k]
        result[k] = even[k] + twiddle
        result[k + N // 2] = even[k] - twiddle

    return result


def fft_radix2_iterative(x):
    """
    Implementa a FFT radix-2 Cooley-Tukey iterativa.
    Entrada:
        x: Lista de números complexos (tamanho N, potência de 2)
    Saída:
        Lista com a FFT de x (tamanho N)
    """
    N = len(x)
    if N <= 1:
        return x

    if N % 2 != 0:
        raise ValueError('O tamanho da entrada deve ser uma potência de 2')

    # Reordena os dados (bit-reversal)
    indices = [0] * N
    for i in range(N):
        indices[i] = int(
            '{:0{width}b}'.format(i, width=N.bit_length() - 1)[::-1], 2
        )

    x_reordered = [x[i] for i in indices]

    # FFT iterativa
    step = 1
    while step < N:
        for k in range(0, N, step * 2):
            for j in range(step):
                twiddle = cmath.exp(-2j * cmath.pi * j / (step * 2))
                t = twiddle * x_reordered[k + j + step]
                x_reordered[k + j + step] = x_reordered[k + j] - t
                x_reordered[k + j] += t
        step *= 2

    return x_reordered


def dft(x):
    """
    Calcula a DFT de um sinal x usando a definição direta.
    Entrada:
        x: Lista de números reais (ou complexos), tamanho N
    Saída:
        X: Lista de números complexos, tamanho N (DFT completa)
    """
    N = len(x)
    X = []
    for k in range(N):
        sum_real = 0.0
        sum_imag = 0.0
        for n in range(N):
            angle = -2 * math.pi * k * n / N
            sum_real += x[n] * math.cos(angle)
            sum_imag += x[n] * math.sin(angle)
        X.append(complex(sum_real, sum_imag))
    return X


def rfft(x):
    """
    Real FFT: calcula apenas os coeficientes únicos da DFT de um sinal real.
    Entrada:
        x: Lista de números reais
    Saída:
        X_rfft: Lista de números complexos contendo os N//2 + 1 primeiros coeficientes (DC até Nyquist)
    """
    N = len(x)
    X_full = dft(x)          # Calcula a DFT completa
    print(f'DFT completa (tamanho {N}): {X_full}')
    X_rfft = X_full[
        : N // 2 + 1
    ]   # Mantém só a metade positiva (inclui DC e Nyquist se N par)
    print(f'RFFT (tamanho {len(X_rfft)}): {X_rfft}')
    return X_rfft


# Exemplo de teste
if __name__ == '__main__':
    # Sinal de exemplo: senoide simples de 4 pontos
    import matplotlib.pyplot as plt

    fs = 8  # Hz
    t = [n / fs for n in range(8)]  # 8 amostras
    x = [math.sin(2 * math.pi * 1 * tn) for tn in t]  # Senoide de 1 Hz

    X_rfft = rfft(x)

    # Exibir resultados
    print('Entrada x:')
    print(x)

    print('\nSaída RFFT (magnitude):')
    for k, Xk in enumerate(X_rfft):
        print(f'k={k}, |X|={abs(Xk):.4f}, Fase={cmath.phase(Xk):.4f} rad')

    # Plot (opcional)
    mags = [abs(Xk) for Xk in X_rfft]
    plt.stem(range(len(mags)), mags)
    plt.title('Magnitude da RFFT')
    plt.xlabel('k (bin)')
    plt.ylabel('|X(k)|')
    plt.show()
