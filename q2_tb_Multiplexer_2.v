module multiplexer_tb();

reg [1:0]A;
reg [1:0]B;
reg [1:0]C;
reg [1:0]D;
reg [1:0]SEL;
wire [1:0]X; //output use "wire", input use "reg"

multiplexer m1(A,B,C,D,SEL,X); //naming the multiplexer "m1"

initial begin 
    //initiallize values of A,B,C,D and SEL
    #0 SEL <= 2'b00;
    #0 A <= 2'b00;
    #0 B <= 2'b01;
    #0 C <= 2'b10;
    #0 D <= 2'b10;
    
    //change SEL value after 10 time units
    #10 SEL <= 2'b01;
    
    //change SEL value after another 10 time units
    #10 SEL <= 2'b10;
    
    //change SEL value after another 10 time units
    #10 SEL <= 2'b00;
    
    //change SEL value after another 20 time units
    #20 SEL <= 2'b11;
    
    //change SEL value after another 10 time units
    #10 SEL <= 2'b00;
    
    //stop simulation after 10 time units
    #10 $stop;

end 

endmodule