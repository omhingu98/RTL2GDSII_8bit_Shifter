// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/3/2025 at 14:30:20
// Library Name: 8BIT_SHIFTER_LIB
// Block Name: 8bit_shifter
// User Label: 
// Write Command: write_verilog ./results/8bit_shifter.routed.v
module shifter ( Clock , Reset , Direction , Shift_Amount , Data_In , 
    Data_Out ) ;
input  Clock ;
input  Reset ;
input  Direction ;
input  [2:0] Shift_Amount ;
input  [7:0] Data_In ;
output [7:0] Data_Out ;

DFFARX1_RVT \Data_Out_reg[7] ( .D ( N28 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[7] ) ) ;
DFFARX1_RVT \Data_Out_reg[6] ( .D ( N27 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[6] ) ) ;
DFFARX1_RVT \Data_Out_reg[5] ( .D ( N26 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[5] ) ) ;
DFFARX1_RVT \Data_Out_reg[4] ( .D ( N25 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[4] ) ) ;
DFFARX1_RVT \Data_Out_reg[3] ( .D ( N24 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[3] ) ) ;
DFFARX1_RVT \Data_Out_reg[2] ( .D ( N23 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[2] ) ) ;
DFFARX1_RVT \Data_Out_reg[0] ( .D ( N21 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[0] ) ) ;
DFFASRX1_RVT \Data_Out_reg[1] ( .D ( N22 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .SETB ( 1'b1 ) , .Q ( Data_Out[1] ) ) ;
INVX2_RVT HFSINV_232_0 ( .A ( Reset ) , .Y ( HFSNET_0 ) ) ;
INVX0_RVT HFSINV_350_1 ( .A ( Direction ) , .Y ( HFSNET_1 ) ) ;
INVX2_RVT HFSINV_653_2 ( .A ( Shift_Amount[2] ) , .Y ( HFSNET_2 ) ) ;
INVX2_RVT HFSINV_877_3 ( .A ( Shift_Amount[0] ) , .Y ( HFSNET_3 ) ) ;
INVX4_RVT HFSINV_1108_4 ( .A ( Shift_Amount[1] ) , .Y ( HFSNET_4 ) ) ;
NBUFFX8_RVT ctosc_drc_inst_340 ( .A ( ctosc_drc_1 ) , .Y ( ctosc_drc_0 ) ) ;
NBUFFX16_RVT ctosc_drc_inst_431 ( .A ( Clock ) , .Y ( ctosc_drc_1 ) ) ;
INVX0_RVT ctmTdsLR_1_432 ( .A ( tmp_net2 ) , .Y ( N21 ) ) ;
NOR4X1_RVT ctmTdsLR_2_433 ( .A1 ( n151 ) , .A2 ( n152 ) , .A3 ( n150 ) , 
    .A4 ( n153 ) , .Y ( tmp_net2 ) ) ;
INVX0_RVT ctmTdsLR_1_434 ( .A ( tmp_net3 ) , .Y ( N24 ) ) ;
NOR4X1_RVT ctmTdsLR_2_435 ( .A1 ( n190 ) , .A2 ( n191 ) , .A3 ( n192 ) , 
    .A4 ( n193 ) , .Y ( tmp_net3 ) ) ;
INVX0_RVT ctmTdsLR_1_436 ( .A ( tmp_net4 ) , .Y ( N23 ) ) ;
NOR4X1_RVT ctmTdsLR_2_437 ( .A1 ( n175 ) , .A2 ( n177 ) , .A3 ( n174 ) , 
    .A4 ( n176 ) , .Y ( tmp_net4 ) ) ;
INVX0_RVT ctmTdsLR_1_438 ( .A ( tmp_net5 ) , .Y ( N22 ) ) ;
NOR4X1_RVT ctmTdsLR_2_439 ( .A1 ( n164 ) , .A2 ( n165 ) , .A3 ( n162 ) , 
    .A4 ( n163 ) , .Y ( tmp_net5 ) ) ;
AND2X1_RVT U155 ( .A1 ( Direction ) , .A2 ( Shift_Amount[2] ) , .Y ( n187 ) ) ;
AND3X1_RVT U156 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[5] ) , 
    .A3 ( HFSNET_4 ) , .Y ( n147 ) ) ;
AND3X1_RVT U157 ( .A1 ( Data_In[4] ) , .A2 ( HFSNET_4 ) , .A3 ( HFSNET_3 ) , 
    .Y ( n146 ) ) ;
AND2X1_RVT U158 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[7] ) , .Y ( n144 ) ) ;
AND2X1_RVT U159 ( .A1 ( Data_In[6] ) , .A2 ( HFSNET_3 ) , .Y ( n143 ) ) ;
OR2X1_RVT U160 ( .A1 ( n144 ) , .A2 ( n143 ) , .Y ( n210 ) ) ;
AND2X1_RVT U161 ( .A1 ( Shift_Amount[1] ) , .A2 ( n210 ) , .Y ( n145 ) ) ;
OR3X1_RVT U162 ( .A1 ( n147 ) , .A2 ( n146 ) , .A3 ( n145 ) , .Y ( n197 ) ) ;
AND2X1_RVT U163 ( .A1 ( n187 ) , .A2 ( n197 ) , .Y ( n153 ) ) ;
AND3X1_RVT U164 ( .A1 ( Direction ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n189 ) ) ;
AND3X1_RVT U165 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[2] ) , 
    .A3 ( n189 ) , .Y ( n152 ) ) ;
AND4X1_RVT U166 ( .A1 ( Data_In[0] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_4 ) , 
    .A4 ( HFSNET_2 ) , .Y ( n151 ) ) ;
AND3X1_RVT U167 ( .A1 ( Direction ) , .A2 ( Shift_Amount[0] ) , 
    .A3 ( HFSNET_2 ) , .Y ( n181 ) ) ;
AND2X1_RVT U168 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[3] ) , .Y ( n149 ) ) ;
AND2X1_RVT U169 ( .A1 ( Data_In[1] ) , .A2 ( HFSNET_4 ) , .Y ( n148 ) ) ;
OR2X1_RVT U170 ( .A1 ( n149 ) , .A2 ( n148 ) , .Y ( n156 ) ) ;
AND2X1_RVT U171 ( .A1 ( n181 ) , .A2 ( n156 ) , .Y ( n150 ) ) ;
AND2X1_RVT U173 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[4] ) , .Y ( n155 ) ) ;
AND2X1_RVT U174 ( .A1 ( Data_In[2] ) , .A2 ( HFSNET_4 ) , .Y ( n154 ) ) ;
OR2X1_RVT U175 ( .A1 ( n155 ) , .A2 ( n154 ) , .Y ( n171 ) ) ;
AND2X1_RVT U176 ( .A1 ( n181 ) , .A2 ( n171 ) , .Y ( n165 ) ) ;
AND2X1_RVT U177 ( .A1 ( n189 ) , .A2 ( n156 ) , .Y ( n164 ) ) ;
AND2X1_RVT U178 ( .A1 ( HFSNET_1 ) , .A2 ( HFSNET_2 ) , .Y ( n221 ) ) ;
AND2X1_RVT U179 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[0] ) , .Y ( n158 ) ) ;
AND2X1_RVT U180 ( .A1 ( Data_In[1] ) , .A2 ( HFSNET_3 ) , .Y ( n157 ) ) ;
OR2X1_RVT U181 ( .A1 ( n158 ) , .A2 ( n157 ) , .Y ( n201 ) ) ;
AND2X1_RVT U182 ( .A1 ( n221 ) , .A2 ( n201 ) , .Y ( n178 ) ) ;
AND2X1_RVT U183 ( .A1 ( n178 ) , .A2 ( HFSNET_4 ) , .Y ( n163 ) ) ;
AND3X1_RVT U184 ( .A1 ( Data_In[6] ) , .A2 ( Shift_Amount[0] ) , 
    .A3 ( HFSNET_4 ) , .Y ( n161 ) ) ;
AND3X1_RVT U185 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[7] ) , 
    .A3 ( HFSNET_3 ) , .Y ( n160 ) ) ;
AND3X1_RVT U186 ( .A1 ( Data_In[5] ) , .A2 ( HFSNET_4 ) , .A3 ( HFSNET_3 ) , 
    .Y ( n159 ) ) ;
OR3X1_RVT U187 ( .A1 ( n161 ) , .A2 ( n160 ) , .A3 ( n159 ) , .Y ( n205 ) ) ;
AND2X1_RVT U188 ( .A1 ( n187 ) , .A2 ( n205 ) , .Y ( n162 ) ) ;
AND4X1_RVT U190 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[0] ) , 
    .A3 ( n221 ) , .A4 ( HFSNET_3 ) , .Y ( n177 ) ) ;
AND2X1_RVT U191 ( .A1 ( n187 ) , .A2 ( n210 ) , .Y ( n169 ) ) ;
AND2X1_RVT U192 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[1] ) , .Y ( n167 ) ) ;
AND2X1_RVT U193 ( .A1 ( Data_In[2] ) , .A2 ( HFSNET_3 ) , .Y ( n166 ) ) ;
OR2X1_RVT U194 ( .A1 ( n167 ) , .A2 ( n166 ) , .Y ( n211 ) ) ;
AND2X1_RVT U195 ( .A1 ( n221 ) , .A2 ( n211 ) , .Y ( n168 ) ) ;
OR2X1_RVT U196 ( .A1 ( n169 ) , .A2 ( n168 ) , .Y ( n170 ) ) ;
AND2X1_RVT U197 ( .A1 ( HFSNET_4 ) , .A2 ( n170 ) , .Y ( n176 ) ) ;
AND2X1_RVT U198 ( .A1 ( n189 ) , .A2 ( n171 ) , .Y ( n175 ) ) ;
AND2X1_RVT U199 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[5] ) , .Y ( n173 ) ) ;
AND2X1_RVT U200 ( .A1 ( Data_In[3] ) , .A2 ( HFSNET_4 ) , .Y ( n172 ) ) ;
OR2X1_RVT U201 ( .A1 ( n173 ) , .A2 ( n172 ) , .Y ( n188 ) ) ;
AND2X1_RVT U202 ( .A1 ( n181 ) , .A2 ( n188 ) , .Y ( n174 ) ) ;
AND2X1_RVT U204 ( .A1 ( Data_In[6] ) , .A2 ( n181 ) , .Y ( n179 ) ) ;
OR2X1_RVT U205 ( .A1 ( n179 ) , .A2 ( n178 ) , .Y ( n180 ) ) ;
AND2X1_RVT U206 ( .A1 ( Shift_Amount[1] ) , .A2 ( n180 ) , .Y ( n193 ) ) ;
AND2X1_RVT U207 ( .A1 ( n181 ) , .A2 ( Data_In[4] ) , .Y ( n185 ) ) ;
AND2X1_RVT U208 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[2] ) , .Y ( n183 ) ) ;
AND2X1_RVT U209 ( .A1 ( Data_In[3] ) , .A2 ( HFSNET_3 ) , .Y ( n182 ) ) ;
OR2X1_RVT U210 ( .A1 ( n183 ) , .A2 ( n182 ) , .Y ( n220 ) ) ;
AND2X1_RVT U211 ( .A1 ( n221 ) , .A2 ( n220 ) , .Y ( n184 ) ) ;
OR2X1_RVT U212 ( .A1 ( n185 ) , .A2 ( n184 ) , .Y ( n186 ) ) ;
AND2X1_RVT U213 ( .A1 ( HFSNET_4 ) , .A2 ( n186 ) , .Y ( n192 ) ) ;
AND4X1_RVT U214 ( .A1 ( Data_In[7] ) , .A2 ( n187 ) , .A3 ( HFSNET_4 ) , 
    .A4 ( HFSNET_3 ) , .Y ( n191 ) ) ;
AND2X1_RVT U215 ( .A1 ( n189 ) , .A2 ( n188 ) , .Y ( n190 ) ) ;
AND3X1_RVT U217 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[3] ) , 
    .A3 ( HFSNET_2 ) , .Y ( n196 ) ) ;
AND3X1_RVT U218 ( .A1 ( Shift_Amount[2] ) , .A2 ( Data_In[0] ) , 
    .A3 ( HFSNET_3 ) , .Y ( n195 ) ) ;
AND3X1_RVT U219 ( .A1 ( Data_In[4] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n194 ) ) ;
OR3X1_RVT U220 ( .A1 ( n196 ) , .A2 ( n195 ) , .A3 ( n194 ) , .Y ( n209 ) ) ;
AND3X1_RVT U221 ( .A1 ( HFSNET_4 ) , .A2 ( HFSNET_1 ) , .A3 ( n209 ) , 
    .Y ( n200 ) ) ;
AND3X1_RVT U222 ( .A1 ( n221 ) , .A2 ( Shift_Amount[1] ) , .A3 ( n211 ) , 
    .Y ( n199 ) ) ;
AND3X1_RVT U223 ( .A1 ( Direction ) , .A2 ( HFSNET_2 ) , .A3 ( n197 ) , 
    .Y ( n198 ) ) ;
OR3X1_RVT U224 ( .A1 ( n200 ) , .A2 ( n199 ) , .A3 ( n198 ) , .Y ( N25 ) ) ;
AND3X1_RVT U225 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[4] ) , 
    .A3 ( HFSNET_2 ) , .Y ( n204 ) ) ;
AND3X1_RVT U226 ( .A1 ( Data_In[5] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n203 ) ) ;
AND2X1_RVT U227 ( .A1 ( Shift_Amount[2] ) , .A2 ( n201 ) , .Y ( n202 ) ) ;
OR3X1_RVT U228 ( .A1 ( n204 ) , .A2 ( n203 ) , .A3 ( n202 ) , .Y ( n219 ) ) ;
AND3X1_RVT U229 ( .A1 ( HFSNET_4 ) , .A2 ( HFSNET_1 ) , .A3 ( n219 ) , 
    .Y ( n208 ) ) ;
AND3X1_RVT U230 ( .A1 ( n221 ) , .A2 ( Shift_Amount[1] ) , .A3 ( n220 ) , 
    .Y ( n207 ) ) ;
AND3X1_RVT U231 ( .A1 ( Direction ) , .A2 ( HFSNET_2 ) , .A3 ( n205 ) , 
    .Y ( n206 ) ) ;
OR3X1_RVT U232 ( .A1 ( n208 ) , .A2 ( n207 ) , .A3 ( n206 ) , .Y ( N26 ) ) ;
AND3X1_RVT U233 ( .A1 ( Shift_Amount[1] ) , .A2 ( HFSNET_1 ) , .A3 ( n209 ) , 
    .Y ( n218 ) ) ;
AND4X1_RVT U234 ( .A1 ( Direction ) , .A2 ( HFSNET_4 ) , .A3 ( HFSNET_2 ) , 
    .A4 ( n210 ) , .Y ( n217 ) ) ;
AND3X1_RVT U235 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[5] ) , 
    .A3 ( HFSNET_2 ) , .Y ( n214 ) ) ;
AND3X1_RVT U236 ( .A1 ( Data_In[6] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n213 ) ) ;
AND2X1_RVT U237 ( .A1 ( Shift_Amount[2] ) , .A2 ( n211 ) , .Y ( n212 ) ) ;
OR3X1_RVT U238 ( .A1 ( n214 ) , .A2 ( n213 ) , .A3 ( n212 ) , .Y ( n215 ) ) ;
AND3X1_RVT U239 ( .A1 ( HFSNET_4 ) , .A2 ( HFSNET_1 ) , .A3 ( n215 ) , 
    .Y ( n216 ) ) ;
OR3X1_RVT U240 ( .A1 ( n218 ) , .A2 ( n217 ) , .A3 ( n216 ) , .Y ( N27 ) ) ;
AND3X1_RVT U241 ( .A1 ( HFSNET_1 ) , .A2 ( Shift_Amount[1] ) , .A3 ( n219 ) , 
    .Y ( n227 ) ) ;
AND3X1_RVT U242 ( .A1 ( Shift_Amount[2] ) , .A2 ( HFSNET_1 ) , .A3 ( n220 ) , 
    .Y ( n224 ) ) ;
AND3X1_RVT U243 ( .A1 ( Data_In[6] ) , .A2 ( Shift_Amount[0] ) , 
    .A3 ( n221 ) , .Y ( n223 ) ) ;
AND3X1_RVT U244 ( .A1 ( Data_In[7] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n222 ) ) ;
OR3X1_RVT U245 ( .A1 ( n224 ) , .A2 ( n223 ) , .A3 ( n222 ) , .Y ( n225 ) ) ;
AND2X1_RVT U246 ( .A1 ( HFSNET_4 ) , .A2 ( n225 ) , .Y ( n226 ) ) ;
OR2X1_RVT U247 ( .A1 ( n227 ) , .A2 ( n226 ) , .Y ( N28 ) ) ;
endmodule


