reset_design

# TODO: definir o valor de clock suficiente para o circuito funcionar
# pensando na amostragem dos sinais xn e dn
set clk_val 100
create_clock -period $clk_val [get_ports clock] -name clock

# TODO: definir corretamente esse valores
set_clock_uncertainty 0.2 [get_clocks clock]
set_clock_transition 0.1  [get_clocks clock]

# TODO: definir os valores de atraso das entradas dos sinais xn e dn
# O 'remove_from_collection' garante que não aplicamos essa regra no próprio pino de clock
set_input_delay -clock clock 0.8 [remove_from_collection [all_inputs] [get_ports clock]]

# TODO: definir os valores de atraso da saida do do sinal yn
set_output_delay -clock clock 0.8 [all_outputs]

# Modelagem de Ambiente Físico (Opcional, mas evita warnings de síntese)
# Aplica uma carga capacitiva básica (em pF) em todas as saídas para o cálculo de delay de rampa
set_load 0.050 [all_outputs]

# Define que o sinal de Reset é assíncrono/falso caminho para análise de tempo (evita violações bobas)
set_false_path -from [get_ports rst_n]
