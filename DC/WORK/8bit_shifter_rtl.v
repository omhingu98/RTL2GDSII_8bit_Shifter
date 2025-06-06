module shifter (
    input wire Clock,
    input wire Reset,
    input wire Direction,              // 0 = Left shift, 1 = Right shift
    input wire [2:0] Shift_Amount,     // Shift by 0–7
    input wire [7:0] Data_In,          // Input data
    output reg [7:0] Data_Out          // Shifted output
);

    always @(posedge Clock or posedge Reset) begin
        if (Reset)
            Data_Out <= 8'd0;
        else begin
            case (Direction)
                1'b0: Data_Out <= Data_In << Shift_Amount; // Left shift
                1'b1: Data_Out <= Data_In >> Shift_Amount; // Right shift
                default: Data_Out <= Data_In;
            endcase
        end
    end

endmodule

