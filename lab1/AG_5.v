module AG_5(clk, Addr);	//Define module
input clk;					//Declare 1 bit input 'clk':
output [4:0] Addr;		//Declare 5 bit output 'Addr':
reg [4:0] Addr;			//Declare 'Addr' to be 'reg' type: default declaration is using 'wire'
always @(posedge clk)	//Triggered by posedge of clk
	Addr <= Addr+1;		//Non-blockingly assign 'Addr' to be 'Addr'+1
endmodule					//End of this module