import csv

def bit_reverse(i: int, bits: int) -> int:
    r = 0
    for _ in range(bits):
        r = (r << 1) | (i & 1)
        i >>= 1
    return r

def gerar_tabela(N: int, arquivo_csv: str = "tabela_bit_reversal.csv"):
    bits = N.bit_length() - 1

    linhas = []
    for i in range(N):
        j   = bit_reverse(i, bits)
        pc  = bin(j).count("1")
        m4  = pc % 4
        linhas.append((i, j, pc, m4))

    with open(arquivo_csv, "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["ponteiro", "ponteiro_reverso", "total_de_uns", "mod_4"])
        w.writerows(linhas)

if __name__ == "__main__":
    gerar_tabela(N=512)