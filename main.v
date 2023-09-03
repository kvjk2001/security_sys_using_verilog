module password_compare (
    input clk,reset,
    input [2:0]pass_key
   // input [1:0]select,
    input pk,
    input check,
    input [2:0]data_key,
    input dk,
   // input dir,
    output match ,  
    output stepout ,
    output not_match         // the password to compare    // the input to compare the password to
     );
            // output that is 1 if the input matches the password, 0 otherwise
        
wire [2:0]password;
wire [2:0]data;

// Instantiate a 3-bit comparator to compare the password and input
three_bit_comparator comparator(
    .reset(reset),
     .clk(clk),
    .a(password),
    .b(data),
    .match(match),
    .not_match(not_match),
    .check(check));


 input_pass   inst1(
    .reset(reset),
    .clk(clk),
     .password(password), // the password to compare
     .pass_key(pass_key),
     .pk(pk));



      input_data   inst2(
     .reset(reset),
     .clk(clk),
     .data(data), // the password to compare
     .data_key(data_key),
     .dk(dk));

 stepper inst3(
    .clk(clk),
    .reset(reset),
    .match(match),
 //   .dir(dir),
 //   .select(select),
    .stepout(stepout) );







     endmodule
