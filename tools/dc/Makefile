# ==============================================================================
# Makefile Interno - Síntese Lógica (Design Compiler DC_NXT)
# Localização: tools/dc/scripts/Makefile
# ==============================================================================

WORK_DIR         := $(DC_DIR)/work
# WORK_DIR         := $(DC_DIR)/runs

FILELIST_RTL    := $(VERIF_DIR)/filelist.f
SYNTH_SCRIPT    := $(DC_DIR)/scripts/run.tcl
SYNTH_SCRIPT_LEGACY    := $(DC_DIR)/scripts/run_rtl_legacy.tcl

FILELIST_NETLIST    := $(VERIF_DIR)/filelist_gl.f
TOP_MODULE      := ANC

GUI ?= 0
DC_ARGS := -64bit -topo
ifeq ($(GUI),1)
    DC_ARGS += -gui
endif

LOG_FILE := dc_synth.log

.PHONY: synth setup run_synth clean

synth: setup run_synth

synth_legacy: setup run_legacy

setup:
	@echo "--- [DC_NXT SETUP] Preparando diretório de execução em /run ---"
	@mkdir -p $(WORK_DIR)
	@if [ ! -f "$(FILELIST_RTL)" ]; then echo "ERRO: Arquivo $(FILELIST_RTL) não encontrado!"; exit 1; fi
	@echo "--- [DC_NXT SETUP] Tudo pronto. Modo Gráfico (GUI): $(GUI) ---"

# Alterado para dcnxt_shell, que gerencia o fluxo topográfico nativamente
run_synth:
	@echo "--- [DC_NXT RUN] Iniciando a Síntese com dcnxt_shell (GUI=$(GUI)) ---"
	@if [ "$(GUI)" = "1" ]; then \
		cd $(WORK_DIR) && dcnxt_shell $(DC_ARGS); \
	else \
		cd $(WORK_DIR) && dcnxt_shell $(DC_ARGS) -f $(SYNTH_SCRIPT) -output_log_file $(LOG_FILE); \
	fi

run_legacy:
	@echo "--- [DC_NXT RUN] Iniciando a Síntese do LMS Legado com dcnxt_shell (GUI=$(GUI)) ---"
	@if [ "$(GUI)" = "1" ]; then \
		cd $(WORK_DIR) && dcnxt_shell $(DC_ARGS); \
	else \
		cd $(WORK_DIR) && dcnxt_shell $(DC_ARGS) -f $(SYNTH_SCRIPT_LEGACY) -output_log_file $(LOG_FILE); \
	fi

clean:
	rm -rf $(WORK_DIR)/
	rm -rf $(WORK_DIR)/
