module two_bit(input [1:0] a, b,
    output [1:0] sum,
    output c1, cout);
    assign {c1, sum[0]}=a[0]+b[0];
    assign {cout, sum[1]}=a[1]+b[1]+c1;
endmodule