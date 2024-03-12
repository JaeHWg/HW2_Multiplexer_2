//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0]A, //2-bit vector
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);

//YOUR CODE HERE
//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;
/*only need to register output "X", cuz system needs to remember value of X. Inputs
A,B,C,D are set already*/ 
reg [1:0]x = 2'b00; //declare a varible x and hold value of binary "0"
assign X=x; //assign X to x, to match output declaration

always@(SEL, A, B, C, D)begin
   case(SEL)
        2'b00: x = A;  //if SEL=0, output is A
        2'b01: x = B;   //if SEL=1, output is B
        2'b10: x = C;   //if SEL=2, output is C
        2'b11: x = D;   //if SEL=3, output is D
        default: x = 0; //if SEL is anything else, output is always 0
     endcase  
   end     

endmodule