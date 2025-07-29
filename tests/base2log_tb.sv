module base2log_tb();

logic [31:0] number;
logic [4:0] log;
integer i;

base2log uut(
    .number_i (number),
    .log_o    (log)
);

initial begin
    $dumpfile("build/base2log_tb.vcd");
    $dumpvars(0, base2log_tb);

    number = 1;

    for(i = 0; i < 32; i ++) begin
        assert(log == i) else $error("Erro: log(%0d) = %0d, esperado %0d", number, log, i);
        
        number = number << 1; // Multiplica por 2

        #10; // Espera 10 unidades de tempo
    end

    $finish; // Termina a simulação
end

endmodule
