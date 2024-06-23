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

parameter S_IDLE = 2'b00;
parameter S_READ = 2'b01;
parameter S_CALCULATION = 2'b10;
parameter S_WRITE = 2'b11;
parameter GRAY2BIN = 3'b001;
parameter FIR = 3'b010;

reg [127:0] input_data,input_data_nxt;

reg [127:0] output_data,output_data_nxt;
reg [1:0] state, state_nxt; 
reg [3:0] counter, counter_nxt;//0-31

reg [11:0] temp;

reg o_valid,o_valid_nxt;
reg o_busy, o_busy_nxt;

//output assignment
assign busy = o_busy;
assign iot_out = output_data;
assign valid = o_valid;

integer i;


//FSM
always @ (*)begin
    state_nxt = 0;
    case(state)
        S_IDLE: begin
            if(rst || counter != 0) state_nxt = S_IDLE;
            // if(counter == 0) state_nxt = S_READ;
            if (counter == 15) state_nxt = S_READ;
        end
        S_READ: begin
            if(counter < 15) state_nxt = S_READ;
            else state_nxt = S_CALCULATION;
        end
        S_CALCULATION: begin
            state_nxt = S_WRITE;
        end    
        S_WRITE: begin
           state_nxt = S_READ;
        end 
        default: state_nxt = S_IDLE;
    endcase
end

// Todo: Counter
always @(*) begin 
    if(counter < 15 && (state == S_READ || state == S_IDLE)) counter_nxt = counter + 1;
    else counter_nxt = 0;
end

//what to do in each state
always @(*) begin
    input_data_nxt[127:0] = 0;
    output_data_nxt[127:0] = 0;
    case(state)
        S_IDLE: begin
            if (counter == 14|| counter == 15) o_busy_nxt = 1'b0;
            else begin
                o_busy_nxt = 1'b1;
            end
        end
        S_READ: begin
            input_data_nxt[127:0] = {input_data[119:0],iot_in[7:0]};
            if(counter == 14 || counter == 15) begin
                o_busy_nxt = 1'b1;
            end
            else begin
                o_busy_nxt = 1'b0;
            end
        end
        S_CALCULATION:begin
            o_busy_nxt = 1'b0;
            if (fn_sel == GRAY2BIN) begin
                output_data_nxt[127] = input_data[127];
                for (i = 126; i >= 0; i = i - 1) begin
                    output_data_nxt[i] = output_data_nxt[i+1] ^ input_data[i];
                end
            end
            else if (fn_sel == FIR) begin
                //case 127:120
                temp[11:0] = 5*input_data[127:120];
                output_data_nxt[127:120] = temp[11:4] + temp[3];
                //case 119:112
                temp[11:0] = 5*input_data[119:112] + 9*input_data[127:120];
                output_data_nxt[119:112] = temp[11:4] + temp[3];
                
                 // case 111:104
                temp[11:0] = 5*input_data[111:104] + 9*input_data[119:112] + 2*input_data[127:120];
                output_data_nxt[111:104] = temp[11:4] + temp[3];

                // case 103:96
                temp[11:0] = 5*input_data[103:96] + 9*input_data[111:104] + 2*input_data[119:112];
                output_data_nxt[103:96] = temp[11:4] + temp[3];

                // case 95:88
                temp[11:0] = 5*input_data[95:88] + 9*input_data[103:96] + 2*input_data[111:104];
                output_data_nxt[95:88] = temp[11:4] + temp[3];

                // case 87:80
                temp[11:0] = 5*input_data[87:80] + 9*input_data[95:88] + 2*input_data[103:96];
                output_data_nxt[87:80] = temp[11:4] + temp[3];

                // case 79:72
                temp[11:0] = 5*input_data[79:72] + 9*input_data[87:80] + 2*input_data[95:88];
                output_data_nxt[79:72] = temp[11:4] + temp[3];

                // case 71:64
                temp[11:0] = 5*input_data[71:64] + 9*input_data[79:72] + 2*input_data[87:80];
                output_data_nxt[71:64] = temp[11:4] + temp[3];

                // case 63:56
                temp[11:0] = 5*input_data[63:56] + 9*input_data[71:64] + 2*input_data[79:72];
                output_data_nxt[63:56] = temp[11:4] + temp[3];

                // case 55:48
                temp[11:0] = 5*input_data[55:48] + 9*input_data[63:56] + 2*input_data[71:64];
                output_data_nxt[55:48] = temp[11:4] + temp[3];

                // case 47:40
                temp[11:0] = 5*input_data[47:40] + 9*input_data[55:48] + 2*input_data[63:56];
                output_data_nxt[47:40] = temp[11:4] + temp[3];

                // case 39:32
                temp[11:0] = 5*input_data[39:32] + 9*input_data[47:40] + 2*input_data[55:48];
                output_data_nxt[39:32] = temp[11:4] + temp[3];

                // case 31:24
                temp[11:0] = 5*input_data[31:24] + 9*input_data[39:32] + 2*input_data[47:40];
                output_data_nxt[31:24] = temp[11:4] + temp[3];

                // case 23:16
                temp[11:0] = 5*input_data[23:16] + 9*input_data[31:24] + 2*input_data[39:32];
                output_data_nxt[23:16] = temp[11:4] + temp[3];

                // case 15:8
                temp[11:0] = 5*input_data[15:8] + 9*input_data[23:16] + 2*input_data[31:24];
                output_data_nxt[15:8] = temp[11:4] + temp[3];

                // case 7:0
                temp[11:0] = 5*input_data[7:0] + 9*input_data[15:8] + 2*input_data[23:16];
                output_data_nxt[7:0] = temp[11:4] + temp[3];
            end
        end
        S_WRITE: begin
            o_busy_nxt = 1'b0;
        end
    endcase
end
// Todo: output valid signal
always @(*) begin
    case(state)
        S_IDLE : o_valid_nxt = 0;
        S_READ : o_valid_nxt = 0;
        S_CALCULATION : o_valid_nxt = 1;
        S_WRITE : o_valid_nxt = 0;  
        default : o_valid_nxt = 0;
    endcase
end

// Sequential always block
    always @(posedge clk or rst) begin
        if (rst) begin
            state       <= S_IDLE;
            input_data  <= 0;
            output_data <= 0;
            o_busy      <= 1;
            counter     <= 14;
            o_valid     <= 0;
        end
        else begin
            state       <= state_nxt;
            input_data  <= input_data_nxt;
            output_data <= output_data_nxt;
            o_busy      <= o_busy_nxt;
            counter     <= counter_nxt;
            o_valid     <= o_valid_nxt;
        end
    end

endmodule