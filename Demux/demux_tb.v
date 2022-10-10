module demux_tb;
    wire t_y0, t_y1, t_y2, t_y3;
    reg t_s0, t_s1, t_i;
    demux demult(.y0(t_y0), .y1(t_y1), .y2(t_y2), .y3(t_y3), .s1(t_s1), .s0(t_s0), .i(t_i));
    initial
    begin
        $dumpfile("demux.vcd");
        $dumpvars();
        $monitor("input: %b\ts1: %b\ts0: %b\ty0: %b\ty1: %b\ty2: %b\ty3: %b", t_i, t_s1, t_s0, t_y0, t_y1, t_y2, t_y3);
        t_i=1'b1;
        t_s1=1'b0; t_s0=1'b0;
        #2
        t_s1=1'b0; t_s0=1'b1;
        #2
        t_s1=1'b1; t_s0=1'b0;
        #2
        t_s1=1'b1; t_s0=1'b1;
    end
endmodule