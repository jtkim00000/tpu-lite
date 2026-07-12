module mac (
    input logic signed [7:0] activation,
    input logic signed [7:0] weight,
    input logic signed [31:0] in_sum,
    output logic signed [31:0] out_sum
);
    logic signed [31:0] product;

    always_comb begin

        product = activation * weight;

        out_sum = in_sum + product;
        
    end

endmodule