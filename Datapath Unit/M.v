module M (
  input [3:0] Min;
  input clk,load,rst,
  output reg [3:0] Mout
  );
  always @ (posedge clk, posedge rst)
  if (rst) begin Mout <= 0; end
  else begin if (load) Mout <= Min; end
endmodule
