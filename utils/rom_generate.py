#!/usr/bin/env python3
import math
import os

TABLES_DIR = os.environ.get('TABLES_DIR', './tables')
RTL_DIR = os.environ.get('RTL_DIR', './rtl')

# Configuração das ROMs a serem geradas
roms = [
    {
        "input_file": "cos_lut.hex",
        "output_file": "cos_lut_rom.sv",
        "module_name": "cos_lut_rom",
        "data_width": 32
    },
    {
        "input_file": "mel_table.hex",
        "output_file": "mel_table_rom.sv",
        "module_name": "mel_table_rom",
        "data_width": 32
    },
    {
        "input_file": "twiddles.hex",
        "output_file": "twiddles_rom.sv",
        "module_name": "twiddles_rom",
        "data_width": 128
    },
    {
        "input_file": "hamming_window.hex",
        "output_file": "hamming_rom.sv",
        "module_name": "hamming_rom",
        "data_width": 32
    }
]

def generate_rom(input_file, output_file, module_name, data_width):
    # Caminhos completos
    input_path = os.path.join(TABLES_DIR, input_file)
    output_path = os.path.join(RTL_DIR, output_file)

    # Lê os valores do arquivo, ignorando linhas vazias
    with open(input_path, "r") as f:
        values = [line.strip() for line in f if line.strip()]

    num_entries = len(values)
    addr_width = max(1, math.ceil(math.log2(num_entries)))

    with open(output_path, "w") as f:
        f.write(f"// ROM gerada automaticamente a partir de {input_file}\n")
        f.write(f"module {module_name} (\n")
        f.write(f"    input  logic [{addr_width-1}:0] addr,\n")
        f.write(f"    output logic [{data_width-1}:0] dout\n")
        f.write(");\n\n")
        f.write("    always_comb begin\n")
        f.write("        case(addr)\n")
        for i, val in enumerate(values):
            f.write(f"            {i}: dout = {data_width}'h{val};\n")
        f.write("            default: dout = '0;\n")
        f.write("        endcase\n")
        f.write("    end\n")
        f.write("endmodule\n")

    print(f"Gerado {output_path} com {num_entries} entradas, largura de endereço = {addr_width} bits.")

# Gera todas as ROMs configuradas
for rom in roms:
    generate_rom(
        input_file=rom["input_file"],
        output_file=rom["output_file"],
        module_name=rom["module_name"],
        data_width=rom["data_width"]
    )