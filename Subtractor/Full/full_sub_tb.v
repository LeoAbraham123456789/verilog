module full_sub_tb;
    wire t_diff, t_bout;
    reg t_a, t_b, t_bin;
    full_sub sub(.a(t_a), .b(t_b), .bin(t_bin), .diff(t_diff), .bout(t_bout));
    initial begin
        $dumpfile("full.vcd");
        $dumpvars();
        $display("a\tb\tbin\tdiff\tbout");
        $monitor("%b\t%b\t%b\t%b\t%b", t_a, t_b, t_bin, t_diff, t_bout);
        t_a=1'b0;
        t_b=1'b0;
        t_bin=1'b0;
        #5
        t_a=1'b0;
        t_b=1'b0;
        t_bin=1'b1;
        #5
        t_a=1'b0;
        t_b=1'b1;
        t_bin=1'b0;
        #5
        t_a=1'b0;
        t_b=1'b1;
        t_bin=1'b1;
        #5
        t_a=1'b1;
        t_b=1'b0;
        t_bin=1'b0;
        #5
        t_a=1'b1;
        t_b=1'b0;
        t_bin=1'b1;
        #5
        t_a=1'b1;
        t_b=1'b1;
        t_bin=1'b0;
        #5
        t_a=1'b1;
        t_b=1'b1;
        t_bin=1'b1;
    end
endmodule
