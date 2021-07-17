module counter (
  input clk,dc,rst,
  output count
);
  parameter [2:0] S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4;
  reg [2:0]y,Y;
  wire [2:0]n;
  
  always @ (negedge clk, posedge rst) begin
    if (rst) begin y = S0; end
    else begin y <= Y; end
  end
  
  always @* begin
    Y <= 0;
    case (y)
      S0: begin if (dc) Y <= S1; else Y <= S0; end
      S1: begin if (dc) Y <= S2; else Y <= S1; end
      S2: begin if (dc) Y <= S3; else Y <= S2; end
      S3: begin if (dc) Y <= S4; else Y <= S3; end
      S4: Y <= S0;
    endcase
  end
  
  assign n = (y == S0) ? 4 : (y == S1) ? 3 : (y == S2) ? 2 : (y == S3) ? 1 : 0;
  assign count = (y == S4);
endmodule
