`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bdr / Sherif
// 
// Create Date: 07/17/2025 11:31:56 AM
// Design Name: 
// Module Name: THree_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module THree_Adder(
      input I0,I1,I2,I3 ,
      output reg O0,O1,O2,O3
      
    );
    //O3,O2,O1,O0 ;
    
    reg o3,o2,o1,o0;
    always @ (I0,I1,I2,I3)begin
     {o3,o2,o1,o0} = {I3,I2,I1,I0} ;
          if ({o3,o2,o1,o0} > 4)
    
           {O3,O2,O1,O0} ={o3,o2,o1,o0} + 3 ;
     else 
         {O3,O2,O1,O0} ={o3,o2,o1,o0} ; 
     
     
    end
endmodule
