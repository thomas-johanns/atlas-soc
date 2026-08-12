atlas-soc/
└── rtl/
    └── cpu/
        └── Core.sv/
                - Top level core
            └── Pipeline Stages/   
                ├── ifu.sv           
                    - fetch unit and Irom 
                ├── IEU.sv            
                    - Instruction Decode logic: Regfile, controller, extend
                    - Execution logic: ALU logic, Forwarding 
                ├── LSU.sv           
                    - Memory access: DTIM
                ├── IEU.sv
                    - 
            └── Pipeline Registers/
                ├── ifid.sv          
                    -IF/ID pipeline reg
                ├── idex.sv          
                    -ID/EX pipeline reg
                ├── exmem.sv         
                    - EX/MEM pipeline reg
                ├── memwb.sv         
                    - Mem/WB pipeline reg

            └── hazard_unit.sv/   
                - Controller for stall and flush
            └── Testbench.sv/
                - ...
