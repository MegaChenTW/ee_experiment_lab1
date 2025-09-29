module AG_5(clk, Addr);
input clk;
output [4:0] Addr;
reg [4:0] Addr;
always @(posedge clk)
	Addr <= Addr+1;
endmodule