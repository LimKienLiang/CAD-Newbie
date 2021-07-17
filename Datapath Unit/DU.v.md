```
module DU (
  input clk,
  input [3:0] CV,
  input [3:0] Min, Q,
  output Q1, Q0, count,
  output [7:0] Dout
);
  wire [3:0] Mout, A, Sum;
  wire rst, add, sub, load, shift, dc;
  assign CV = {rst,add,sub,load,shift,dc};
  M u1 (.Min(Min), .clk(clk), .load(load), .rst(rst), .Mout(Mout));
  adder_sub u2 (.sub(sub), .add(add), .rst(rst), .M(Mout), .A(A), .Sum(Sum));
  counter u3 (.clk(clk), .dc(dc), .rst(rst), .count(count));
  ASR u4 (.shift(shift), .clk(clk), .rst(rst), .load(load), .Sum(Sum), .Q(Q), .Q1(Q1), .Q0(Q0), .A(A), .Dout(Dout));
endmodule
```
In designing datapath unit, we used the technique of structural modelling. There are 4 instantiated modules containing M Register, Down Counter Register, Arithmetic Shift Right Register and Add-Subtract Register.
