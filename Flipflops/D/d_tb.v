module d_tb;
    wire t_q, t_qc;
    reg t_d, t_clk;
    d ff(.d(t_d), .clk(t_clk), .q(t_q), .qc(t_qc));
    initial
    begin
        $dumpfile("d.vcd");
        $dumpvars();
        $display("clk\td\tq\tqc");
        $monitor("%b\t%b\t%b\t%b", t_clk, t_d, t_q, t_qc);
        t_clk=1'b0;
        #2
        t_clk=1'b1;
        t_d=1'b0;
        #2
        t_d=1'b1;
    end

endmodule