#!/bin/bash

# Verificar se o número de amostras foi fornecido
if [ $# -lt 1 ]; then
    echo "Uso: $0 <numero_de_amostras> [arquivo_wav]"
    echo "Exemplo: $0 10 data/seno_440Hz.wav"
    exit 1
fi

N=$1
WAV_FILE=${2:-"data/seno_440Hz.wav"}

# Verificar se o arquivo existe
if [ ! -f "$WAV_FILE" ]; then
    echo "Erro: Arquivo '$WAV_FILE' não encontrado!"
    exit 1
fi

# Verificar se o executável existe
if [ ! -f "../build/main.elf" ]; then
    echo "Erro: Executável '../build/main.elf' não encontrado!"
    echo "Execute 'make' primeiro para compilar"
    exit 1
fi

echo "Benchmark iniciado para $N amostras usando arquivo: $WAV_FILE"

# Arrays para armazenar os resultados
declare -a cycles_array
declare -a time_array

# Coletar dados para N amostras
for ((i=1; i<=$N; i++)); do
    # Executar e capturar a saída do executável
    result=$(../build/main.elf "$WAV_FILE")
    
    # Extrair tempo de execução (em microsegundos)
    exec_time_us=$(echo "$result" | grep -oP '(?<=Execution Time \(us\): )\d+')
    
    # Extrair ciclos de CPU
    cpu_cycles=$(echo "$result" | grep -oP '(?<=CPU Cycles: )\d+')
    
    # Converter tempo para segundos
    exec_time_sec=$(echo "scale=6; $exec_time_us / 1000000" | bc)
    
    # Armazenar nos arrays
    cycles_array[$i]=$cpu_cycles
    time_array[$i]=$exec_time_sec
done

echo "=========================================================="
echo "RESULTADOS DO BENCHMARK:"

# Calcular totais e médias
total_cycles=0
total_time=0

for ((i=1; i<=$N; i++)); do
    total_cycles=$((total_cycles + cycles_array[$i]))
    total_time=$(echo "scale=6; $total_time + ${time_array[$i]}" | bc)
done

# Calcular médias
avg_cycles=$((total_cycles / N))
avg_time=$(echo "scale=6; $total_time / $N" | bc)

# Calcular desvio padrão
# Calcular desvio padrão
sum_squared_diff_cycles=0
sum_squared_diff_time=0.0

for ((i=1; i<=N; i++)); do
    diff_cycles=$((cycles_array[i] - avg_cycles))
    squared_diff_cycles=$((diff_cycles * diff_cycles))
    sum_squared_diff_cycles=$((sum_squared_diff_cycles + squared_diff_cycles))
    
    diff_time=$(echo "${time_array[i]} - $avg_time" | bc -l)
    squared_diff_time=$(echo "$diff_time * $diff_time" | bc -l)
    sum_squared_diff_time=$(echo "$sum_squared_diff_time + $squared_diff_time" | bc -l)
done

# Usar scale mais alto para melhor precisão
stddev_cycles=$(echo "scale=2; sqrt($sum_squared_diff_cycles / $N)" | bc -l)
stddev_time=$(echo "scale=8; sqrt($sum_squared_diff_time / $N)" | bc -l)


echo "MÉDIAS:"
echo "  Média de ciclos: $avg_cycles"
echo "  Tempo médio: ${avg_time}s"
echo "  Desvio padrão de ciclos: $stddev_cycles"
echo "  Desvio padrão de tempo: ${stddev_time}s"
echo "  Ciclos/segundo: $(echo "scale=2; $avg_cycles / $avg_time" | bc | numfmt --grouping)"
echo "=========================================================="

# Salvar resultados em arquivo (opcional)
timestamp=$(date +%Y%m%d_%H%M%S)
log_file="benchmark_${timestamp}.log"
{
    echo "N=$N"
    echo "Ciclos_Medio=$avg_cycles"
    echo "Tempo_Medio=${avg_time}s"
    echo "Resultados detalhados:"
    for ((i=1; i<=$N; i++)); do
        echo "Tempo=${time_array[$i]}s, Ciclos=${cycles_array[$i]}"
    done
} >> "$log_file"

echo "Resultados salvos em: $log_file"
