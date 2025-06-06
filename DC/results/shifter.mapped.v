/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Tue Jun  3 15:11:39 2025
/////////////////////////////////////////////////////////////


module shifter ( Clock, Reset, Direction, Shift_Amount, Data_In, Data_Out );
  input [2:0] Shift_Amount;
  input [7:0] Data_In;
  output [7:0] Data_Out;
  input Clock, Reset, Direction;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227;

  DFFARX1_RVT \Data_Out_reg[7]  ( .D(N28), .CLK(Clock), .RSTB(n112), .Q(
        Data_Out[7]) );
  DFFARX1_RVT \Data_Out_reg[6]  ( .D(N27), .CLK(Clock), .RSTB(n112), .Q(
        Data_Out[6]) );
  DFFARX1_RVT \Data_Out_reg[5]  ( .D(N26), .CLK(Clock), .RSTB(n112), .Q(
        Data_Out[5]) );
  DFFARX1_RVT \Data_Out_reg[4]  ( .D(N25), .CLK(Clock), .RSTB(n112), .Q(
        Data_Out[4]) );
  DFFARX1_RVT \Data_Out_reg[3]  ( .D(N24), .CLK(Clock), .RSTB(n112), .Q(
        Data_Out[3]) );
  DFFARX1_RVT \Data_Out_reg[2]  ( .D(N23), .CLK(Clock), .RSTB(n112), .Q(
        Data_Out[2]) );
  DFFARX1_RVT \Data_Out_reg[1]  ( .D(N22), .CLK(Clock), .RSTB(n112), .Q(
        Data_Out[1]) );
  DFFARX1_RVT \Data_Out_reg[0]  ( .D(N21), .CLK(Clock), .RSTB(n112), .Q(
        Data_Out[0]) );
  INVX0_RVT U123 ( .A(Data_In[1]), .Y(n113) );
  INVX0_RVT U124 ( .A(n113), .Y(n114) );
  INVX0_RVT U125 ( .A(Data_In[0]), .Y(n115) );
  INVX0_RVT U126 ( .A(n115), .Y(n116) );
  INVX0_RVT U127 ( .A(Data_In[2]), .Y(n117) );
  INVX0_RVT U128 ( .A(n117), .Y(n118) );
  INVX0_RVT U129 ( .A(Data_In[3]), .Y(n119) );
  INVX0_RVT U130 ( .A(n119), .Y(n120) );
  INVX0_RVT U131 ( .A(Data_In[7]), .Y(n121) );
  INVX0_RVT U132 ( .A(n121), .Y(n122) );
  INVX0_RVT U133 ( .A(Data_In[4]), .Y(n123) );
  INVX0_RVT U134 ( .A(n123), .Y(n124) );
  INVX0_RVT U135 ( .A(Data_In[5]), .Y(n125) );
  INVX0_RVT U136 ( .A(n125), .Y(n126) );
  INVX0_RVT U137 ( .A(Data_In[6]), .Y(n127) );
  INVX0_RVT U138 ( .A(n127), .Y(n128) );
  INVX0_RVT U139 ( .A(Shift_Amount[2]), .Y(n129) );
  INVX0_RVT U140 ( .A(n129), .Y(n130) );
  INVX0_RVT U141 ( .A(Direction), .Y(n131) );
  INVX0_RVT U142 ( .A(n131), .Y(n132) );
  INVX0_RVT U143 ( .A(Shift_Amount[0]), .Y(n133) );
  INVX0_RVT U144 ( .A(n133), .Y(n134) );
  INVX0_RVT U145 ( .A(n133), .Y(n135) );
  INVX0_RVT U146 ( .A(Shift_Amount[1]), .Y(n136) );
  INVX0_RVT U147 ( .A(n136), .Y(n137) );
  INVX0_RVT U148 ( .A(n136), .Y(n138) );
  INVX1_RVT U149 ( .A(n137), .Y(n225) );
  INVX0_RVT U150 ( .A(n130), .Y(n139) );
  INVX0_RVT U151 ( .A(n132), .Y(n140) );
  INVX1_RVT U152 ( .A(n134), .Y(n220) );
  INVX0_RVT U153 ( .A(Reset), .Y(n112) );
  AND3X1_RVT U154 ( .A1(n132), .A2(n220), .A3(n139), .Y(n187) );
  AND3X1_RVT U155 ( .A1(n138), .A2(n118), .A3(n187), .Y(n151) );
  AND4X1_RVT U156 ( .A1(n116), .A2(n225), .A3(n220), .A4(n139), .Y(n150) );
  AND2X1_RVT U157 ( .A1(n132), .A2(n130), .Y(n185) );
  AND3X1_RVT U158 ( .A1(n135), .A2(n126), .A3(n225), .Y(n145) );
  AND3X1_RVT U159 ( .A1(n124), .A2(n225), .A3(n220), .Y(n144) );
  AND2X1_RVT U160 ( .A1(n135), .A2(n122), .Y(n142) );
  AND2X1_RVT U161 ( .A1(n128), .A2(n220), .Y(n141) );
  OR2X1_RVT U162 ( .A1(n142), .A2(n141), .Y(n208) );
  AND2X1_RVT U163 ( .A1(n137), .A2(n208), .Y(n143) );
  OR3X1_RVT U164 ( .A1(n145), .A2(n144), .A3(n143), .Y(n195) );
  AND2X1_RVT U165 ( .A1(n185), .A2(n195), .Y(n149) );
  AND3X1_RVT U166 ( .A1(n132), .A2(n135), .A3(n139), .Y(n179) );
  AND2X1_RVT U167 ( .A1(n137), .A2(n120), .Y(n147) );
  AND2X1_RVT U168 ( .A1(n114), .A2(n225), .Y(n146) );
  OR2X1_RVT U169 ( .A1(n147), .A2(n146), .Y(n155) );
  AND2X1_RVT U170 ( .A1(n179), .A2(n155), .Y(n148) );
  OR4X1_RVT U171 ( .A1(n151), .A2(n150), .A3(n149), .A4(n148), .Y(N21) );
  AND3X1_RVT U172 ( .A1(n128), .A2(n134), .A3(n225), .Y(n154) );
  AND3X1_RVT U173 ( .A1(n138), .A2(n122), .A3(n220), .Y(n153) );
  AND3X1_RVT U174 ( .A1(n126), .A2(n225), .A3(n220), .Y(n152) );
  OR3X1_RVT U175 ( .A1(n154), .A2(n153), .A3(n152), .Y(n203) );
  AND2X1_RVT U176 ( .A1(n185), .A2(n203), .Y(n163) );
  AND2X1_RVT U177 ( .A1(n187), .A2(n155), .Y(n162) );
  AND2X1_RVT U178 ( .A1(n138), .A2(n124), .Y(n157) );
  AND2X1_RVT U179 ( .A1(n118), .A2(n225), .Y(n156) );
  OR2X1_RVT U180 ( .A1(n157), .A2(n156), .Y(n169) );
  AND2X1_RVT U181 ( .A1(n179), .A2(n169), .Y(n161) );
  AND2X1_RVT U182 ( .A1(n140), .A2(n139), .Y(n219) );
  AND2X1_RVT U183 ( .A1(n134), .A2(n116), .Y(n159) );
  AND2X1_RVT U184 ( .A1(n114), .A2(n220), .Y(n158) );
  OR2X1_RVT U185 ( .A1(n159), .A2(n158), .Y(n199) );
  AND2X1_RVT U186 ( .A1(n219), .A2(n199), .Y(n176) );
  AND2X1_RVT U187 ( .A1(n176), .A2(n225), .Y(n160) );
  OR4X1_RVT U188 ( .A1(n163), .A2(n162), .A3(n161), .A4(n160), .Y(N22) );
  AND4X1_RVT U189 ( .A1(n137), .A2(n116), .A3(n219), .A4(n220), .Y(n175) );
  AND2X1_RVT U190 ( .A1(n185), .A2(n208), .Y(n167) );
  AND2X1_RVT U191 ( .A1(n134), .A2(n114), .Y(n165) );
  AND2X1_RVT U192 ( .A1(n118), .A2(n220), .Y(n164) );
  OR2X1_RVT U193 ( .A1(n165), .A2(n164), .Y(n209) );
  AND2X1_RVT U194 ( .A1(n219), .A2(n209), .Y(n166) );
  OR2X1_RVT U195 ( .A1(n167), .A2(n166), .Y(n168) );
  AND2X1_RVT U196 ( .A1(n225), .A2(n168), .Y(n174) );
  AND2X1_RVT U197 ( .A1(n187), .A2(n169), .Y(n173) );
  AND2X1_RVT U198 ( .A1(n138), .A2(n126), .Y(n171) );
  AND2X1_RVT U199 ( .A1(n120), .A2(n225), .Y(n170) );
  OR2X1_RVT U200 ( .A1(n171), .A2(n170), .Y(n186) );
  AND2X1_RVT U201 ( .A1(n179), .A2(n186), .Y(n172) );
  OR4X1_RVT U202 ( .A1(n175), .A2(n174), .A3(n173), .A4(n172), .Y(N23) );
  AND2X1_RVT U203 ( .A1(n128), .A2(n179), .Y(n177) );
  OR2X1_RVT U204 ( .A1(n177), .A2(n176), .Y(n178) );
  AND2X1_RVT U205 ( .A1(n137), .A2(n178), .Y(n191) );
  AND2X1_RVT U206 ( .A1(n179), .A2(n124), .Y(n183) );
  AND2X1_RVT U207 ( .A1(n135), .A2(n118), .Y(n181) );
  AND2X1_RVT U208 ( .A1(n120), .A2(n220), .Y(n180) );
  OR2X1_RVT U209 ( .A1(n181), .A2(n180), .Y(n218) );
  AND2X1_RVT U210 ( .A1(n219), .A2(n218), .Y(n182) );
  OR2X1_RVT U211 ( .A1(n183), .A2(n182), .Y(n184) );
  AND2X1_RVT U212 ( .A1(n225), .A2(n184), .Y(n190) );
  AND4X1_RVT U213 ( .A1(n122), .A2(n185), .A3(n225), .A4(n220), .Y(n189) );
  AND2X1_RVT U214 ( .A1(n187), .A2(n186), .Y(n188) );
  OR4X1_RVT U215 ( .A1(n191), .A2(n190), .A3(n189), .A4(n188), .Y(N24) );
  AND3X1_RVT U216 ( .A1(n134), .A2(n120), .A3(n139), .Y(n194) );
  AND3X1_RVT U217 ( .A1(n130), .A2(n116), .A3(n220), .Y(n193) );
  AND3X1_RVT U218 ( .A1(n124), .A2(n220), .A3(n139), .Y(n192) );
  OR3X1_RVT U219 ( .A1(n194), .A2(n193), .A3(n192), .Y(n207) );
  AND3X1_RVT U220 ( .A1(n225), .A2(n140), .A3(n207), .Y(n198) );
  AND3X1_RVT U221 ( .A1(n219), .A2(n137), .A3(n209), .Y(n197) );
  AND3X1_RVT U222 ( .A1(n132), .A2(n139), .A3(n195), .Y(n196) );
  OR3X1_RVT U223 ( .A1(n198), .A2(n197), .A3(n196), .Y(N25) );
  AND3X1_RVT U224 ( .A1(n135), .A2(n124), .A3(n139), .Y(n202) );
  AND3X1_RVT U225 ( .A1(n126), .A2(n220), .A3(n139), .Y(n201) );
  AND2X1_RVT U226 ( .A1(n130), .A2(n199), .Y(n200) );
  OR3X1_RVT U227 ( .A1(n202), .A2(n201), .A3(n200), .Y(n217) );
  AND3X1_RVT U228 ( .A1(n225), .A2(n140), .A3(n217), .Y(n206) );
  AND3X1_RVT U229 ( .A1(n219), .A2(n138), .A3(n218), .Y(n205) );
  AND3X1_RVT U230 ( .A1(n132), .A2(n139), .A3(n203), .Y(n204) );
  OR3X1_RVT U231 ( .A1(n206), .A2(n205), .A3(n204), .Y(N26) );
  AND3X1_RVT U232 ( .A1(n138), .A2(n140), .A3(n207), .Y(n216) );
  AND4X1_RVT U233 ( .A1(n132), .A2(n225), .A3(n139), .A4(n208), .Y(n215) );
  AND3X1_RVT U234 ( .A1(n134), .A2(n126), .A3(n139), .Y(n212) );
  AND3X1_RVT U235 ( .A1(n128), .A2(n220), .A3(n139), .Y(n211) );
  AND2X1_RVT U236 ( .A1(n130), .A2(n209), .Y(n210) );
  OR3X1_RVT U237 ( .A1(n212), .A2(n211), .A3(n210), .Y(n213) );
  AND3X1_RVT U238 ( .A1(n225), .A2(n140), .A3(n213), .Y(n214) );
  OR3X1_RVT U239 ( .A1(n216), .A2(n215), .A3(n214), .Y(N27) );
  AND3X1_RVT U240 ( .A1(n140), .A2(n137), .A3(n217), .Y(n227) );
  AND3X1_RVT U241 ( .A1(n130), .A2(n140), .A3(n218), .Y(n223) );
  AND3X1_RVT U242 ( .A1(n128), .A2(n135), .A3(n219), .Y(n222) );
  AND3X1_RVT U243 ( .A1(n122), .A2(n220), .A3(n139), .Y(n221) );
  OR3X1_RVT U244 ( .A1(n223), .A2(n222), .A3(n221), .Y(n224) );
  AND2X1_RVT U245 ( .A1(n225), .A2(n224), .Y(n226) );
  OR2X1_RVT U246 ( .A1(n227), .A2(n226), .Y(N28) );
endmodule

