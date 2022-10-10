module full_adder_tb;
    wire t_sum, t_cout;
    reg t_a, t_b, t_cin;
    full_adder full(.a(t_a), .b(t_b), .cin(t_cin), .sum(t_sum), .cout(t_cout));
    initial begin
        $dumpfile("full.vcd");
        $dumpvars();
        $display("a\tb\tcin\tsum\tcout");
        $monitor("%b\t%b\t%b\t%b\t%b", t_a, t_b, t_cin, t_sum, t_cout);
        t_a=1'b0;
        t_b=1'b0;
        t_cin=1'b0;
        #5
        t_a=1'b0;
        t_b=1'b0;
        t_cin=1'b1;
        #5
        t_a=1'b0;
        t_b=1'b1;
        t_cin=1'b0;
        #5
        t_a=1'b0;
        t_b=1'b1;
        t_cin=1'b1;
        #5
        t_a=1'b1;
        t_b=1'b0;
        t_cin=1'b0;
        #5
        t_a=1'b1;
        t_b=1'b0;
        t_cin=1'b1;
        #5
        t_a=1'b1;
        t_b=1'b1;
        t_cin=1'b0;
        #5
        t_a=1'b1;
        t_b=1'b1;
        t_cin=1'b1;
    end
endmodule
