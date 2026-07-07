module mac (
    input wire signed [7:0] activation,
    input wire signed [7:0] weight,
    input wire signed [17:0] in_sum,
    output signed [17:0] out_sum
);
    wire signed [17:0] product;

    assign product = activation * weight;

    assign out_sum = in_sum + product;

endmodule