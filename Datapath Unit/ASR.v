module ASR (
  input shift,clk,rst,load,
  input [3:0]Sum,Q,
  output reg Q1,Q0,
  output reg [3:0]A,
  output reg [7:0]Dout
);
  
  reg [7:0]Din;
  reg MSBin;
  assign MSBout = Dout[7];
  
  always @ (posedge clk, posedge rst) begin
    Din <= {Sum[3:0],Dout[3:0]};
    MSBin <= Din[7];
    if (rst) begin
      Dout <= {4'b0000,Q[3:0]};
      Q0 <= 0;
      Q1 <= Q[0];
    end
    else begin
      if (load) begin
        Dout <= Din;
        A <= Din[7:4];
      end
      else begin
        case (shift)
          1'b0: begin Dout <= Dout; Q0 <= Q0; Q1 <= Q1; end
          1'b1: begin Dout <= {MSBin,Dout[7:1]}; Q0 <= Dout[0]; Q1 <= Dout[1]; A <= {MSBin,Dout[7:5]}; end
        endcase
      end
    end
  end
endmodule
