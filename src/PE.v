//Initial markup for brainstorming, will likely not reflect final design

module pe (
    input clk,
    input [7:0] activation,
    input [17:0] input_sum,
    input [1:0] state,
    // input reset,
    output reg [7:0] relay,
    output reg [17:0] output_sum
);

    reg [7:0] weight;

    always @(posedge clk) begin
        if (state == 2'b00) begin
            output_sum = 18'd0;
            relay = activation;
        end
        else if (state == 2'b01) begin
            output_sum = 18'd0;
            relay = 8'd0;
            weight = activation;
        end
        else begin //Typical MAC computation
            output_sum = input_sum + (activation * weight);
            relay = activation;
        end
    end


endmodule