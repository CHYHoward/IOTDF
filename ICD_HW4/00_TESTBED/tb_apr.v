`timescale 1ns/10ps
`define CYCLE       4.0                   //Modify your CYCLE 
`define DEL         1.0                   //Input latency (do not modify)
`define PAT_NUM     60
`define End_CYCLE  1000000 

`ifdef SYN
    `define SDFFILE "./IOTDF_syn.sdf"
`elsif APR
    `define SDFFILE "./layout/IOTDF_apr.sdf"
`endif


module tb;
reg           clk;
reg           rst;
reg           in_en;
reg  [7:0]    iot_in;
reg  [2:0]    fn_sel;
wire          busy;
wire          valid;
wire [127:0]  iot_out;
integer cycle_count;

`ifdef p1
   localparam PAT_NUM = 60;
   localparam F1_NUM = 60;
   localparam F2_NUM = 60;
`elsif p2 // modify the following number according to your pattern
   localparam PAT_NUM = 60;
   localparam F1_NUM = 60;
   localparam F2_NUM = 60;
`else
   localparam PAT_NUM = 60;
   localparam F1_NUM = 60;
   localparam F2_NUM = 60;
`endif

reg  [127:0]  pat_mem[0:PAT_NUM-1];
reg  [127:0]  f1_mem [0:F1_NUM-1];
reg  [127:0]  f2_mem [0:F2_NUM-1];
reg  [127:0]  in_tmp;
reg  [127:0]  out_tmp;
integer       i, j, x, in_l, out_h, out_l, pass, err, err_a;
reg           over, over1, over2;
reg [8*40-1:0] pattern_file_path;
reg [8*34-1:0] func_ans_path;

IOTDF u_IOTDF( .clk        (clk        ),
               .rst        (rst        ),
               .in_en      (in_en      ), 
               .iot_in     (iot_in     ),
               .fn_sel     (fn_sel     ),
               .busy       (busy       ), 
               .valid      (valid      ), 
               .iot_out    (iot_out    )
             );

initial begin
   cycle_count = 0;
   @(negedge clk);
   while (1) begin
      cycle_count = cycle_count + 1;
      @(negedge clk);
   end
end

`ifdef p1
   initial begin 
      pattern_file_path = "../00_TESTBED/pattern1_data/pattern1.dat";
      $readmemh(pattern_file_path, pat_mem);
   end
`elsif p2
   initial begin 
      pattern_file_path = "../00_TESTBED/pattern2_data/pattern2.dat";
      $readmemh(pattern_file_path, pat_mem);
   end
`else
   initial begin 
      pattern_file_path = "../00_TESTBED/pattern1_data/pattern1.dat";
      $display("%s", pattern_file_path);
      $readmemh(pattern_file_path, pat_mem);
   end
`endif

`ifdef F2
   initial begin
      func_ans_path = {pattern_file_path[40*8-1:12*8], "f2.dat"};
      $readmemh(func_ans_path, f2_mem); 
      fn_sel=3'd2;  
   end
`else //F1
   initial begin 
      func_ans_path = {pattern_file_path[40*8-1:12*8], "f1.dat"};
      $readmemh(func_ans_path, f1_mem); 
      fn_sel=3'd1;  
   end
`endif

initial begin
   clk           = 1'b0;   
   rst           = 1'b0;
   in_en         = 1'b0;   
   i             = 0;
   j             = 0;
   x             = 0;
   in_l          = 0;
   out_h         = 0;
   out_l         = 0;
   pass          = 0;
   err           = 0;
   err_a         = 0;
   over          = 0;
   over1         = 0;
   over2         = 0;
end

always begin #(`CYCLE/2)  clk = ~clk; end

initial begin
`ifdef SYN
    `ifdef F2
        $fsdbDumpfile("IOTDF_F2_syn.fsdb");
    `else
        $fsdbDumpfile("IOTDF_F1_syn.fsdb");
    `endif

`elsif APR
   `ifdef F2
        $fsdbDumpfile("IOTDF_F2_apr.fsdb");
    `else
        $fsdbDumpfile("IOTDF_F1_apr.fsdb");
    `endif
`else
    `ifdef F2
        $fsdbDumpfile("IOTDF_F2.fsdb");
    `else
        $fsdbDumpfile("IOTDF_F1.fsdb");
    `endif
`endif

$fsdbDumpvars;
$fsdbDumpMDA;
end



`ifdef SYN
   initial $sdf_annotate(`SDFFILE, u_IOTDF);
   initial #1 $display("SDF File %s were used for this simulation.", `SDFFILE);
`elsif APR
   initial $sdf_annotate(`SDFFILE, u_IOTDF);
   initial #1 $display("SDF File %s were used for this simulation.", `SDFFILE);
`else 
   initial $sdf_annotate(`SDFFILE, u_IOTDF);
   initial #1 $display("SDF File %s were used for this simulation.", `SDFFILE);
`endif




initial begin
   @(posedge clk)  #`DEL  rst = 1'b1;
   #`CYCLE                rst = 1'b0;

    $display("-----------------------------------------------------\n");  
    $display("Start to Send IOT Data & Compare ...");       
    $display("\n");       
   @(posedge clk)  ;
    while (i < PAT_NUM) begin
      if(!busy)begin     
         in_tmp   = pat_mem[i];
         in_l= 127 - j*8; // j is begin from 0

         #`DEL;
         iot_in   =   in_tmp[in_l -: 8];
         // $display("P%02d:  iot_in=%02h, in_tmp[in_l -: 8] =  %02h", x, iot_in, in_tmp[in_l -: 8]);
         in_en    =   1'b1;  

         if(j<15)     j=j+1;
         else begin
                      j=0;
                      i=i+1;              
         end
      end
      else begin
         #`DEL;
         iot_in   = 8'h0;
         in_en    = 1'b0;  
      end
      @(posedge clk);  
    end
    if(busy)begin
	#`DEL;
      iot_in   = 8'h0;          
    	in_en    = 1'b0;
    end
    over1 = 1; 
end


always @(posedge clk)begin
   if(valid)begin        
      `ifdef F2
         out_tmp=f2_mem[x];
      `else //F1
         out_tmp=f1_mem[x];
      `endif


      if(iot_out !== out_tmp)begin
         $display("P%02d:  iot_out=%032h  != expect %032h", x, iot_out, out_tmp);
         err = err + 1 ;  
      end
      else begin
         $display("P%02d:  ** Correct!! ** , iot_out=%032h", x, iot_out);
         pass = pass + 1;
      end


         x = x+1;      

      
     `ifdef F2
      if(x >  F2_NUM-1)   over2=1;
     `else  //F1
      if(x >  F1_NUM-1)   over2=1; 
     `endif

   end                                                                        
end

always @(*)begin
   over = over1 && over2;
end

initial begin
      @(posedge over)      
      if((over)) begin
         $display("\n-----------------------------------------------------\n");
         if (err == 0)  begin
            $display("Congratulations! All data have been generated successfully!\n");
            $display("Total cost time: %10.2f ns", cycle_count*(`CYCLE));
            $display("-------------------------PASS------------------------\n");
         end
         else begin
            $display("Final Simulation Result as below: \n");         
            $display("-----------------------------------------------------\n");
            $display("Pass:   %3d \n", pass);
            $display("Error:  %3d \n", err);
            $display("-----------------------------------------------------\n");
         end
      end
      #(`CYCLE/2); $finish;
end

initial begin
	#(`End_CYCLE*(`CYCLE));
	$display("-----------------------------------------------------\n");
	$display("Error!!! There is something wrong with your code ...!\n");
 	$display("------The test result is .....FAIL ------------------\n");
 	$display("-----------------------------------------------------\n");
 	$finish;
end
   
endmodule
