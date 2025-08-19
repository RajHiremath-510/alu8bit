module alu8bit (
    input  wire [7:0] a, b,       // operands
    input  wire [3:0] opcode,     // operation selector
    output reg  [7:0] result,     // ALU result
    output reg  carry,            // carry/borrow flag
    output reg  zero              // zero flag
);

    wire [8:0] add_res, sub_res;
    assign add_res = a + b;
    assign sub_res = a - b;

    always @(*) begin
        carry = 0;
        zero  = 0;
        case (opcode)
            4'b0000: begin // ADD
                result = add_res[7:0];
                carry  = add_res[8];
            end
            4'b0001: begin // SUB
                result = sub_res[7:0];
                carry  = sub_res[8];
            end
            4'b0010: result = a & b;     // AND
            4'b0011: result = a | b;     // OR
            4'b0100: result = a ^ b;     // XOR
            4'b0101: result = ~a;        // NOT A
            4'b0110: result = a << 1;    // Shift Left
            4'b0111: result = a >> 1;    // Shift Right
            4'b1000: result = (a < b) ? 8'd1 : 8'd0; // Less Than
            4'b1001: result = (a == b) ? 8'd1 : 8'd0; // Equal
            default: result = 8'd0;
        endcase
        if (result == 8'd0)
            zero = 1;
    end

endmodule

