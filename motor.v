module stepper(clk,reset,dir,select,stepout,match );
input clk,reset;
input match;
//input dir;
//input [1:0] select;
output [3:0] stepout;
reg [3:0] stepout;

integer temp,stepcount;
reg dclk;


initial
begin
stepout=4'b1000;
temp=0;
dclk=1'b0;
stepcount=0;
reset=0;
end

always @(posedge clk)
begin
temp=temp+1;
if (temp==20000)
begin
dclk=~dclk;
temp=0;
end
end

always@(posedge dclk)
begin
if(reset)
begin
stepout=4'b1000;
stepcount=0;
end

else

begin
    if(match)
    begin
stepcount=stepcount+1;
if(stepcount<=100)
stepout={stepout[0],stepout[3:1]};


if(stepcount>1000 && stepcount<=1200)
stepout={stepout[2:0],stepout[3]};

    end
end


end

endmodule
