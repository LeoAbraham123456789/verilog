module half_sub(input a, b,
    output diff, borr);
    //assign {borr, diff}=(a-b);
    assign diff=a^b, borr=!a&b;
endmodule