interface mac_intf #(parameter SUM_WIDTH = 32);
    logic signed [7:0] activation, weight;
    logic signed [SUM_WIDTH-1:0] in_sum;
    logic signed [SUM_WIDTH-1:0] out_sum;

    modport MASTER (
        output activation, weight, in_sum,
        input out_sum
    );

    modport SLAVE (
        input activation, weight, in_sum,
        output out_sum
    );

endinterface: mac_intf

module mac #(parameter SUM_WIDTH) (mac_intf.SLAVE in);
    logic signed [SUM_WIDTH-1:0] product;

    always_comb begin

        product = in.activation * in.weight;
        in.out_sum = in.in_sum + product;

    end

endmodule: mac
