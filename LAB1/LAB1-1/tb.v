module testbench;
    reg x,y,c_in;
    wire s,c;
    //s, c_out, x, y, c_in
    FA adder(.x(x),.y(y),.c_in(c_in),.s(s),.c_out(c));
    initial begin
        x = 0;
        y = 0;
        c_in = 0;
        #5
        $display ("X = %d , Y = %d , C_in = %d , S = %d , C = %d\n",x,y,c_in,s,c);
        #20 
        x = 0;
        y = 1;
        c_in = 0;
        #5
        $display ("X = %d , Y = %d , C_in = %d , S = %d , C = %d\n",x,y,c_in,s,c);
        #20 
        x = 1;
        y = 0;
        c_in = 0;
        #5
        $display ("X = %d , Y = %d , C_in = %d , S = %d , C = %d\n",x,y,c_in,s,c);
        #20 
        x = 1;
        y = 1;
        c_in = 0;
        #5
        $display ("X = %d , Y = %d , C_in = %d , S = %d , C = %d\n",x,y,c_in,s,c);
        #20 
        x = 0;
        y = 0;
        c_in = 1;
        #5
        $display ("X = %d , Y = %d , C_in = %d , S = %d , C = %d\n",x,y,c_in,s,c);
        #20 
        x = 0;
        y = 1;
        c_in = 1;
        #5
        $display ("X = %d , Y = %d , C_in = %d , S = %d , C = %d\n",x,y,c_in,s,c);
        #20 
        x = 1;
        y = 0;
        c_in = 1;
        #5
        $display ("X = %d , Y = %d , C_in = %d , S = %d , C = %d\n",x,y,c_in,s,c);
        #20 
        x = 1;
        y = 1;
        c_in = 1;
        #5
        $display ("X = %d , Y = %d , C_in = %d , S = %d , C = %d\n",x,y,c_in,s,c);
        $finish;
    end
endmodule
