module half_sub_tb;
    wire t_diff, t_borr;
    reg t_a, t_b;
    half_sub half(.a(t_a), .b(t_b), .diff(t_diff), .borr(t_borr));
    initial begin
        $dumpfile("half.vcd");
        $dumpvars();
        $display("a\tb\tdiff\tborr");
        $monitor("%b\t%b\t%b\t%b", t_a, t_b, t_diff, t_borr);
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
