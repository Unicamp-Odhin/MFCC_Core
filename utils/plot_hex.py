import argparse
import matplotlib.pyplot as plt

def ler_hex_arquivo(caminho):
    valores = []
    with open(caminho, 'r') as arquivo:
        for linha in arquivo:
            linha = linha.strip()
            if linha:  # Ignora linhas vazias
                try:
                    valor = int(linha, 16)
                    valores.append(valor)
                except ValueError:
                    print(f"Valor inválido ignorado: {linha}")
    return valores

def plotar_valores(valores):
    plt.figure(figsize=(10, 5))
    plt.plot(valores, marker='o', linestyle='-')
    plt.title('Valores do Arquivo .hex (32 bits)')
    plt.xlabel('Índice')
    plt.ylabel('Valor (decimal)')
    plt.grid(True)
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Plota dados de um arquivo .hex com valores de 32 bits.')
    parser.add_argument('arquivo', type=str, help='Caminho para o arquivo .hex')
    args = parser.parse_args()

    dados = ler_hex_arquivo(args.arquivo)

    if dados:
        plotar_valores(dados)
    else:
        print("Nenhum dado válido encontrado no arquivo.")
