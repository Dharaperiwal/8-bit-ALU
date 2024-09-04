`timescale 1ns / 1ps

module ALU_tb;

reg [3:0] A, B;
reg [2:0] op;
wire [3:0] result;

// Instantiate ALU
ALU uut (
    .A(A),
    .B(B),
    .op(op),
    .result(result)
);

// Operations or stimulus
initial begin
    $dumpfile("ALU_tb.vcd");
    $dumpvars(0, ALU_tb);

    // Test case 1
    A = 4'b0010;
    B = 4'b0011;
    op = 3'b000;
    #10;
    $display("Result of %b + %b = %b", A, B, result);

    // Test case 2
    A = 4'b1010;
    B = 4'b1100;
    op = 3'b010;
    #10;
    $display("Result of %b & %b = %b", A, B, result);

    // Test case 3
    A = 4'b1010;
    B = 4'b1000;
    op = 3'b001;
    #10;
    $display("Result of %b - %b = %b", A, B, result);

    // Test case 4
    A = 4'b1010;
    B = 4'b1100;
    op = 3'b011;
    #10;
    $display("Result of %b | %b = %b", A, B, result);

    $finish;
end

endmodule
