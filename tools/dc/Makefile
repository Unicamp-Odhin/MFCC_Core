WORK_DIR         := $(DC_DIR)/work

SYNTH_SCRIPT    := $(DC_DIR)/run.tcl
TOP_MODULE      := MFCC_Core

GUI ?= 0
DC_ARGS := -64bit -topo
ifeq ($(GUI),1)
    DC_ARGS += -gui
endif

LOG_FILE := dc_synth.log

.PHONY: synth run_synth clean

synth: run_synth

# Alterado para dcnxt_shell, que gerencia o fluxo topográfico nativamente
synth:
	@mkdir -p $(WORK_DIR)
	@echo "--- [DC_NXT RUN] Iniciando a Síntese com dcnxt_shell (GUI=$(GUI)) ---"
	@if [ "$(GUI)" = "1" ]; then \
		cd $(WORK_DIR) && dcnxt_shell $(DC_ARGS); \
	else \
		cd $(WORK_DIR) && dcnxt_shell $(DC_ARGS) -f $(SYNTH_SCRIPT) -output_log_file $(LOG_FILE); \
	fi

clean:
	rm -rf $(WORK_DIR)/
	rm -rf $(WORK_DIR)/
