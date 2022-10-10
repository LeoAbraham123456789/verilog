module d(input d, clk,
    output reg q, qc);
    always @(clk or d)
    begin
        case(d)
            1'b0: q=0;
            1'b1: q=1;
        endcase
        case(clk)
            1'b0: q=1'bx;
        endcase
        qc=!q;
    end
endmodule