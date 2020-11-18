`timescale 10ns / 1ps
`include "FA.v"
module RCA(s, cout, x, y, c0);
input  [3:0] x, y;
output [3:0] s;
input  c0;
output cout;
wire c1, c2, c3;

// write your code here -- START--

FA fa_1(.s(s[0]), .c_out(c1), .x(x[0]), .y(y[0]), .c_in(c0));
FA fa_2(.s(s[1]), .c_out(c2), .x(x[1]), .y(y[1]), .c_in(c1));
FA fa_3(.s(s[2]), .c_out(c3), .x(x[2]), .y(y[2]), .c_in(c2));
FA fa_4(.s(s[3]), .c_out(cout), .x(x[3]), .y(y[3]), .c_in(c3));

// write your code here -- END--

endmodule
