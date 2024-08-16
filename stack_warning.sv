`timescale 1ns / 1ps
module stack_warning #(
SLEEPTIME = 100
)(
input clk,
input valid_in,
input data_in,
input rst_n,
output reg warning,
output reg [10:0] stack
);

reg prevalid;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        stack <= 0;
        warning <= 0;
        prevalid <= 0;
    end
    else begin
        if(valid_in && !prevalid) begin
            if(data_in == 0) begin
                stack <= stack + 1;
            end
        end
        
        if(data_in&&valid_in) begin
            warning <= 0;
            stack <= 0;
        end
        else if(stack >= SLEEPTIME) begin
            warning <= 1;
        end
        prevalid <= valid_in;
    end
end

endmodule
