`timescale 10ns / 1ps
module HA(s, c, x, y);
input x, y;
output s, c;

// write your code here -- START--

xor xor1( s, x, y ); // w1 = x and y 
and and1( c, x, y ); // w1 = x and y 

// write your code here -- END--

endmodule
