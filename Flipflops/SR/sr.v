module sr(input s, r, clk,
    output reg q, qc);
    initial
    begin
        q=0;
        qc=1;
    end
    always @(clk or s or r) begin
        case({s,r})
            2'b00: q=q;
            2'b01: q=0;
            2'b10: q=1;
            2'b11: q=1'bx;
        endcase
        case(clk)
            1'b0: q=0;
        endcase
        qc=!q;
    end
endmodule