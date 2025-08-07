module Segment (
    input  in0, in1, in2, in3,
    output a,b,c,d,e,f,g
);
reg  [6:0] segments ;

    always @(*) begin
        case ({in3, in2, in1, in0 })
            4'd0: segments = ~7'b1111110;
            4'd1: segments = ~7'b0110000;
            4'd2: segments = ~7'b1101101;
            4'd3: segments = ~7'b1111001;
            4'd4: segments = ~7'b0110011;
            4'd5: segments = ~7'b1011011;
            4'd6: segments = ~7'b1011111;
            4'd7: segments = ~7'b1110000;
            4'd8: segments = ~7'b11111111;
            4'd9: segments = ~7'b11110111;
           
            default: segments = ~7'b11111101111110;  
        endcase
    end
	 
      assign a = segments[6] ;
	 assign b = segments[5] ;
	 assign c = segments[4] ;
	 assign d = segments[3] ;
	 assign e = segments[2] ;
	 assign f = segments[1] ;
	 assign g = segments[0] ;
endmodule