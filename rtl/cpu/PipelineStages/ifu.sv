module IFU(
    input logic clr,
    input logic PCSrcE,
    input logic clk,
    input logic StallF,
    output logic [31:0] InstrF,
    output logic [31:0] pcF,
    input logic [31:0] IEUAddr
);

// Internal Signals
logic [31:0] PCNext, PCPlus4F;

always_ff @(posedge clk or posedge clr) begin // Update or clear pcFon clk edge trigger
    if (clr) begin
        pcF<= 32'h0000_0000;
    end
    else if (!StallF) begin // If StallF is asserted, don't change program counter
        pcF<= PCNext;
    end
end

always_comb begin // Combinational logic inside the IFU
    PCPlus4F = pcF+ 32'h0000_0004; // pcF+ 4
    case (PCSrcE) // pcFSelect Mux
        1'b0: PCNext = PCPlus4F;
        1'b1: PCNext = IEUAddr;
    endcase
end


irom u_irom( // irom instance inside IFU
    .pc(pcF), // Sending pcF into IROM 
    .Instr(InstrF) // Getting InstrF out of IROM (both are output signals into IFID)
);

endmodule


module irom( // irom inside IFU
    input logic [31:0] pc,
    output logic [31:0] Instr
);

    logic [7:0] mem [4095:0]; // 4KB memory, 4096 bytes, 1024 InstrFuctions
    assign Instr = {mem[pc+3], mem[pc+2], mem[pc+1], mem[pc]};

endmodule
