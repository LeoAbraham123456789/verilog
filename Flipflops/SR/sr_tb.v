module sr_tb;
    wire t_q, t_qc;
    reg t_s, t_r, t_clk;
    always #2 t_clk=!t_clk;
    sr ff(.s(t_s), .r(t_r), .clk(t_clk), .q(t_q), .qc(t_qc));
    initial 
    begin
        $dumpfile("sr.vcd");
        $dumpvars(0);
        $display("clk\ts\tr\tq\tqc");
        $monitor("%b\t%b\t%b\t%b\t%b", t_clk, t_s, t_r, t_q, t_qc);
        t_clk=1'b0;
        #2
        t_s=1'b0;
        t_r=1'b0;
        #2
        t_clk=1'b1;
        t_s=1'b0;
        t_r=1'b1;
        #2
        t_clk=1'b1;
        t_s=1'b1;
        t_r=1'b0;
        #2
        t_clk=1'b1;
        t_s=1'b1;
        t_r=1'b1;
        $finish;
    end
endmodule