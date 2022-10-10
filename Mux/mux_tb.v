module mux_tb;
    wire [2:0] t_y;
    reg [2:0] t_i0, t_i1, t_i2, t_i3;
    reg [1:0] t_sel;
    mux mult(.y(t_y), .i0(t_i0), .i1(t_i1), .i2(t_i2), .i3(t_i3), .sel(t_sel)); 
    initial
    begin
        $dumpfile("mux.vcd");
        $dumpvars();
        $monitor("sel1: %b\tsel0: %b\ty: %b", t_sel[1], t_sel[0], t_y);
        t_i0=3'b000;
        t_i1=3'b100;
        t_i2=3'b010;
        t_i3=3'b001;

        t_sel=2'b00;
        #2;
        t_sel=2'b01;
        #2;
        t_sel=2'b11;
        #2;
    end 
endmodule