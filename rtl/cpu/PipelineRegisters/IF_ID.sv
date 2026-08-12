
module IF_ID( // IFID register for pipelining
    input logic clk,
    input logic FlushD,
    input logic StallD,
    input logic clr,
    input logic [31:0] pcF,
    input logic [31:0] InstrF,
    output logic [31:0] InstrD,
    output logic [31:0] pcD
);

    always_ff @(posedge clk or posedge clr) begin
        if (clr) begin
            InstrD <= 32'h0000_0000;
            pcD <= 32'h0000_0000;
        end
        else if (FlushD) begin
            InstrD <= 32'h0000_0000;
            pcD <= 32'h0000_0000;
        end
        else if (!StallD) begin
            InstrD <= InstrF;
            pcD <= pcF;
        end
    end

endmodule