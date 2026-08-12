// Instruction Fetch can have control hazards

module hazard_unit(
    input logic [4:0] rs1,
    input logic [4:0] rs2,
    input logic [4:0] rd, // Reg addresses
    input logic [0:0] RegWrite,
    input logic [0:0] MemWrite,
    output logic [1:0] stallF,
    output logic [1:0] stallD,
    output logic [1:0] flushD,
    output logic [1:0] stallE,
    output logic flushE,
    output logic forwardA,
    output logic forwardB,
    output logic stallM,
    output logic flushM,
    output logic stallW,
    output logic flushW
);

endmodule


