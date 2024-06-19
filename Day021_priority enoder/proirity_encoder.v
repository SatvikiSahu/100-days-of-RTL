`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 23:34:22
// Design Name: 
// Module Name: proirity_encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module priorityencoder_83(en, i, y);
    input en;
    input [7:0] i;
    output reg [2:0] y;

    always @(en or i) begin
        if (en == 1) begin
            if (i[7] == 1) y = 3'b111;
            else if (i[6] == 1) y = 3'b110;
            else if (i[5] == 1) y = 3'b101;
            else if (i[4] == 1) y = 3'b100;
            else if (i[3] == 1) y = 3'b011;
            else if (i[2] == 1) y = 3'b010;
            else if (i[1] == 1) y = 3'b001;
            else y = 3'b000;
        end
        else
            y = 3'bzzz; // High impedance value when enable is zero
    end
endmodule
