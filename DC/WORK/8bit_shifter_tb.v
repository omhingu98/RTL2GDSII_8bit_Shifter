`timescale 1ns/1ns
`include "8bit_shifter_rtl.v" // Include the RTL file

module testbench;

    // Inputs
    reg Clock;
    reg Reset;
    reg Direction;
    reg [2:0] Shift_Amount;
    reg [7:0] Data_In;

    // Outputs
    wire [7:0] Data_Out;

    // Instantiate the module under test
    shifter dut (
        .Clock(Clock),
        .Reset(Reset),
        .Direction(Direction),
        .Shift_Amount(Shift_Amount),
        .Data_In(Data_In),
        .Data_Out(Data_Out)
    );

    // Clock generation (10 ns period)
    always #5 Clock = ~Clock;

    // Stimulus
    initial begin
        $fsdbDumpvars(); // For Novas waveform dump

        // Initialize inputs
        Clock <= 0;
        Reset <= 1;
        Direction <= 0;
        Shift_Amount <= 3'b000;
        Data_In <= 8'b00000000;

        // Hold reset
        #10 Reset <= 0;

        // Test Case 1: Left shift by 1
        Direction <= 0; // Left
        Data_In <= 8'b00001111;
        Shift_Amount <= 3'b001;
        #10;
        $display("L1: Data_In = %b, Shift_Amount = %d, Data_Out = %b", Data_In, Shift_Amount, Data_Out);

        // Test Case 2: Left shift by 2
        Shift_Amount <= 3'b010;
        #10;
        $display("L2: Data_In = %b, Shift_Amount = %d, Data_Out = %b", Data_In, Shift_Amount, Data_Out);

        // Test Case 3: Right shift by 1
        Direction <= 1; // Right
        Shift_Amount <= 3'b001;
        #10;
        $display("R1: Data_In = %b, Shift_Amount = %d, Data_Out = %b", Data_In, Shift_Amount, Data_Out);

        // Test Case 4: Right shift by 3
        Shift_Amount <= 3'b011;
        #10;
        $display("R2: Data_In = %b, Shift_Amount = %d, Data_Out = %b", Data_In, Shift_Amount, Data_Out);

        // Reset Test
        Reset <= 1;
        #10;
        Reset <= 0;

        // Test Case 5: Left shift by 4
        Direction <= 0;
        Data_In <= 8'b11110000;
        Shift_Amount <= 3'b100;
        #10;
        $display("L3: Data_In = %b, Shift_Amount = %d, Data_Out = %b", Data_In, Shift_Amount, Data_Out);

        #50 $finish;
    end

endmodule

