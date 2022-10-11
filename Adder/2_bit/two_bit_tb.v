module two_bit_tb;
    reg [1:0] t_a, t_b;
    wire [1:0] t_sum;
    wire t_cout;
    two_bit adder(.a(t_a), .b(t_b), .sum(t_sum), .cout(t_cout));
    integer i, j;
    initial
    begin
        $dumpfile("two_bit.vcd");
        $dumpvars(0, two_bit_tb);
        $monitor("a: %b\tb: %b\tcarry: %b\tsum: %b", t_a, t_b, t_cout, t_sum);
        for(j=0;j<4;j++)
        begin
            t_a=j;
            for(i=0; i<4; i++)
            begin
                t_b=i;
                #2
                i=i;
            end
        end
    end  
endmodule