//positve edge detector_tb
module tb_edgedect_4bit;
reg clk;
reg rst;
reg [3:0] current;
wire [3:0] eddect;

edgedect_4bit vtt(
.clk(clk),.rst(rst),.current(current),.eddect(eddect));

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
rst=1;
current=4'b0110;
#10;
rst=0;
current = 4'b0011;
#10;
current = 4'b0110;
#10;
current = 4'b0001;
#10;
current = 4'b1101;
#20;
$finish;
end
initial begin
        // Monitor the signals and latch values
        $monitor("Time: %0t | clk = %b | rst = %b | perv = %b | curr = %b |eddect= %b", 
                  $time, clk, rst,vtt.perv,current ,eddect );
    end

endmodule



