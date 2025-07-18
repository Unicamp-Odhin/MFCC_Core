#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main() {
    FILE *fp = fopen("data/data.dat", "w");
    if (!fp) {
        perror("Erro ao criar arquivo");
        return 1;
    }

    // Exemplo: Seno discreto
    for (int i = 0; i < 100; i++) {
        fprintf(fp, "%d %f\n", i, 10.0 * sin(0.1 * i));  // Exemplo de onda
    }
    fclose(fp);

    // Chama gnuplot para plotar (abre uma janela com o gráfico)
    system("gnuplot -p -e \"plot 'data/data.dat' with lines\"");
    return 0;
}
