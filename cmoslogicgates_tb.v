module cmoslogicgates_tb();
reg A,B;
wire yor,yand,ynor,ynand,yxor,yxnor;

cmoslogicgates dut(.A(A),.B(B),.yor(yor),.yand(yand),.ynor(ynor),.ynand(ynand),.yxor(yxor),.yxnor(yxnor));
initial begin
       A=0;B=0;
    #5 A=0;B=1;
    #5 A=1;B=0;
    #5 A=1;B=1;
    #5 $finish;
end
endmodule
