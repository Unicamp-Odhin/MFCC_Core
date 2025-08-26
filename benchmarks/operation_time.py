def operation_time(cycles: int, freq_mhz: float) -> float:
    """
    Calcula o tempo de operação de um bloco em microsegundos.

    :param cycles: Número de ciclos de clock que o bloco leva
    :param freq_mhz: Frequência do clock em MHz
    :return: Tempo de operação em microsegundos (µs)
    """
    if freq_mhz <= 0:
        raise ValueError("A frequência deve ser maior que zero")
    return cycles / freq_mhz  # resultado em µs


if __name__ == "__main__":
    # Exemplo: 400 ciclos, clock de 100 MHz
    cycles = 4211
    freq = 75.0  # MHz

    t_us = operation_time(cycles, freq)
    print(f"Ciclos: {cycles}")
    print(f"Frequência: {freq} MHz")
    print(f"Tempo de operação: {t_us:.3f} µs")
