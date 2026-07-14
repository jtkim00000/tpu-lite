interface mac_intf();
    input logic signed [7:0] activation, weight;
    input logic signed [31:0] in_sum;
    output logic signed [31:0] out_sum;
endinterface: mac_intf

module mac (mac_intf i);
    logic signed [31:0] product;

    always_comb begin

        product = intf.activation * intf.weight;
        out_sum = intf.in_sum + product;

    end

endmodule: mac
