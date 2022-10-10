module half_adder(input a, b,
    output sum, carry);
    assign sum=a+b, carry=a&b;
endmodule