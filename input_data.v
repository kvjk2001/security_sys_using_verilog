module input_data(
    input clk,
    input reset,
    output [2:0]data, // the password to compare
    input dk,
     input [2:0]data_key,
    );


integer temp;
reg clkdiv;


initial
begin 
 temp=0;
 clkdiv=1'b0;
 data=3'b000;
 reset=0;
 dk=0;
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


    always@(posedge clk)
begin
    if(reset==1)
    begin
 data=3'b000;
    end
 else
 begin
    if(dk)
    begin
        data=data_key;
    end
    else
    data=data;
end
end
endmodule
