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
if [ ! -f "./build/main.elf" ]; then
    echo "Erro: Executável './build/main.elf' não encontrado!"
    echo "Execute 'make' primeiro para compilar"
    exit 1
fi

echo "Benchmark iniciado para $N amostras usando arquivo: $WAV_FILE"
echo "=========================================================="

# Arrays para armazenar os resultados
declare -a cycles_array
declare -a time_array

# Coletar dados para N amostras
for ((i=1; i<=$N; i++)); do
    echo -n "Execução $i/$N..."
    
    # Executar e capturar a saída do perf stat
    result=$(perf stat -e cycles:u,task-clock:u ./build/main.elf "$WAV_FILE" 2>&1)
    
    # Extrair ciclos
    cycles=$(echo "$result" | grep -oP '[0-9,]+(?=\s+cycles:u)' | tr -d ',')
    
    # Extrair tempo de CPU (em milliseconds)
    time_ms=$(echo "$result" | grep -oP '[0-9,]+(?=\s+msec task-clock:u)' | tr -d ',')
    
    # Converter tempo para segundos
    time_sec=$(echo "scale=6; $time_ms / 1000" | bc)
    
    # Armazenar nos arrays
    cycles_array[$i]=$cycles
    time_array[$i]=$time_sec
    
    echo " Ciclos: $cycles, Tempo: ${time_sec}s"
done

echo ""
echo "=========================================================="
echo "RESULTADOS DO BENCHMARK:"
echo "=========================================================="

# Calcular totais e médias
total_cycles=0
total_time=0

for ((i=1; i<=$N; i++)); do
    echo "Amostra $i: ${cycles_array[$i]} ciclos, ${time_array[$i]}s"
    total_cycles=$((total_cycles + cycles_array[$i]))
    total_time=$(echo "scale=6; $total_time + ${time_array[$i]}" | bc)
done

# Calcular médias
avg_cycles=$((total_cycles / N))
avg_time=$(echo "scale=6; $total_time / $N" | bc)

echo "=========================================================="
echo "TOTAIS:"
echo "  Total de ciclos: $total_cycles"
echo "  Tempo total: ${total_time}s"
echo ""
echo "MÉDIAS:"
echo "  Média de ciclos: $avg_cycles"
echo "  Tempo médio: ${avg_time}s"
echo "  Ciclos/segundo: $(echo "scale=2; $avg_cycles / $avg_time" | bc | numfmt --grouping)"
echo "=========================================================="

# Salvar resultados em arquivo (opcional)
timestamp=$(date +%Y%m%d_%H%M%S)
echo "N=$N, Ciclos_Total=$total_cycles, Tempo_Total=${total_time}s, Ciclos_Medio=$avg_cycles, Tempo_Medio=${avg_time}s" >> "benchmark_${timestamp}.log"

echo "Resultados salvos em: benchmark_${timestamp}.log"
