`timescale 1ns / 1ps

`include "d_flip_flop.sv"

module testbench();

// Signals for UUT connection
reg Clk;
reg D;
wire Q;
reg pass;

// Instantiate the unit under test
d_flip_flop uut(Clk, D, Q);

initial begin
    // Set up output to VCDD file
    $dumpfile("tb.vcd");
    $dumpvars(0, testbench);

    // Initialize testbench variables
    pass = 1'b1;

    // Simulate the clock signal
    Clk = 1'b0;
    forever begin
        #10 Clk = ~Clk;
    end
end

// Test Stimulus

task test_D0();
begin
    D <= 1'b0;
    @(negedge Clk);
    pass <= pass & Q == 0;
end
endtask

task test_D1();
begin
    D = 1'b1;
    @(negedge Clk);
    pass <= pass & Q == 1;
end
endtask

task test_ClockAlign();
begin
    @(negedge Clk);
    #5 D = 1'b0;
    pass = pass & Q == 1;
    @(negedge Clk);
    pass = pass & Q == 0;
end
endtask

// Write Checker
initial begin

    @(negedge Clk); test_D0(); 
    @(negedge Clk); test_D1(); 
    @(negedge Clk); test_ClockAlign(); 

    if (pass) begin
        $display("Tests Passed!");
    end else begin
        $display("Failed tests");
    end

    $finish();
end

endmodule
