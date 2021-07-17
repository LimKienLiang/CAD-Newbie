module adder_sub (
  input sub, add, rst,
  input [3:0] M, A,
  output reg [3:0] Sum
);
  always @ (M, A, Sum, sub, add, rst) begin
    if (rst) begin Sum <= 0; end
    else begin
      if (add) begin
        Sum <= M + A;
      end
      else if (sub) begin
        Sum <= A = (~M + 1);
      end
      else begin Sum <= Sum; end
    end
  end
endmodule
