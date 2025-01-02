//positve edge detector
module edgedect_4bit( 
input clk,
input rst,
input [3:0] current,
output reg [3:0] eddect
);

reg [3:0] perv;

always@ (posedge clk or posedge rst) begin
if (rst) begin
eddect<=4'b0000;
end
else begin
eddect = perv & ~current;
perv = current;
end
end
endmodule