module t_tb;
    wire t_q, t_qc;
    reg t_t, t_clk;
    t ff(.t(t_t), .clk(t_clk), .q(t_q), .qc(t_qc));
    initial
    begin
        $dumpfile("t.vcd");
        $dumpvars();
        $display("clk\tt\tq\tqc");
        $monitor("%b\t%b\t%b\t%b", t_clk, t_t, t_q, t_qc);
        t_clk=1'b0;
        #2
        t_clk=1'b1;
        t_t=1'b0;
        #2
        t_t=1'b1;
    end

endmodule