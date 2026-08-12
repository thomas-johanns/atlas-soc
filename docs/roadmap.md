My goal is to develop System Verilog software to be implemented onto a FPGA for a System On Chip 

Part 1:
Create a pipelined RISCV Processor diagram and implement it in System Verilog

(i) Core Pipeline Stages
    [x] Create the IFU (Instruction Fetch Unit)
    [x] Create the ID (Instruction Decode Unit & Register File)
    [ ] Create the EX (Execution Unit & ALU)
    [ ] Create the MEM (Data Memory Access Unit)
    [ ] Create the WB (Write Back Unit & Mux)

(ii) Inter-Stage Pipeline Registers
    [x] Create the IF/ID Pipeline Register
        - Started it inside of the IFU.sv file. Need to move into its own file.
    [ ] Create the ID/EX Pipeline Register
    [ ] Create the EX/MEM Pipeline Register
    [ ] Create the MEM/WB Pipeline Register

(iii) Control & Hazard Management
    [ ] Create the Control Unit (Main Decoder & ALU Decoder)
    [?] Create the Hazard Unit 
        - Started working on it

(iv) High Level & Integration
    [ ] Create the Top Level Core to connect all stages and hazard logic together
    [ ] Create a Testbench (core_tb.sv) ...... More to come