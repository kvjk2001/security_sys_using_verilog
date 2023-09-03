module input_pass(input clk,
input reset,
    output [2:0] password, // the password to compare
    input [2:0]pass_key,
    input pk);


integer temp;
reg clkdiv;


initial
begin 
 temp=0;
 clkdiv=1'b0;
 password=3'b110;
 reset=0;
 pk=0;
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
 password=3'b110;
    end
 else
 begin
    if(pk)
    begin
        password=pass_key;
    end
    else
    password=password;
 end
end

endmodule