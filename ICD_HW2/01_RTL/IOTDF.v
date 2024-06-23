`timescale 1ns/10ps

 

module IOTDF( clk, rst, in_en, iot_in, fn_sel, busy, valid, iot_out);

    input          clk;

    input          rst;

    input          in_en;

    input  [7:0]   iot_in;

    input  [2:0]   fn_sel;

    output         busy;

    output         valid;

    output [127:0] iot_out;

 

    // parameter setting

    parameter GRAY2BIN = 3'b001; 

    parameter FIR = 3'b010; 

    

    parameter S_INPUT          = 2'd0;

    parameter S_CALCULATION    = 2'd1;

    parameter S_OUTPUT         = 2'd2;

    parameter S_IDLE           = 2'd3;

 

    // state

    reg  [         1: 0] state, state_nxt;

    reg o_valid, o_valid_nxt;

    reg [127:0] o_data, o_data_nxt;

    reg [3:0] counter, counter_nxt;

    reg o_busy,o_busy_nxt;

    reg [11:0] temp;

 

    assign valid = o_valid;

    assign iot_out = o_data;

    assign busy = o_busy;

    

    // reg [10:0] shift3;

    // reg [9:0] shift2_1, shift2_2;

    // reg [10:0] temp1, temp2, temp3, temp4;

    reg[127:0] whole_data,whole_data_nxt;



    // reg o_busy, o_busy_nxt;

 

    // assign output

    // always @(*) begin

    //     if(counter == 4'b1111)  o_busy_nxt = !rst;

    //     else                    o_busy_nxt = 1'b0;

    // end

 

 // Todo: FSM

    always @(*) begin
        state_nxt = 0;
        case(state)

            S_IDLE: begin

                if(rst || counter != 0 ) state_nxt = S_IDLE;

                if(counter == 15)    state_nxt = S_INPUT;

            end

            S_INPUT:begin

                // if(in_en)begin

                    if(counter < 15)    state_nxt = S_INPUT;

                    else                state_nxt = S_CALCULATION;

                // end 

            end

            S_CALCULATION:state_nxt = S_OUTPUT;

            S_OUTPUT:begin

                state_nxt = S_INPUT;

            end

            default : state_nxt = S_IDLE;

        endcase

    end

 

     // Todo: Counter

    always @(*) begin

        if(counter<15 &&( state == S_INPUT || state == S_IDLE) ) counter_nxt = counter + 1;

        else counter_nxt = 0;

        // if(state == S_OUTPUT) counter_nxt = 0;

    end

 

    integer i;

   

    always @(*) begin

        o_data_nxt[127:0] = 0;
        whole_data_nxt = 128'b0;
        case(state)

            S_IDLE : begin

                if(counter >= 14) o_busy_nxt = 0;

                else              o_busy_nxt = 1;

            end

            S_INPUT:begin

                if(counter >= 14)   o_busy_nxt = 1;

                else                o_busy_nxt = 0;

                

                if(counter!=0) whole_data_nxt[127:8] = whole_data[119:0];

                whole_data_nxt[7:0] = iot_in[7:0];

            end

            S_CALCULATION:begin

                o_busy_nxt = 0;

                if (fn_sel == GRAY2BIN)begin

                    o_data_nxt[127] = whole_data[127];

                   

                    for(i=0;i < 127;i=i+1) begin

                        o_data_nxt[i] = ^(whole_data >> i);

                    end                 

                      

                end

                if(fn_sel == FIR)begin

                    // case 7:0

                    temp[11:0] = 5*whole_data[7:0] + 9*whole_data[15:8] + 2*whole_data[23:16];

                    o_data_nxt[7:0] = temp[11:4] + temp[3];

 

                    // case 15:8

                    temp[11:0] = 5*whole_data[15:8] + 9*whole_data[23:16] + 2*whole_data[31:24];

                    o_data_nxt[15:8] = temp[11:4] + temp[3];

 

                    // case 23:16

                    temp[11:0] = 5*whole_data[23:16] + 9*whole_data[31:24] + 2*whole_data[39:32];

                    o_data_nxt[23:16] = temp[11:4] + temp[3];

 

                    // case 31:24

                    temp[11:0] = 5*whole_data[31:24] + 9*whole_data[39:32] + 2*whole_data[47:40];

                    o_data_nxt[31:24] = temp[11:4] + temp[3];

 

                    // case 39:32

                    temp[11:0] = 5*whole_data[39:32] + 9*whole_data[47:40] + 2*whole_data[55:48];

                    o_data_nxt[39:32] = temp[11:4] + temp[3];

 

                    // case 47:40

                    temp[11:0] = 5*whole_data[47:40] + 9*whole_data[55:48] + 2*whole_data[63:56];

                    o_data_nxt[47:40] = temp[11:4] + temp[3];

 

                    // case 55:48

                    temp[11:0] = 5*whole_data[55:48] + 9*whole_data[63:56] + 2*whole_data[71:64];

                    o_data_nxt[55:48] = temp[11:4] + temp[3];

 

                    // case 63:56

                    temp[11:0] = 5*whole_data[63:56] + 9*whole_data[71:64] + 2*whole_data[79:72];

                    o_data_nxt[63:56] = temp[11:4] + temp[3];

 

                    // case 71:64

                    temp[11:0] = 5*whole_data[71:64] + 9*whole_data[79:72] + 2*whole_data[87:80];

                    o_data_nxt[71:64] = temp[11:4] + temp[3];

 

                    // case 79:72

                    temp[11:0] = 5*whole_data[79:72] + 9*whole_data[87:80] + 2*whole_data[95:88];

                    o_data_nxt[79:72] = temp[11:4] + temp[3];

 

                    // case 87:80

                    temp[11:0] = 5*whole_data[87:80] + 9*whole_data[95:88] + 2*whole_data[103:96];

                    o_data_nxt[87:80] = temp[11:4] + temp[3];

 

                    // case 95:88

                    temp[11:0] = 5*whole_data[95:88] + 9*whole_data[103:96] + 2*whole_data[111:104];

                    o_data_nxt[95:88] = temp[11:4] + temp[3];

 

                    // case 103:96

                    temp[11:0] = 5*whole_data[103:96] + 9*whole_data[111:104] + 2*whole_data[119:112];

                    o_data_nxt[103:96] = temp[11:4] + temp[3];

 

                    // case 111:104

                    temp[11:0] = 5*whole_data[111:104] + 9*whole_data[119:112] + 2*whole_data[127:120];

                    o_data_nxt[111:104] = temp[11:4] + temp[3];

 

                    // case 119:112

                    temp[11:0] = 5*whole_data[119:112] + 9*whole_data[127:120];

                    o_data_nxt[119:112] = temp[11:4] + temp[3];

 

                    // case 127:120

                    temp[11:0] = 5*whole_data[127:120];

                    o_data_nxt[127:120] = temp[11:4] + temp[3];

 

                end   

 

            end

            S_OUTPUT:begin

                o_busy_nxt = 0;

            end

 

        endcase

    end  




     // Todo: output valid signal

    always @(*) begin

        case(state)

            S_INPUT : o_valid_nxt = 0;

            S_CALCULATION : o_valid_nxt = 1;

            S_OUTPUT: o_valid_nxt = 0;

            default : o_valid_nxt = 0;

        endcase

    end

 

    // Todo: Sequential always block

    always @(posedge clk) begin

        if (rst) begin

            state       <= S_IDLE;

            whole_data  <= 0;

            o_valid     <= 0;

            counter     <= 14;

            o_data      <= 0;

            o_busy      <= 1;

        end

        else begin

            state       <= state_nxt;

            whole_data  <= whole_data_nxt;

            o_valid     <= o_valid_nxt;

            counter     <= counter_nxt;

            o_data      <= o_data_nxt;

            o_busy      <= o_busy_nxt;

        end

        // $display("%d",counter);

        // $display("%h",whole_data);

        // $display("\n");

    end

    

 

endmodule