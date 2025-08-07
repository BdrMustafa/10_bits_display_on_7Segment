`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bdr / Sherif 
// 
// Create Date: 07/17/2025 11:34:46 AM
// Design Name: 
// Module Name: Wrapper
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


module Wrapper(
         input i0,i1,i2,i3,i4,i5,i6,i7,
         output p0,p1,p2,p3,p4,p5,p6,p7,p8,p9
    );
    
    wire c10,c11,c12,c13;
     wire c20,c21,c22,c23;
     wire c30,c31,c32,c33;
      wire c40,c41,c42,c43;
       wire c50,c51,c52,c53;
        wire c60,c61,c62;
        
         
         THree_Adder C1 (i5,i6,i7,0,c10,c11,c12,c13);
         THree_Adder C2 (i4,c10,c11,c12,c20,c21,c22,c23);
         THree_Adder C3 (i3,c20,c21,c22,c30,c31,c32,c33);
         THree_Adder C4 (i2,c30,c31,c32,c40,c41,c42,c43);
         THree_Adder C5 (i1,c40,c41,c42,p1,p2,p3,p4);
         THree_Adder C6 (c33,c23,c13,0,c60,c61,c62,p9);
         THree_Adder C7 (c43,c60,c61,c62,p5,p6,p7,p8);
         
         assign p0 = i0 ;
endmodule
