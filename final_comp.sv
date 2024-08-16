`timescale 1ns / 1ps

module final_comp (
    input clk,
    input rst_n,
    input  wire [31:0] data_in,  
    input valid_in,    
    output reg detect,
    output reg valid_out
);

localparam [31:0] fp_half = 32'h3F000000; // 0.5
reg [31:0] fp_final;
reg [10:0] o; 

    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            valid_out <= 0;
            o <= 0;
        end
        else begin
            if(valid_in)begin
                valid_out = 1;
                fp_final = data_in[31]? 32'b0 : data_in;
                assign detect = (fp_final > fp_half) ? 1'b1 : 1'b0;
                o <= o + 1;
            end
            if(o==1)begin
                o <= 0;
                valid_out <= 0;
            end
        end
    end
    
endmodule
