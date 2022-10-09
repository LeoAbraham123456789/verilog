module Gates_tb;
    wire t_and,t_or,t_not,t_nor,t_nand,t_xor,t_xnor;
    reg t_a, t_b;
    Gates my_gate(.a(t_a), .b(t_b),.y_and(t_and), .y_or(t_or), .y_not(t_not), 
        .y_nor(t_nor), .y_nand(t_nand), 
        .y_xor(t_xor), .y_xnor(t_xnor));
    initial begin
        $dumpfile("gates.vcd");
        $dumpvars(0, Gates_tb);
        $display("a\tb\tand\tor\tnot\tnand\tnor\txor\txnor");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",t_a,t_b,t_and,t_or,t_not,t_nand,t_nor,t_xor,t_xnor);
        t_a = 1'b0;
        t_b = 1'b0;
        #5
        t_a = 1'b0;
        t_b = 1'b1;
        #5
        t_a = 1'b1;
        t_b = 1'b0;
        #5
        t_a = 1'b1;
        t_b = 1'b1;
    end
endmodule