module half_adder_tb;
    wire t_sum, t_carry;
    reg t_a, t_b;
    half_adder half(.a(t_a), .b(t_b), .sum(t_sum), .carry(t_carry));
    initial begin
        $dumpfile("half.vcd");
        $dumpvars();
        $display("a\tb\tsum\tcarry");
        $monitor("%b\t%b\t%b\t%b", t_a, t_b, t_sum, t_carry);
        t_a=1'b0;
        t_b=1'b0;
        #5
        t_a=1'b0;
        t_b=1'b1;
        #5
        t_a=1'b1;
        t_b=1'b0;
        #5
        t_a=1'b1;
        t_b=1'b1;
    end
endmodule
