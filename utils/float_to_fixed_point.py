def float_to_fixed(value, total_bits=16, fractional_bits=15):
    """
    Converte um valor de ponto flutuante para ponto fixo (formato Qm.n)

    Args:
        value (float): Valor de entrada (ponto flutuante)
        total_bits (int): Número total de bits (ex: 16)
        fractional_bits (int): Número de bits para a parte fracionária (ex: 15)

    Returns:
        int: Valor convertido em inteiro (ponto fixo)
    """

    # Limites com base no número de bits (considerando sinal)
    max_int = 2**(total_bits - 1) - 1
    min_int = -2**(total_bits - 1)

    # Multiplica para converter a fração
    fixed_val = int(round(value * (2**fractional_bits)))

    # Saturação (limita dentro do intervalo representável)
    if fixed_val > max_int:
        fixed_val = max_int
    elif fixed_val < min_int:
        fixed_val = min_int

    return fixed_val

# Exemplo de uso:
alpha = 0.97
fixed_alpha = float_to_fixed(alpha)

print(f"Alpha em Q1.15: {fixed_alpha} (hex: {hex(fixed_alpha & 0xFFFF)})")
