module MEL #(
    parameter NUM_FILTERS = 40,
    parameter NFFT = 512/2 + 1
) (
    input  logic clk,
    input  logic rst_n,
    
    input  logic mel_start_i,                               //começa a máquina de estados

    output  logic [$clog2(NFFT):0] prt_power_spectrum_frame, //peço o valor
    input  logic [31:0] value_power_spectrum_frame,         //recebo o valor

    output logic mel_done_o,                                //terminou de processar aquela linha
    output logic [8:0] mel_value_energies,                  //exporto o valor
    output logic [5:0] mel_prt_energies,   //exporto o indice
    output logic       mel_valid

);

    logic [31:0] sum;
    logic [31:0] temp_mul;
    logic [31:0] temp_add;
    logic [8:0] temp_energy;
    logic [5:0] i, k, k_init;
    
    //em c seria: mel[40][33] -> mel[1320]
    logic [31:0]  mel_memory [0:1319];
    
    initial begin
        $readmemh("mel_data.hex", mel_memory);
    end

    typedef enum logic [1:0] {
        IDLE,
        LOAD,
        CALC_SUM,
        CALC_ENERGY
    } state_t;

    state_t state, next_state;
    logic [31:0] sum_next;
    logic [5:0] i_next, k_next;
    logic [31:0] temp_mul_next, temp_add_next, temp_energy_next;
    logic [4:0] temp_log2;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            sum <= 0;
            i <= 0;
            k <= 0;
        end else begin
            state <= next_state;
            sum <= sum_next;
            i <= i_next;
            k <= k_next;
        end
    end

    assign prt_power_spectrum_frame = k_next; //peco o valor de k
    assign k_init = mel_memory[i * 33]; // possível erro

    always_comb begin
        // Default assignments to prevent inferred latches
        next_state = state;
        sum_next = sum;
        i_next = i;
        k_next = k;
        temp_mul_next = temp_mul;
        temp_add_next = temp_add;
        temp_energy_next = temp_energy;
        mel_done_o = 1'b0;
        mel_valid = 1'b0;
        mel_value_energies = 9'h0;
        mel_prt_energies = 6'h0;

        case (state)
            IDLE: begin
                if (mel_start_i) begin
                    i_next = 0;
                    next_state = LOAD;
                end 
                mel_done_o = 1'b0;
            end
            LOAD: begin
                mel_valid = 1'b0;
                if (i < NUM_FILTERS) begin
                    sum_next = 0;
                    k_next = mel_memory[i * 33]; // assign in sequential block
                    next_state = CALC_SUM;
                end else begin
                    next_state = IDLE; //quando processei tudo
                    mel_done_o = 1'b1;
                end
            end
            CALC_SUM: begin
                if (k <= mel_memory[i * 33 + 1]) begin
                    temp_mul_next = value_power_spectrum_frame * mel_memory[i * 33 + 2 + k - k_init];
                    temp_add_next = sum + temp_mul_next;
                    sum_next = temp_add_next;
                    k_next = k + 1;
                end else begin
                    next_state = CALC_ENERGY;
                end
            end
            CALC_ENERGY: begin
                if (sum <= 0) begin
                    mel_value_energies = 8'h0; // arrumar depois
                    mel_prt_energies = i;
                    mel_valid = 1'b1;
                end else begin
                    mel_value_energies = 6 * temp_log2;
                    mel_prt_energies = i;
                    mel_valid = 1'b1;
                end
                i_next = i + 1;
                next_state = LOAD;
            end
        endcase
    end


    base2log u_base2log (
        .number_i(sum),
        .log_o(temp_log2)
    );

endmodule