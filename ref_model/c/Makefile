CC = ccache gcc

# Flags padrão
CFLAGS = -O3 -march=native
CPPFLAGS = -Ilib/mfcc_fixed_point/include -Ilib/mfcc_fixed_point/src -Ilib
LDFLAGS =
LDLIBS = -lm

# Diretórios
BUILD_DIR = build
SRC_DIR = src
MFCC_DIR = lib/mfcc_fixed_point

# Cores
BLUE := \033[1;34m
GREEN := \033[1;32m
YELLOW := \033[1;33m
RED := \033[1;31m
NC := \033[0m

# Flags adicionais (valores padrão)
DEBUG ?= 0
CREATE_DATABANK ?= 1
LOG ?= 1
VERBOSE ?= 1

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

# Lista de fontes do modelo de referência
C_SOURCES = $(wildcard $(SRC_DIR)/*.c)
C_OBJECTS = $(C_SOURCES:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

# Biblioteca MFCC
MFCC_LIB = $(MFCC_DIR)/build/libmfcc.a

# Alvo principal
all: buildFolder $(MFCC_LIB) $(BUILD_DIR)/main.elf

.PHONY: all clean buildFolder mfcc

# Alvo da biblioteca MFCC
mfcc: $(MFCC_LIB)

# Construir biblioteca MFCC
$(MFCC_LIB):
	@printf "$(GREEN)[MFCC]$(NC) Compilando biblioteca MFCC\n"
	$(MAKE) -C $(MFCC_DIR)

# Linkagem
$(BUILD_DIR)/main.elf: $(C_OBJECTS) $(MFCC_LIB)
	@printf "$(GREEN)[LINK]$(NC) Vinculando objetos para criar o executável\n"
	$(CC) $(CFLAGS) $(C_OBJECTS)  -L$(MFCC_DIR)/build  -lmfcc  $(LDFLAGS) $(LDLIBS)  -o $@

# Compilação
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@printf "$(BLUE)[CC]$(NC) Compilando $<\n"
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

# Criar diretório
buildFolder:
	@mkdir -p $(BUILD_DIR)

# Limpeza
clean:
	@printf "$(RED)[CLEAN]$(NC) Removendo arquivos gerados\n"
	rm -rf $(BUILD_DIR)
	rm -rf "$(REF_C_DIR)/dumps/"
	rm -rf "$(TESTS_DIR)/ref_vectors/"

# Paralelização
MAKEFLAGS += -j$(shell nproc)
