module ALU(
    input [7:0] A, B,
    input [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output reg Zero
);

always @(*) begin
    case(ALU_Sel)
        3'b000: ALU_Out = A + B;      // Addition
        3'b001: ALU_Out = A - B;      // Subtraction
        3'b010: ALU_Out = A & B;      // AND
        3'b011: ALU_Out = A | B;      // OR
        3'b100: ALU_Out = A ^ B;      // XOR
        3'b101: ALU_Out = A << 1;     // Shift left
        3'b110: ALU_Out = A >> 1;     // Shift right
        3'b111: ALU_Out = ~A;         // NOT
        default: ALU_Out = 8'b00000000;
    endcase
    
    Zero = (ALU_Out == 8'b00000000) ? 1'b1 : 1'b0; // Set Zero flag
end


endmodule
