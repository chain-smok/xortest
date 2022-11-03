module tbxor_test;
 wire tb_c;
 reg tb_a,tb_b;
 xor_test m(tb_c,tb_a,tb_b);
initial
begin
$monitor(tb_a,tb_b,tb_c);
 tb_a=1'b0;tb_b=1'b0;
#10 tb_a=1'b0;tb_b=1'b1;
#10 tb_a=1'b1;tb_b=1'b0;
#10 tb_a=1'b1;tb_b=1'b1;
end
initial #50 $finish;
endmodule


