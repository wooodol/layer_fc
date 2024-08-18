`timescale 1ns / 1ps

module relu_fc(
   input [31:0] data_in,
   input valid_in,
   input clk,rst_n,
   output reg [31:0] data_out,
   output reg valid_out
    );
    wire [31:0] relu_data = data_in[31]? 32'b0 : data_in;
    reg [1:0] cnt [0:1];
    
    always @(posedge clk) begin
       if(~rst_n)begin
           valid_out <= 0;
       end
       cnt[0] <= valid_in;
       assign valid_out = cnt[0];
       if(valid_in)begin
          data_out <= relu_data;
       end
    end
endmodule
