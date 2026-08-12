module Core(
    input logic clk,
    input logic clr
);
    logic [31:0] pcF, InstrF, InstrD, pcD;

IFU c_IFU( // IFU instance
    //inputs
    .clr(clr),
    .PCSrcE(1'b1), // Hardcoded 1 bit high
    .clk(clk),
    .IEUAddr(32'h0000_0000),
    //Outputs
    .StallF(1'b0), // Hardcoded 1 bit low
    .InstrF(InstrF),
    .pcF(pcF)
);

IF_ID c_IFID( // IFID Pipeline reg instance
    //input signals
    .clk(clk),
    .FlushD(1'b0),
    .StallD(1'b0),
    .clr(clr),
    .pcF(pcF),
    .InstrF(InstrF),
    //output signals
    .InstrD(InstrD),
    .pcD(pcD)
);

endmodule