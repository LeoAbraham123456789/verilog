module t(input t, clk,
    output reg q, qc);
    initial
    begin
        q=0;
    end
    always @(clk or t)
    begin
        case(t)
            1'b0: q=q;
            1'b1: q=!q;
        endcase
        case(clk)
            1'b0: q=q;
        endcase
        qc=!q;
    end
endmodule