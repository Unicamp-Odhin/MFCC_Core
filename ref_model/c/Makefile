CC = ccache gcc

# Flags padrão
CFLAGS = -O3 -march=native
LDFLAGS = -lm
INCLUDES = -Ilib

# Diretórios
BUILD_DIR = build
SRC_DIR = src

# Cores
BLUE := \033[1;34m
GREEN := \033[1;32m
YELLOW := \033[1;33m
RED := \033[1;31m
NC := \033[0m

# Flags adicionais (valores padrão)
DEBUG ?= 0
CREATE_DATABANK ?= 0
LOG ?= 0
VERBOSE ?= 0
USE_FLOAT ?= 0

# Debug tem prioridade máxima
ifeq ($(DEBUG),1)
    CFLAGS = -g -O0
else
    CFLAGS = -O3 -march=native
endif

# Adicionar flags condicionais
ifeq ($(CREATE_DATABANK),1)
	CFLAGS += -DCONFIG_CREATE_DATABANK
endif

ifeq ($(LOG),1)
	CFLAGS += -DCONFIG_LOG
endif

ifeq ($(VERBOSE),1)
	CFLAGS += -DCONFIG_VERBOSE

endif


# Mostrar flags finais
$(info [INFO] CFLAGS: $(CFLAGS))

# Lista de fontes
C_SOURCES = $(wildcard $(SRC_DIR)/*.c)
C_OBJECTS = $(C_SOURCES:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

# Alvo principal
all: buildFolder $(BUILD_DIR)/main.elf

.PHONY: all clean buildFolder

# Linkagem
$(BUILD_DIR)/main.elf: $(C_OBJECTS)
	@printf "$(GREEN)[LINK]$(NC) Vinculando objetos para criar o executável\n"
	$(CC) $(CFLAGS) $(INCLUDES) $^ -o $@ $(LDFLAGS)

# Compilação
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@printf "$(BLUE)[CC]$(NC) Compilando $<\n"
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

# Criar diretório
buildFolder:
	@mkdir -p $(BUILD_DIR)

# Limpeza
clean:
	@printf "$(RED)[CLEAN]$(NC) Removendo arquivos gerados\n"
	rm -rf $(BUILD_DIR)
	rm -rf dumps/c

# Paralelização
MAKEFLAGS += -j$(shell nproc)