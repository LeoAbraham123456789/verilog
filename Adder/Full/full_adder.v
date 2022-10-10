module full_adder(input a, b, cin,
    output sum, cout);
    assign sum=a^b^cin, cout=a&b | (a^b)&cin;
endmodule