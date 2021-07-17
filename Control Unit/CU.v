module CU (
  input clk, start, Q1, Q0, count,
  output reg done,
  output reg [5:0] CV
);
  reg [3:0] ps, ns;
  parameter [3:0] S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5, S6 = 6, S7 = 7, S8 = 8;
  
  always @ (negedge clk, posedge start) begin
    if (start) ps <= S0;
    else ps <= ns;
  end
  
  always @ (ns, ps, Q0, Q1, start, count, CV, done) begin
    CV = 0;
    done = 0;
    case (ps)
      S0: begin ns = S8; CV = 6'h20; end
      S1: begin
        if ((Q1 == 0 && Q0 == 0) | (Q1 == 1 && Q0 == 1)) ns = S2;
        else if (Q1 == 1 && Q0 == 0) ns = S4;
        else ns = S3;
        CV = 0;
      end
      S2: begin ns = S5; CV = 6'h02; end
      S3: begin ns = S7; CV = 6'h10; end
      S4: begin ns = S7; CV = 6'h08; end
      S5: begin
        if (count) ns <= S6;
        else ns = S1;
        CV = 6'h01;
      end
      S6: begin
        done = 1;
        if (start) ns = S0;
        else ns = S6;
        CV = 0;
      end
      S7: begin
        ns = S2;
        CV = 6'h04;
      end
      S8: begin ns = S1; CV = 6'h04; end
    endcase
  end
endmodule
