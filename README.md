# RTL to GDSII Implementation of an 8-Bit Shifter

## Introduction:

Shifting operations are fundamental in digital systems for arithmetic, logical, and bit-manipulation tasks. Shifters are widely used in multiplication and division, cryptography, address generation, signal processing, processors, datapath circuits, and memory addressing unit.This project implements a configurable 8-bit barrel shifter and completes the full RTL-to-GDSII ASIC flow using industry-standard Synopsys tools.

## Project Scope

1. RTL design using Verilog HDL  
2. Functional verification using simulation  
3. Logic synthesis using Synopsys Design Compiler  
4. Physical implementation using IC Compiler II  
5. Static timing analysis using PrimeTime  

## Objectives

- Understand the complete RTL to GDSII flow  
- Design a configurable 8-bit barrel shifter  
- Verify RTL functionality using testbench simulation  
- Apply synthesis constraints in Design Compiler  
- Perform floorplanning, placement, CTS, and routing  
- Generate GDSII and run static timing analysis  
- Analyze area, power, slack, and frequency metrics  

## Repository Structure

```text
rtl/          -> Verilog RTL and testbench
CONSTRAINTS/  -> SDC timing constraint files
DC/           -> Design Compiler scripts and reports
ICCII/        -> IC Compiler II physical design scripts and reports
PT/           -> PrimeTime STA scripts and reports
images/       -> Waveforms, floorplan, layout screenshots
```


## RTL Design:
```
Verilog Module – 8-Bit Shifter
module shifter (
    input wire Clock,
    input wire Reset,
    input wire Direction,       // 0 = Left shift, 1 = Right shift
    input wire [2:0] Shift_Amount,
    input wire [7:0] Data_In,
    output reg [7:0] Data_Out
);
    always @(posedge Clock or posedge Reset) begin
        if (Reset)
            Data_Out <= 8'd0;
        else begin
            case (Direction)
                1'b0: Data_Out <= Data_In << Shift_Amount;
                1'b1: Data_Out <= Data_In >> Shift_Amount;
                default: Data_Out <= Data_In;
            endcase
        end
    end
endmodule
```
## Testbench:
```
`timescale 1ns/1ns
`include "8bit_shifter_rtl.v"

module testbench;
    reg Clock, Reset, Direction;
    reg [2:0] Shift_Amount;
    reg [7:0] Data_In;
    wire [7:0] Data_Out;

    shifter dut (
        .Clock(Clock),
        .Reset(Reset),
        .Direction(Direction),
        .Shift_Amount(Shift_Amount),
        .Data_In(Data_In),
        .Data_Out(Data_Out)
    );

    always #5 Clock = ~Clock;

    initial begin
        $fsdbDumpvars();
        Clock = 0;
        Reset = 1;
        Direction = 0;
        Shift_Amount = 0;
        Data_In = 0;

        #10 Reset = 0;

        Direction = 0;
        Data_In = 8'b00001111;
        Shift_Amount = 3'b001;
        #10;

        Direction = 1;
        Shift_Amount = 3'b001;
        #10;

        #50 $finish;
    end
endmodule
```
## RTL Simulation Waveform
![RTL Waveform](8bit_shifter_Snapshots_All_theStages/waveform.png)

## Synthesis Flow – Synopsys Design Compiler
```
analyze -format verilog ${RTL_SOURCE_FILES}
elaborate ${DESIGN_NAME}
current_design
read_sdc ./../CONSTRAINTS/8bit_shifter.sdc
compile_ultra
report_timing
write -format verilog -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}
report_qor
```

## Synthesis Constraints – SDC
```
create_clock -period 4.4 -name Clock [get_ports Clock]
set_input_delay -max 0.4 -clock Clock [all_inputs]
set_output_delay -max 0.4 -clock Clock [all_outputs]
set_clock_uncertainty -setup 0.25 [get_clocks Clock]
set_clock_uncertainty -hold 0.10 [get_clocks Clock]
set_max_transition 0.35 [current_design]
set_max_transition -clock_path 0.15 [get_clocks Clock]
```

## Physical Design – IC Compiler II

### Floorplanning
![Floorplan](8bit_shifter_Snapshots_All_the_Stages/floorplan_View.png)

### Power Planning
![Power Planning](8bit_shifter_Snapshots_All_the_Stages/power_plan_view.png)

### Placement
![Placement](8bit_shifter_Snapshots_All_the_Stages/placement_view.png)

### Clock Tree Synthesis
![CTS](8bit_shifter_Snapshots_All_the_Stages/cts_view.png)

### Routing
![Routing](8bit_shifter_Snapshots_All_the_Stages/Routing_View.png)

## Static Timing Analysis – PrimeTime

Final Slack: +0.063802 ns
All timing constraints met.

## Results

| Metric | Value |
|--------|-------|
| Area   | 1,250,000 µm² |
| Power  | 0.65 mW |
| Slack  | +0.75 ns |

## Conclusion

This project demonstrates a complete ASIC RTL-to-GDSII flow for an 8-bit barrel shifter. The design was functionally verified, synthesized, physically implemented, and timing-closed successfully while meeting area, power, and performance constraints.

### Author
### Name: Om Hingu
### Program: B.Tech – Electronics and Communication Engineering
### University: Pandit Deendayal Energy University
