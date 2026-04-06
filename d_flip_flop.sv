module d_flip_flop(
    input wire Clk,
    input wire D,
    output reg Q
);

// Put your implementation of a halfadder goes here
always @(posedge Clk) begin
    Q <= D
end

endmodule
