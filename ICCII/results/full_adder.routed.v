// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/2/2025 at 9:42:0
// Library Name: 8BIT_SHIFTER_LIB
// Block Name: 8bit_shifter
// User Label: 
// Write Command: write_verilog ./results/full_adder.routed.v
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
DFFARX1_RVT \Data_Out_reg[1] ( .D ( N22 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[1] ) ) ;
DFFARX1_RVT \Data_Out_reg[0] ( .D ( N21 ) , .CLK ( ctosc_drc_0 ) , 
    .RSTB ( HFSNET_0 ) , .Q ( Data_Out[0] ) ) ;
INVX4_RVT HFSINV_240_0 ( .A ( Reset ) , .Y ( HFSNET_0 ) ) ;
INVX4_RVT HFSINV_367_1 ( .A ( Direction ) , .Y ( HFSNET_1 ) ) ;
INVX4_RVT HFSINV_748_2 ( .A ( Shift_Amount[2] ) , .Y ( HFSNET_2 ) ) ;
INVX4_RVT HFSINV_1127_3 ( .A ( Shift_Amount[0] ) , .Y ( HFSNET_3 ) ) ;
AND3X1_RVT U127 ( .A1 ( Direction ) , .A2 ( Shift_Amount[0] ) , 
    .A3 ( HFSNET_2 ) , .Y ( n185 ) ) ;
INVX4_RVT HFSINV_1381_4 ( .A ( Shift_Amount[1] ) , .Y ( HFSNET_4 ) ) ;
NBUFFX8_RVT ctosc_drc_inst_340 ( .A ( ctosc_drc_1 ) , .Y ( ctosc_drc_0 ) ) ;
NBUFFX16_RVT ctosc_drc_inst_431 ( .A ( Clock ) , .Y ( ctosc_drc_1 ) ) ;
INVX0_RVT ctmTdsLR_1_434 ( .A ( tmp_net2 ) , .Y ( N21 ) ) ;
OR3X1_RVT U132 ( .A1 ( n196 ) , .A2 ( n195 ) , .A3 ( n194 ) , .Y ( N25 ) ) ;
OR3X1_RVT U133 ( .A1 ( n204 ) , .A2 ( n203 ) , .A3 ( n202 ) , .Y ( N26 ) ) ;
OR3X1_RVT U134 ( .A1 ( n214 ) , .A2 ( n213 ) , .A3 ( n212 ) , .Y ( N27 ) ) ;
OR3X1_RVT U135 ( .A1 ( n222 ) , .A2 ( n221 ) , .A3 ( n220 ) , .Y ( n223 ) ) ;
OR3X1_RVT U136 ( .A1 ( n200 ) , .A2 ( n199 ) , .A3 ( n198 ) , .Y ( n215 ) ) ;
OR3X1_RVT U137 ( .A1 ( n158 ) , .A2 ( n157 ) , .A3 ( n156 ) , .Y ( n193 ) ) ;
OR3X1_RVT U138 ( .A1 ( n210 ) , .A2 ( n209 ) , .A3 ( n208 ) , .Y ( n211 ) ) ;
OR3X1_RVT U139 ( .A1 ( n167 ) , .A2 ( n166 ) , .A3 ( n165 ) , .Y ( n201 ) ) ;
OR3X1_RVT U140 ( .A1 ( n192 ) , .A2 ( n191 ) , .A3 ( n190 ) , .Y ( n205 ) ) ;
NOR4X1_RVT ctmTdsLR_2_435 ( .A1 ( n163 ) , .A2 ( n164 ) , .A3 ( n161 ) , 
    .A4 ( n162 ) , .Y ( tmp_net2 ) ) ;
INVX0_RVT ctmTdsLR_1_438 ( .A ( tmp_net3 ) , .Y ( N24 ) ) ;
NOR4X1_RVT ctmTdsLR_2_439 ( .A1 ( n150 ) , .A2 ( n151 ) , .A3 ( n152 ) , 
    .A4 ( n153 ) , .Y ( tmp_net3 ) ) ;
AND2X1_RVT U163 ( .A1 ( Data_In[6] ) , .A2 ( n185 ) , .Y ( n141 ) ) ;
AND2X1_RVT U164 ( .A1 ( HFSNET_1 ) , .A2 ( HFSNET_2 ) , .Y ( n217 ) ) ;
AND2X1_RVT U165 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[0] ) , .Y ( n140 ) ) ;
AND2X1_RVT U166 ( .A1 ( Data_In[1] ) , .A2 ( HFSNET_3 ) , .Y ( n139 ) ) ;
OR2X1_RVT U167 ( .A1 ( n140 ) , .A2 ( n139 ) , .Y ( n197 ) ) ;
AND2X1_RVT U168 ( .A1 ( n217 ) , .A2 ( n197 ) , .Y ( n171 ) ) ;
OR2X1_RVT U169 ( .A1 ( n141 ) , .A2 ( n171 ) , .Y ( n142 ) ) ;
AND2X1_RVT U170 ( .A1 ( Shift_Amount[1] ) , .A2 ( n142 ) , .Y ( n153 ) ) ;
AND2X1_RVT U171 ( .A1 ( n185 ) , .A2 ( Data_In[4] ) , .Y ( n146 ) ) ;
AND2X1_RVT U172 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[2] ) , .Y ( n144 ) ) ;
AND2X1_RVT U173 ( .A1 ( Data_In[3] ) , .A2 ( HFSNET_3 ) , .Y ( n143 ) ) ;
OR2X1_RVT U174 ( .A1 ( n144 ) , .A2 ( n143 ) , .Y ( n216 ) ) ;
AND2X1_RVT U175 ( .A1 ( n217 ) , .A2 ( n216 ) , .Y ( n145 ) ) ;
OR2X1_RVT U176 ( .A1 ( n146 ) , .A2 ( n145 ) , .Y ( n147 ) ) ;
AND2X1_RVT U177 ( .A1 ( HFSNET_4 ) , .A2 ( n147 ) , .Y ( n152 ) ) ;
AND2X1_RVT U178 ( .A1 ( Direction ) , .A2 ( Shift_Amount[2] ) , .Y ( n176 ) ) ;
AND4X1_RVT U179 ( .A1 ( Data_In[7] ) , .A2 ( n176 ) , .A3 ( HFSNET_4 ) , 
    .A4 ( HFSNET_3 ) , .Y ( n151 ) ) ;
AND3X1_RVT U180 ( .A1 ( Direction ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n183 ) ) ;
AND2X1_RVT U181 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[5] ) , .Y ( n149 ) ) ;
AND2X1_RVT U182 ( .A1 ( Data_In[3] ) , .A2 ( HFSNET_4 ) , .Y ( n148 ) ) ;
OR2X1_RVT U183 ( .A1 ( n149 ) , .A2 ( n148 ) , .Y ( n184 ) ) ;
AND2X1_RVT U184 ( .A1 ( n183 ) , .A2 ( n184 ) , .Y ( n150 ) ) ;
AND3X1_RVT U186 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[2] ) , 
    .A3 ( n183 ) , .Y ( n164 ) ) ;
AND4X1_RVT U187 ( .A1 ( Data_In[0] ) , .A2 ( HFSNET_4 ) , .A3 ( HFSNET_2 ) , 
    .A4 ( HFSNET_3 ) , .Y ( n163 ) ) ;
AND3X1_RVT U188 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[5] ) , 
    .A3 ( HFSNET_4 ) , .Y ( n158 ) ) ;
AND3X1_RVT U189 ( .A1 ( Data_In[4] ) , .A2 ( HFSNET_4 ) , .A3 ( HFSNET_3 ) , 
    .Y ( n157 ) ) ;
AND2X1_RVT U190 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[7] ) , .Y ( n155 ) ) ;
AND2X1_RVT U191 ( .A1 ( Data_In[6] ) , .A2 ( HFSNET_3 ) , .Y ( n154 ) ) ;
OR2X1_RVT U192 ( .A1 ( n155 ) , .A2 ( n154 ) , .Y ( n206 ) ) ;
AND2X1_RVT U193 ( .A1 ( Shift_Amount[1] ) , .A2 ( n206 ) , .Y ( n156 ) ) ;
AND2X1_RVT U194 ( .A1 ( n176 ) , .A2 ( n193 ) , .Y ( n162 ) ) ;
AND2X1_RVT U195 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[3] ) , .Y ( n160 ) ) ;
AND2X1_RVT U196 ( .A1 ( Data_In[1] ) , .A2 ( HFSNET_4 ) , .Y ( n159 ) ) ;
OR2X1_RVT U197 ( .A1 ( n160 ) , .A2 ( n159 ) , .Y ( n168 ) ) ;
AND2X1_RVT U198 ( .A1 ( n185 ) , .A2 ( n168 ) , .Y ( n161 ) ) ;
AND3X1_RVT U200 ( .A1 ( Data_In[6] ) , .A2 ( Shift_Amount[0] ) , 
    .A3 ( HFSNET_4 ) , .Y ( n167 ) ) ;
AND3X1_RVT U201 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[7] ) , 
    .A3 ( HFSNET_3 ) , .Y ( n166 ) ) ;
AND3X1_RVT U202 ( .A1 ( Data_In[5] ) , .A2 ( HFSNET_4 ) , .A3 ( HFSNET_3 ) , 
    .Y ( n165 ) ) ;
AND2X1_RVT U203 ( .A1 ( n176 ) , .A2 ( n201 ) , .Y ( n175 ) ) ;
AND2X1_RVT U204 ( .A1 ( n183 ) , .A2 ( n168 ) , .Y ( n174 ) ) ;
AND2X1_RVT U205 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[4] ) , .Y ( n170 ) ) ;
AND2X1_RVT U206 ( .A1 ( Data_In[2] ) , .A2 ( HFSNET_4 ) , .Y ( n169 ) ) ;
OR2X1_RVT U207 ( .A1 ( n170 ) , .A2 ( n169 ) , .Y ( n182 ) ) ;
AND2X1_RVT U208 ( .A1 ( n185 ) , .A2 ( n182 ) , .Y ( n173 ) ) ;
AND2X1_RVT U209 ( .A1 ( n171 ) , .A2 ( HFSNET_4 ) , .Y ( n172 ) ) ;
OR4X1_RVT U210 ( .A1 ( n175 ) , .A2 ( n174 ) , .A3 ( n173 ) , .A4 ( n172 ) , 
    .Y ( N22 ) ) ;
AND4X1_RVT U211 ( .A1 ( Shift_Amount[1] ) , .A2 ( Data_In[0] ) , 
    .A3 ( n217 ) , .A4 ( HFSNET_3 ) , .Y ( n189 ) ) ;
AND2X1_RVT U212 ( .A1 ( n176 ) , .A2 ( n206 ) , .Y ( n180 ) ) ;
AND2X1_RVT U213 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[1] ) , .Y ( n178 ) ) ;
AND2X1_RVT U214 ( .A1 ( Data_In[2] ) , .A2 ( HFSNET_3 ) , .Y ( n177 ) ) ;
OR2X1_RVT U215 ( .A1 ( n178 ) , .A2 ( n177 ) , .Y ( n207 ) ) ;
AND2X1_RVT U216 ( .A1 ( n217 ) , .A2 ( n207 ) , .Y ( n179 ) ) ;
OR2X1_RVT U217 ( .A1 ( n180 ) , .A2 ( n179 ) , .Y ( n181 ) ) ;
AND2X1_RVT U218 ( .A1 ( HFSNET_4 ) , .A2 ( n181 ) , .Y ( n188 ) ) ;
AND2X1_RVT U219 ( .A1 ( n183 ) , .A2 ( n182 ) , .Y ( n187 ) ) ;
AND2X1_RVT U220 ( .A1 ( n185 ) , .A2 ( n184 ) , .Y ( n186 ) ) ;
OR4X1_RVT U221 ( .A1 ( n189 ) , .A2 ( n188 ) , .A3 ( n187 ) , .A4 ( n186 ) , 
    .Y ( N23 ) ) ;
AND3X1_RVT U222 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[3] ) , 
    .A3 ( HFSNET_2 ) , .Y ( n192 ) ) ;
AND3X1_RVT U223 ( .A1 ( Shift_Amount[2] ) , .A2 ( Data_In[0] ) , 
    .A3 ( HFSNET_3 ) , .Y ( n191 ) ) ;
AND3X1_RVT U224 ( .A1 ( Data_In[4] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n190 ) ) ;
AND3X1_RVT U225 ( .A1 ( HFSNET_4 ) , .A2 ( HFSNET_1 ) , .A3 ( n205 ) , 
    .Y ( n196 ) ) ;
AND3X1_RVT U226 ( .A1 ( n217 ) , .A2 ( Shift_Amount[1] ) , .A3 ( n207 ) , 
    .Y ( n195 ) ) ;
AND3X1_RVT U227 ( .A1 ( Direction ) , .A2 ( HFSNET_2 ) , .A3 ( n193 ) , 
    .Y ( n194 ) ) ;
AND3X1_RVT U228 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[4] ) , 
    .A3 ( HFSNET_2 ) , .Y ( n200 ) ) ;
AND3X1_RVT U229 ( .A1 ( Data_In[5] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n199 ) ) ;
AND2X1_RVT U230 ( .A1 ( Shift_Amount[2] ) , .A2 ( n197 ) , .Y ( n198 ) ) ;
AND3X1_RVT U231 ( .A1 ( HFSNET_4 ) , .A2 ( HFSNET_1 ) , .A3 ( n215 ) , 
    .Y ( n204 ) ) ;
AND3X1_RVT U232 ( .A1 ( n217 ) , .A2 ( Shift_Amount[1] ) , .A3 ( n216 ) , 
    .Y ( n203 ) ) ;
AND3X1_RVT U233 ( .A1 ( Direction ) , .A2 ( HFSNET_2 ) , .A3 ( n201 ) , 
    .Y ( n202 ) ) ;
AND3X1_RVT U234 ( .A1 ( Shift_Amount[1] ) , .A2 ( HFSNET_1 ) , .A3 ( n205 ) , 
    .Y ( n214 ) ) ;
AND4X1_RVT U235 ( .A1 ( Direction ) , .A2 ( HFSNET_4 ) , .A3 ( HFSNET_2 ) , 
    .A4 ( n206 ) , .Y ( n213 ) ) ;
AND3X1_RVT U236 ( .A1 ( Shift_Amount[0] ) , .A2 ( Data_In[5] ) , 
    .A3 ( HFSNET_2 ) , .Y ( n210 ) ) ;
AND3X1_RVT U237 ( .A1 ( Data_In[6] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n209 ) ) ;
AND2X1_RVT U238 ( .A1 ( Shift_Amount[2] ) , .A2 ( n207 ) , .Y ( n208 ) ) ;
AND3X1_RVT U239 ( .A1 ( HFSNET_4 ) , .A2 ( HFSNET_1 ) , .A3 ( n211 ) , 
    .Y ( n212 ) ) ;
AND3X1_RVT U240 ( .A1 ( HFSNET_1 ) , .A2 ( Shift_Amount[1] ) , .A3 ( n215 ) , 
    .Y ( n226 ) ) ;
AND3X1_RVT U241 ( .A1 ( Shift_Amount[2] ) , .A2 ( HFSNET_1 ) , .A3 ( n216 ) , 
    .Y ( n222 ) ) ;
AND3X1_RVT U242 ( .A1 ( Data_In[6] ) , .A2 ( Shift_Amount[0] ) , 
    .A3 ( n217 ) , .Y ( n221 ) ) ;
AND3X1_RVT U243 ( .A1 ( Data_In[7] ) , .A2 ( HFSNET_3 ) , .A3 ( HFSNET_2 ) , 
    .Y ( n220 ) ) ;
AND2X1_RVT U244 ( .A1 ( HFSNET_4 ) , .A2 ( n223 ) , .Y ( n225 ) ) ;
OR2X1_RVT U245 ( .A1 ( n226 ) , .A2 ( n225 ) , .Y ( N28 ) ) ;
endmodule


