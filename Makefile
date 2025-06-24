CC = ccache gcc

CFLAGS = -O2
LDFLAGS = -lm
INCLUDES = -Ilib

# Diretórios
BUILD_DIR = build
SRC_DIR = src

# Códigos ANSI para cores
BLUE := \033[1;34m
GREEN := \033[1;32m
YELLOW := \033[1;33m
RED := \033[1;31m
NC := \033[0m # Reset de cor

C_SOURCES = $(wildcard $(SRC_DIR)/*.c)
C_OBJECTS = $(C_SOURCES:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

all: buildFolder $(BUILD_DIR)/main.elf

.PHONY: all clean buildFolder

$(BUILD_DIR)/main.elf: $(C_OBJECTS)
	@printf "$(GREEN)[LINK]$(NC) Vinculando objetos para criar o executável\n"
	$(CC) $(CFLAGS) $(INCLUDES) $^ -o $@ $(LDFLAGS)

# Compilação dos arquivos C
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@printf "$(BLUE)[CC]$(NC) Compilando $<\n"
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

# Criar diretório de build se necessário
buildFolder:
	@mkdir -p $(BUILD_DIR)

# Limpeza dos arquivos gerados
clean:
	@printf "$(RED)[CLEAN]$(NC) Removendo arquivos gerados\n"
	rm -rf $(BUILD_DIR)/*.o $(BUILD_DIR)/*.elf $(BUILD_DIR)/*.bin $(BUILD_DIR)/*.hex $(BUILD_DIR)/*.s

# Habilita paralelização automática com -j$(nproc)
MAKEFLAGS += -j$(shell nproc)
