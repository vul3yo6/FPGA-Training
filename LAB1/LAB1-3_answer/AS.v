`include "FA.v"
module AS(sel, A, B, S, O);
input [3:0] A, B;
input sel;
output [3:0] S;
output O;

// write your code here -- START--

wire [3:0] tmp;
wire c0, c1, c2, c3, c4;

xor xor1( tmp[0], B[0], sel );
xor xor2( tmp[1], B[1], sel );
xor xor3( tmp[2], B[2], sel );
xor xor4( tmp[3], B[3], sel );

FA fa_1(.s(S[0]), .c_out(c1), .x(A[0]), .y(tmp[0]), .c_in(sel));
FA fa_2(.s(S[1]), .c_out(c2), .x(A[1]), .y(tmp[1]), .c_in(c1));
FA fa_3(.s(S[2]), .c_out(c3), .x(A[2]), .y(tmp[2]), .c_in(c2));
FA fa_4(.s(S[3]), .c_out(c4), .x(A[3]), .y(tmp[3]), .c_in(c3));
xor xor5(O, c4, c3);

// write your code here -- END--

endmodule


