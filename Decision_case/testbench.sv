module Decision_case_tb;
    reg [3:0] Input;
    wire  [3:1] Output;
    Decision_case Decision_1(.I(Input),.O(Output));
initial
begin
    #160 $finish;
end
initial
begin
    #0   Input = 4'b0000;
    #10  Input = 4'b0001;
    #10  Input = 4'b0010;
    #10  Input = 4'b0011;
    #10  Input = 4'b0100;
    #10  Input = 4'b0101;
    #10  Input = 4'b0110;
    #10  Input = 4'b0111;
    #10  Input = 4'b1000;
    #10  Input = 4'b1001;
    #10  Input = 4'b1010;
    #10  Input = 4'b1011;
    #10  Input = 4'b1100;
    #10  Input = 4'b1101;
    #10  Input = 4'b1110;
    #10  Input = 4'b1111;
end
initial
begin
  $dumpfile("0424.vcd");
  $dumpvars(0, Decision_1);
end
endmodule