module jk_tb;
    wire t_q, t_qc;
    reg t_j, t_k, t_clk;
    always #2 t_clk=!t_clk;
    jk ff(.j(t_j), .k(t_k), .clk(t_clk), .q(t_q), .qc(t_qc));
    initial 
    begin
        $dumpfile("jk.vcd");
        $dumpvars(0);
        $display("clk\tj\tk\tq\tqc");
        $monitor("%b\t%b\t%b\t%b\t%b", t_clk, t_j, t_k, t_q, t_qc);
        t_clk=1'b0;
        #2
        t_j=1'b0;
        t_k=1'b0;
        #2
        t_clk=1'b1;
        t_j=1'b0;
        t_k=1'b1;
        #2
        t_clk=1'b1;
        t_j=1'b1;
        t_k=1'b0;
        #2
        t_clk=1'b1;
        t_j=1'b1;
        t_k=1'b1;
        $finish;
    end
endmodule