module fDiv50MHzto1Hz(fin, fout);
input fin;
output [4:0] fout;
wire [31:0] DIVN, _DIVN;
reg [31:0] count;
reg fout;
assign DIVN = 32'd50000000;
assign _DIVN = {1'b0, DIVN[31:1]};

always @(posedge fin)
	begin	
		count <= (count >= DIVN)? 32'd1:count+1;
		fout <= (count <= _DIVN)? 1'b0:1'b1;
	end
endmodule