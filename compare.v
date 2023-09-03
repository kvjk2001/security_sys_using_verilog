
// A 3-bit comparator module that compares two 3-bit inputs
module three_bit_comparator (input clk,reset,input [2:0] a, input [2:0] b, output match,output not_match);

integer temp;
reg clkdiv;
reg compare;

initial
begin 
 temp=0;
 clkdiv=1'b0;
 match=0;
 not_match=0;
 check=0;
 reset=0;
end

//initial locked=1'b0;

always@(posedge clk)
begin
    temp=temp+1;
    if(temp==2000000)
    begin
        clkdiv=~clkdiv;
        temp=0;
    end
end

always@(posedge clkdiv)
begin
    if(reset==1)
    begin
 match=0;
 not_match=0;
    end
 else
 begin
    if(check==1)
    begin
    compare = (a[0] == b[0]) & (a[1] == b[1]) & (a[2] == b[2]);
    if(compare)
    match=1;
    else 
    not_match=1;
    end
end
end
endmodule
