/*******************************************************************************************************************
*            This is a half-finished code for a seven-segment display decoder.
*
*         Function: Converts a 4-bit binary number to a seven-segment display 
*                   and shows it in hexadecimal format.
*  Input Parameter: din   4-bit binary number
* Output Parameter: dout 7-bit input for the seven-segment display
*      Description: The seven-segment display is common anode, so a signal of 0 turns the segment on.
*
*													JH design
*******************************************************************************************************************/


module hw01_7seg(din,dout); 
input 	[3:0]	din;
output	[6:0]	dout;
reg		[6:0]	dout;

always@(din)
begin
	case(din)
	 	4'b0000:dout<=7'b1000000;
	 	4'b0001:dout<=7'b1111001;
	 	4'b0010:dout<=7'b0100100;
	 	4'b0011:dout<=7'b0110000;
	 	4'b0100:dout<=7'b0011001;
	 	4'b0101:dout<=7'b0010010;
	 	4'b0110:dout<=7'b0000010;
	 	4'b0111:dout<=7'b1111000;
		4'b1000:dout<=7'b0000000;
	 	/* Please write the code here to complete the program */
		
		//===========================================//
		//Author:mega
		//Date:2025-09-24
		//Function:implement A b C d E
		//===========================================//
		4'b1001:dout<=7'b0000100;	//A
		4'b1010:dout<=7'b0000011;	//b
		4'b1011:dout<=7'b1000110;	//C
		4'b1100:dout<=7'b0100001;	//d
		4'b1101:dout<=7'b0000110;	//E
		
	endcase
end
endmodule
