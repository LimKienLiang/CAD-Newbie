```
module CUDU (
  input clk, start,
  input [3:0] Min, Q,
  output Done,
  output [7:0] Dout
);
  wire Q1, Q0;
  wire done, count;
  wire [5:0] CV;
  CU u1 (.clk(clk), .start(start), .Q1(Q1), .Q0(Q0), .CV(CV), .done(Done), .count(count));
  DU u2 (.clk(clk), .Min(Min), .Q(Q), .Q1(Q1), .Q0(Q0), .CV(CV), .Dout(Dout), .count(count));
endmodule
```
This is the finalised module of Booth's Multiplier. In designing this module, structural modelling technique is used. By instantiating the modules of control unit and datapath unit, the module of Booth's Multiplier is completed.
