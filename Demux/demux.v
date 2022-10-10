module demux(input i, s0, s1,
    output y0, y1, y2, y3);
    assign y0=i&!s1&!s0, y1=i&!s1&s0, y2=i&s1&!s0, y3=i&s1&s0;
endmodule 