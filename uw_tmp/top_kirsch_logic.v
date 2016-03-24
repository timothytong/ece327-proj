//
// Verilog description for cell top_kirsch, 
// Wed Mar 23 21:05:42 2016
//
// Precision RTL Synthesis, 64-bit 2015.2.16//

//
// Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
// "modgen_sim" library, during the simulation run for this netlist
//

module top_kirsch_logic ( nrst, clk, rxflex, txflex, o_sevenseg, o_mode, o_nrst,                     debug_key, debug_switch, debug_led_red, debug_led_grn, 
                    debug_sevenseg_0, debug_sevenseg_1, debug_sevenseg_2, 
                    debug_sevenseg_3, debug_sevenseg_4, debug_sevenseg_5 ) ;

    input nrst ;
    input clk ;
    input rxflex ;
    output txflex ;
    output [15:0]o_sevenseg ;
    output [1:0]o_mode ;
    output o_nrst ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [16:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [7:0]debug_sevenseg_0 ;
    output [7:0]debug_sevenseg_1 ;
    output [7:0]debug_sevenseg_2 ;
    output [7:0]debug_sevenseg_3 ;
    output [7:0]debug_sevenseg_4 ;
    output [7:0]debug_sevenseg_5 ;

    wire pixavail;
    wire [7:0]pixel;
    wire o_valid, kirschout;
    wire [2:0]dir;
    wire [7:0]rowcount;
    wire rtlc1n224, rtlc1n225, rtlc1n228, rtlc1n230, rtlc1n232, rtlc1n233, 
         rtlc1n236, rtlc1n144, rtlc1n145, rtlc1n148, rtlc1n150, rtlc1n152, 
         rtlc1n153, rtlc1n156, not_rtlc1n224, not_rtlc1n225, not_rtlc1n233, 
         not_rtlc1n144, not_rtlc1n145, not_rtlc1n153, rtlcs0, rtlcs1, rtlcs2, 
         rtlcs3, rtlcs4, rtlcs5, rtlcs8, rtlcs9, rtlcs10, rtlcs11, rtlcs13, 
         rtlcs15, rtlcs16, rtlcs17, rtlcs18, rtlcs19, rtlcs20, rtlcs22, rtlcs23, 
         rtlcs24, rtlcs25, rtlcs27, rtlcs29, rtlcs31, rtlcs32, rtlcs33, rtlcs34, 
         rtlcs35, rtlcs36, rtlcs37, rtlcs40, rtlcs41, rtlcs42, rtlcs43, rtlcs45, 
         rtlcs47, rtlcs48, rtlcs49, rtlcs50, rtlcs51, rtlcs52, rtlcs54, rtlcs55, 
         rtlcs56, rtlcs57, rtlcs59, rtlcs61, rtlcs63, rtlcs256, rtlcs257, 
         not_rowcount_2, not_rowcount_0, not_rowcount_3, not_rowcount_1, 
         not_rowcount_6, not_rowcount_4, not_rowcount_7, not_rowcount_5, 
         rtlc_108_or_76_nx0, rtlc_170_or_82_nx0, rtlc_898_and_120_nx0, 
         rtlc_914_and_121_nx0, rtlc_937_and_122_nx0, rtlc_953_and_123_nx0;
    wire [68:0] xmplr_dummy ;




    assign o_sevenseg[15] = o_sevenseg[7] ;
    assign debug_led_red[15] = debug_led_red[16] ;
    assign debug_led_red[14] = debug_led_red[16] ;
    assign debug_led_red[13] = debug_led_red[16] ;
    assign debug_led_red[12] = debug_led_red[16] ;
    assign debug_led_red[11] = debug_led_red[16] ;
    assign debug_led_red[10] = debug_led_red[16] ;
    assign debug_led_red[9] = debug_led_red[16] ;
    assign debug_led_red[8] = debug_led_red[16] ;
    assign debug_led_red[7] = debug_led_red[16] ;
    assign debug_led_red[6] = debug_led_red[16] ;
    assign debug_led_red[5] = debug_led_red[16] ;
    assign debug_led_red[4] = debug_led_red[16] ;
    assign debug_led_red[3] = debug_led_red[16] ;
    assign debug_led_red[2] = debug_led_red[16] ;
    assign debug_led_red[1] = debug_led_red[16] ;
    assign debug_led_red[0] = debug_led_red[16] ;
    assign debug_led_grn[5] = debug_led_red[16] ;
    assign debug_led_grn[4] = debug_led_red[16] ;
    assign debug_led_grn[3] = debug_led_red[16] ;
    assign debug_led_grn[2] = debug_led_red[16] ;
    assign debug_led_grn[1] = debug_led_red[16] ;
    assign debug_led_grn[0] = debug_led_red[16] ;
    assign debug_sevenseg_0[7] = o_sevenseg[7] ;
    assign debug_sevenseg_0[6] = debug_led_red[16] ;
    assign debug_sevenseg_0[5] = debug_led_red[16] ;
    assign debug_sevenseg_0[4] = debug_led_red[16] ;
    assign debug_sevenseg_0[3] = o_sevenseg[7] ;
    assign debug_sevenseg_0[2] = o_sevenseg[7] ;
    assign debug_sevenseg_0[1] = o_sevenseg[7] ;
    assign debug_sevenseg_0[0] = o_sevenseg[7] ;
    assign debug_sevenseg_1[7] = o_sevenseg[7] ;
    assign debug_sevenseg_1[6] = debug_led_red[16] ;
    assign debug_sevenseg_1[5] = debug_led_red[16] ;
    assign debug_sevenseg_1[4] = o_sevenseg[7] ;
    assign debug_sevenseg_1[3] = debug_led_red[16] ;
    assign debug_sevenseg_1[2] = debug_led_red[16] ;
    assign debug_sevenseg_1[1] = o_sevenseg[7] ;
    assign debug_sevenseg_1[0] = debug_led_red[16] ;
    assign debug_sevenseg_2[7] = o_sevenseg[7] ;
    assign debug_sevenseg_2[6] = debug_led_red[16] ;
    assign debug_sevenseg_2[5] = debug_led_red[16] ;
    assign debug_sevenseg_2[4] = debug_led_red[16] ;
    assign debug_sevenseg_2[3] = debug_led_red[16] ;
    assign debug_sevenseg_2[2] = o_sevenseg[7] ;
    assign debug_sevenseg_2[1] = o_sevenseg[7] ;
    assign debug_sevenseg_2[0] = debug_led_red[16] ;
    assign debug_sevenseg_3[7] = o_sevenseg[7] ;
    assign debug_sevenseg_3[6] = debug_led_red[16] ;
    assign debug_sevenseg_3[5] = o_sevenseg[7] ;
    assign debug_sevenseg_3[4] = o_sevenseg[7] ;
    assign debug_sevenseg_3[3] = debug_led_red[16] ;
    assign debug_sevenseg_3[2] = debug_led_red[16] ;
    assign debug_sevenseg_3[1] = debug_led_red[16] ;
    assign debug_sevenseg_3[0] = debug_led_red[16] ;
    assign debug_sevenseg_4[7] = o_sevenseg[7] ;
    assign debug_sevenseg_4[6] = debug_led_red[16] ;
    assign debug_sevenseg_4[5] = o_sevenseg[7] ;
    assign debug_sevenseg_4[4] = o_sevenseg[7] ;
    assign debug_sevenseg_4[3] = debug_led_red[16] ;
    assign debug_sevenseg_4[2] = debug_led_red[16] ;
    assign debug_sevenseg_4[1] = debug_led_red[16] ;
    assign debug_sevenseg_4[0] = o_sevenseg[7] ;
    assign debug_sevenseg_5[7] = o_sevenseg[7] ;
    assign debug_sevenseg_5[6] = debug_led_red[16] ;
    assign debug_sevenseg_5[5] = o_sevenseg[7] ;
    assign debug_sevenseg_5[4] = o_sevenseg[7] ;
    assign debug_sevenseg_5[3] = debug_led_red[16] ;
    assign debug_sevenseg_5[2] = debug_led_red[16] ;
    assign debug_sevenseg_5[1] = debug_led_red[16] ;
    assign debug_sevenseg_5[0] = debug_led_red[16] ;
    assign o_sevenseg[7] = 1'b1 ;
    uw_uart u_uw_uart (.clk (clk), .rst (o_nrst), .kirschout (kirschout), .kirschdir (
            {dir[2],dir[1],dir[0]}), .o_valid (o_valid), .i_mode ({o_mode[1],
            o_mode[0]}), .datain ({pixel[7],pixel[6],pixel[5],pixel[4],pixel[3],
            pixel[2],pixel[1],pixel[0]}), .o_pixavail (pixavail), .rxflex (
            rxflex), .txflex (txflex)) ;
    kirsch_8_8 u_kirsch (.i_clock (clk), .i_reset (o_nrst), .i_valid (pixavail)
               , .i_pixel ({pixel[7],pixel[6],pixel[5],pixel[4],pixel[3],
               pixel[2],pixel[1],pixel[0]}), .o_valid (o_valid), .o_edge (
               kirschout), .o_dir ({dir[2],dir[1],dir[0]}), .o_mode ({o_mode[1],
               o_mode[0]}), .o_row ({rowcount[7],rowcount[6],rowcount[5],
               rowcount[4],rowcount[3],rowcount[2],rowcount[1],rowcount[0]})) ;
    assign o_nrst = ~nrst ;
    or_4u_4u rtlc1_100_or_64 (.a ({rtlcs2,rtlcs5,rtlcs17,rtlcs24}), .d (
             rtlc1n236)) ;
    or_4u_4u rtlc1_20_or_65 (.a ({rtlcs34,rtlcs37,rtlcs49,rtlcs56}), .d (
             rtlc1n156)) ;
    or_5u_5u rtlc_71_or_72 (.a ({rtlcs0,rtlcs1,rtlcs3,rtlcs16,rtlcs31}), .d (
             rtlc1n224)) ;
    or_5u_5u rtlc_77_or_73 (.a ({rtlcs0,rtlcs8,rtlcs15,rtlcs16,rtlcs20}), .d (
             rtlc1n225)) ;
    or_4u_4u rtlc_99_or_75 (.a ({rtlcs9,rtlcs17,rtlcs19,rtlcs23}), .d (rtlc1n230
             )) ;
    or_5u_5u rtlc_114_or_77 (.a ({rtlcs4,rtlcs10,rtlcs18,rtlcs22,rtlcs27}), .d (
             rtlc1n233)) ;
    or_5u_5u rtlc_133_or_78 (.a ({rtlcs32,rtlcs33,rtlcs35,rtlcs48,rtlcs63}), .d (
             rtlc1n144)) ;
    or_5u_5u rtlc_139_or_79 (.a ({rtlcs32,rtlcs40,rtlcs47,rtlcs48,rtlcs52}), .d (
             rtlc1n145)) ;
    or_4u_4u rtlc_161_or_81 (.a ({rtlcs41,rtlcs49,rtlcs51,rtlcs55}), .d (
             rtlc1n150)) ;
    or_5u_5u rtlc_176_or_83 (.a ({rtlcs36,rtlcs42,rtlcs50,rtlcs54,rtlcs59}), .d (
             rtlc1n153)) ;
    assign not_rtlc1n224 = ~rtlc1n224 ;
    assign not_rtlc1n225 = ~rtlc1n225 ;
    assign not_rtlc1n233 = ~rtlc1n233 ;
    assign not_rtlc1n144 = ~rtlc1n144 ;
    assign not_rtlc1n145 = ~rtlc1n145 ;
    assign not_rtlc1n153 = ~rtlc1n153 ;
    and (rtlcs2, rtlcs3, rtlcs1) ;
    and (rtlcs5, rowcount[2], rtlcs4) ;
    and (rtlcs4, not_rowcount_1, rtlcs1) ;
    and (rtlcs9, rtlcs8, rtlcs10) ;
    and (rtlcs11, rowcount[2], rtlcs8) ;
    and (rtlcs13, rowcount[3], rtlcs15) ;
    and (rtlcs17, rtlcs15, rtlcs18) ;
    and (rtlcs18, not_rowcount_3, rtlcs20) ;
    and (rtlcs24, rtlcs25, rtlcs23) ;
    and (rtlcs23, rowcount[0], rtlcs22) ;
    and (rtlcs27, rowcount[1], rtlcs25) ;
    and (rtlcs256, rtlcs10, not_rowcount_3) ;
    and (rtlcs29, rtlcs256, rtlcs31) ;
    and (rtlcs34, rtlcs35, rtlcs33) ;
    and (rtlcs37, rowcount[6], rtlcs36) ;
    and (rtlcs36, not_rowcount_5, rtlcs33) ;
    and (rtlcs41, rtlcs40, rtlcs42) ;
    and (rtlcs43, rowcount[6], rtlcs40) ;
    and (rtlcs45, rowcount[7], rtlcs47) ;
    and (rtlcs49, rtlcs47, rtlcs50) ;
    and (rtlcs50, not_rowcount_7, rtlcs52) ;
    and (rtlcs56, rtlcs57, rtlcs55) ;
    and (rtlcs55, rowcount[4], rtlcs54) ;
    and (rtlcs59, rowcount[5], rtlcs57) ;
    and (rtlcs257, rtlcs42, not_rowcount_7) ;
    and (rtlcs61, rtlcs257, rtlcs63) ;
    assign not_rowcount_2 = ~rowcount[2] ;
    and (rtlcs0, rowcount[3], not_rowcount_2) ;
    and (rtlcs3, not_rowcount_2, rowcount[1]) ;
    and (rtlcs1, rowcount[3], rowcount[0]) ;
    assign not_rowcount_0 = ~rowcount[0] ;
    and (rtlcs31, rowcount[1], not_rowcount_0) ;
    assign not_rowcount_3 = ~rowcount[3] ;
    assign not_rowcount_1 = ~rowcount[1] ;
    and (rtlcs8, rowcount[3], rowcount[1]) ;
    and (rtlcs15, rowcount[2], not_rowcount_0) ;
    and (rtlcs20, not_rowcount_1, not_rowcount_0) ;
    and (rtlcs25, not_rowcount_3, rowcount[0]) ;
    and (rtlcs22, not_rowcount_2, not_rowcount_1) ;
    and (rtlcs10, not_rowcount_2, not_rowcount_0) ;
    assign not_rowcount_6 = ~rowcount[6] ;
    and (rtlcs32, rowcount[7], not_rowcount_6) ;
    and (rtlcs35, not_rowcount_6, rowcount[5]) ;
    and (rtlcs33, rowcount[7], rowcount[4]) ;
    assign not_rowcount_4 = ~rowcount[4] ;
    and (rtlcs63, rowcount[5], not_rowcount_4) ;
    assign not_rowcount_7 = ~rowcount[7] ;
    assign not_rowcount_5 = ~rowcount[5] ;
    and (rtlcs40, rowcount[7], rowcount[5]) ;
    and (rtlcs47, rowcount[6], not_rowcount_4) ;
    and (rtlcs52, not_rowcount_5, not_rowcount_4) ;
    and (rtlcs57, not_rowcount_7, rowcount[4]) ;
    and (rtlcs54, not_rowcount_6, not_rowcount_5) ;
    and (rtlcs42, not_rowcount_6, not_rowcount_4) ;
    DFF reg_o_sevenseg_14_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (rtlc1n156), .clk (clk), .out (o_sevenseg[14])) ;
    assign debug_led_red[16] = 1'b0 ;
    DFF reg_o_sevenseg_13_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (not_rtlc1n153), .clk (clk), .out (o_sevenseg[13])) ;
    DFF reg_o_sevenseg_12_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (rtlc1n152), .clk (clk), .out (o_sevenseg[12])) ;
    DFF reg_o_sevenseg_11_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (rtlc1n150), .clk (clk), .out (o_sevenseg[11])) ;
    DFF reg_o_sevenseg_10_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (rtlc1n148), .clk (clk), .out (o_sevenseg[10])) ;
    DFF reg_o_sevenseg_9_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (not_rtlc1n145), .clk (clk), .out (o_sevenseg[9])) ;
    DFF reg_o_sevenseg_8_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (not_rtlc1n144), .clk (clk), .out (o_sevenseg[8])) ;
    DFF reg_o_sevenseg_6_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (rtlc1n236), .clk (clk), .out (o_sevenseg[6])) ;
    DFF reg_o_sevenseg_5_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (not_rtlc1n233), .clk (clk), .out (o_sevenseg[5])) ;
    DFF reg_o_sevenseg_4_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (rtlc1n232), .clk (clk), .out (o_sevenseg[4])) ;
    DFF reg_o_sevenseg_3_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (rtlc1n230), .clk (clk), .out (o_sevenseg[3])) ;
    DFF reg_o_sevenseg_2_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (rtlc1n228), .clk (clk), .out (o_sevenseg[2])) ;
    DFF reg_o_sevenseg_1_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (not_rtlc1n225), .clk (clk), .out (o_sevenseg[1])) ;
    DFF reg_o_sevenseg_0_ (.set (debug_led_red[16]), .reset (debug_led_red[16])
        , .in (not_rtlc1n224), .clk (clk), .out (o_sevenseg[0])) ;
    or (rtlc_108_or_76_nx0, rtlcs11, rtlcs13) ;
    or (rtlc1n232, rtlc_108_or_76_nx0, rtlcs29) ;
    or (rtlc_170_or_82_nx0, rtlcs43, rtlcs45) ;
    or (rtlc1n152, rtlc_170_or_82_nx0, rtlcs61) ;
    and (rtlc_898_and_120_nx0, not_rowcount_3, rowcount[2]) ;
    and (rtlcs16, rtlc_898_and_120_nx0, not_rowcount_1) ;
    and (rtlc_914_and_121_nx0, rowcount[2], rowcount[1]) ;
    and (rtlcs19, rtlc_914_and_121_nx0, rowcount[0]) ;
    and (rtlc_937_and_122_nx0, not_rowcount_7, rowcount[6]) ;
    and (rtlcs48, rtlc_937_and_122_nx0, not_rowcount_5) ;
    and (rtlc_953_and_123_nx0, rowcount[6], rowcount[5]) ;
    and (rtlcs51, rtlc_953_and_123_nx0, rowcount[4]) ;
    or_3u_3u modgen_or_0 (.a ({rtlcs16,rtlcs23,rtlcs25}), .d (rtlc1n228)) ;
    or_3u_3u modgen_or_1 (.a ({rtlcs48,rtlcs55,rtlcs57}), .d (rtlc1n148)) ;
endmodule


module or_3u_3u ( a, d ) ;

    input [2:0]a ;
    output d ;







    sim_or #(3) ix8 (.a (a), .d (d)) ;
endmodule


module or_5u_5u ( a, d ) ;

    input [4:0]a ;
    output d ;







    sim_or #(5) ix10 (.a (a), .d (d)) ;
endmodule


module or_4u_4u ( a, d ) ;

    input [3:0]a ;
    output d ;







    sim_or #(4) ix9 (.a (a), .d (d)) ;
endmodule


module kirsch_8_8 ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                    o_mode, o_row, debug_key, debug_switch, debug_led_red, 
                    debug_led_grn, debug_num_0, debug_num_1, debug_num_2, 
                    debug_num_3, debug_num_4, debug_num_5 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;

    wire [0:1]mem_wren;
    wire [7:0]column;
    wire [6:0]valid;
    wire [7:0]column_valid1;
    wire [7:0]column_valid2;
    wire [7:0]row_valid1;
    wire [7:0]row_valid2;
    wire [7:0]a;
    wire [7:0]b;
    wire [7:0]c;
    wire [7:0]d;
    wire [7:0]e;
    wire [7:0]f;
    wire [7:0]g;
    wire [7:0]h;
    wire [7:0]i;
    wire [7:0]i_max1;
    wire [7:0]i_max2;
    wire [7:0]i_add1;
    wire [7:0]i_add2;
    wire [8:0]o_add1;
    wire [9:0]o_add2;
    wire o_dir1_2_, o_dir1_0_;
    wire [2:0]r1;
    wire [8:0]r2;
    wire [9:0]r3;
    wire [9:0]temp_max;
    wire [2:0]temp_dir;
    wire [8:0]temp_add;
    wire [9:0]i_max3;
    wire [2:0]i_dir3;
    wire [12:0]i_add3;
    wire [12:0]i_add4;
    wire [9:0]o_max1;
    wire [2:0]o_dir2;
    wire [12:0]o_add3;
    wire [9:0]r4;
    wire [2:0]r5;
    wire [12:0]r6;
    wire sub_out_12_, sub_out_11_, sub_out_10_, sub_out_9_, sub_out_8_, 
         sub_out_7_;
    wire [2:0]r8;
    wire not_o_row_0, not_valid_0, rtlc1_P5_SS0_n21, not_valid_1, not_valid_2, 
         rtlc5_P8_SS0_n32, rtlc5_P9_SS0_n35, rtlc5n38, rtlc5n40, not_valid_5, 
         rtlc12n82;
    wire [7:0]c_13n1ss1;
    wire [7:0]d_13n1ss1;
    wire rtlc14n147, rtlc20n137, rtlc20n138, rtlc20n140, rtlc21n47, rtlc21n57, 
         rtlcn0, rtlcn1, rtlcn3, rtlcn6, rtlcn8, rtlcn9, not_rtlc5n40, rtlcs0, 
         not_o_mode_1, not_rtlcn1880, rtlcn1880;
    wire [7:0]mem_out_0_;
    wire [7:0]mem_out_1_;
    wire rtlcn4, rtlc_300_or_59_nx0, NOT_r6_0_;
    wire [22:0] xmplr_dummy ;




    assign debug_led_red[17] = debug_num_5[0] ;
    assign debug_led_red[16] = debug_num_5[0] ;
    assign debug_led_red[15] = debug_num_5[0] ;
    assign debug_led_red[14] = debug_num_5[0] ;
    assign debug_led_red[13] = debug_num_5[0] ;
    assign debug_led_red[12] = debug_num_5[0] ;
    assign debug_led_red[11] = debug_num_5[0] ;
    assign debug_led_red[10] = debug_num_5[0] ;
    assign debug_led_red[9] = debug_num_5[0] ;
    assign debug_led_red[8] = debug_num_5[0] ;
    assign debug_led_red[7] = debug_num_5[0] ;
    assign debug_led_red[6] = debug_num_5[0] ;
    assign debug_led_red[5] = debug_num_5[0] ;
    assign debug_led_red[4] = debug_num_5[0] ;
    assign debug_led_red[3] = debug_num_5[0] ;
    assign debug_led_red[2] = debug_num_5[0] ;
    assign debug_led_red[1] = debug_num_5[0] ;
    assign debug_led_red[0] = debug_num_5[0] ;
    assign debug_led_grn[5] = debug_num_5[0] ;
    assign debug_led_grn[4] = debug_num_5[0] ;
    assign debug_led_grn[3] = debug_num_5[0] ;
    assign debug_led_grn[2] = debug_num_5[0] ;
    assign debug_led_grn[1] = debug_num_5[0] ;
    assign debug_led_grn[0] = debug_num_5[0] ;
    assign debug_num_0[3] = debug_num_5[0] ;
    assign debug_num_0[2] = debug_num_5[1] ;
    assign debug_num_0[1] = debug_num_5[1] ;
    assign debug_num_0[0] = debug_num_5[1] ;
    assign debug_num_1[3] = debug_num_5[0] ;
    assign debug_num_1[2] = debug_num_5[0] ;
    assign debug_num_1[1] = debug_num_5[1] ;
    assign debug_num_1[0] = debug_num_5[0] ;
    assign debug_num_2[3] = debug_num_5[0] ;
    assign debug_num_2[2] = debug_num_5[0] ;
    assign debug_num_2[1] = debug_num_5[1] ;
    assign debug_num_2[0] = debug_num_5[1] ;
    assign debug_num_3[3] = debug_num_5[1] ;
    assign debug_num_3[2] = debug_num_5[1] ;
    assign debug_num_3[1] = debug_num_5[1] ;
    assign debug_num_3[0] = debug_num_5[0] ;
    assign debug_num_4[3] = debug_num_5[1] ;
    assign debug_num_4[2] = debug_num_5[1] ;
    assign debug_num_4[1] = debug_num_5[0] ;
    assign debug_num_4[0] = debug_num_5[0] ;
    assign debug_num_5[3] = debug_num_5[1] ;
    assign debug_num_5[2] = debug_num_5[1] ;
    assign debug_num_5[0] = 1'b0 ;
    assign debug_num_5[1] = 1'b1 ;
    stage1_hardware stage1 (.i_dir1_stage1 ({debug_num_5[0],debug_num_5[0],
                    rtlc5n38}), .i_dir2_stage1 ({debug_num_5[1],debug_num_5[0],
                    rtlcn4}), .i_pix1_stage1 ({i_max1[7],i_max1[6],i_max1[5],
                    i_max1[4],i_max1[3],i_max1[2],i_max1[1],i_max1[0]}), .i_pix2_stage1 (
                    {i_max2[7],i_max2[6],i_max2[5],i_max2[4],i_max2[3],i_max2[2]
                    ,i_max2[1],i_max2[0]}), .i_add_op1_stage1 ({i_add1[7],
                    i_add1[6],i_add1[5],i_add1[4],i_add1[3],i_add1[2],i_add1[1],
                    i_add1[0]}), .i_add_op2_stage1 ({i_add2[7],i_add2[6],
                    i_add2[5],i_add2[4],i_add2[3],i_add2[2],i_add2[1],i_add2[0]}
                    ), .o_add_op12_stage1 ({o_add1[8],o_add1[7],o_add1[6],
                    o_add1[5],o_add1[4],o_add1[3],o_add1[2],o_add1[1],o_add1[0]}
                    ), .o_max_add_stage1 ({o_add2[9],o_add2[8],o_add2[7],
                    o_add2[6],o_add2[5],o_add2[4],o_add2[3],o_add2[2],o_add2[1],
                    o_add2[0]}), .o_max_dir_stage1 ({o_dir1_2_,xmplr_dummy [0],
                    o_dir1_0_})) ;
    stage2_hardware stage2 (.i_dir1_stage2 ({i_dir3[2],i_dir3[1],i_dir3[0]}), .i_dir2_stage2 (
                    {r1[2],r1[1],r1[0]}), .i_pix1_stage2 ({i_max3[9],i_max3[8],
                    i_max3[7],i_max3[6],i_max3[5],i_max3[4],i_max3[3],i_max3[2],
                    i_max3[1],i_max3[0]}), .i_pix2_stage2 ({r3[9],r3[8],r3[7],
                    r3[6],r3[5],r3[4],r3[3],r3[2],r3[1],r3[0]}), .i_add_op1_stage2 (
                    {i_add3[12],i_add3[11],i_add3[10],i_add3[9],i_add3[8],
                    i_add3[7],i_add3[6],i_add3[5],i_add3[4],i_add3[3],i_add3[2],
                    i_add3[1],i_add3[0]}), .i_add_op2_stage2 ({i_add4[12],
                    i_add4[11],i_add4[10],i_add4[9],i_add4[8],i_add4[7],
                    i_add4[6],i_add4[5],i_add4[4],i_add4[3],i_add4[2],i_add4[1],
                    i_add4[0]}), .o_add_op12_stage2 ({o_add3[12],o_add3[11],
                    o_add3[10],o_add3[9],o_add3[8],o_add3[7],o_add3[6],o_add3[5]
                    ,o_add3[4],o_add3[3],o_add3[2],o_add3[1],o_add3[0]}), .o_max_stage2 (
                    {o_max1[9],o_max1[8],o_max1[7],o_max1[6],o_max1[5],o_max1[4]
                    ,o_max1[3],o_max1[2],o_max1[1],o_max1[0]}), .o_max_dir_stage2 (
                    {o_dir2[2],o_dir2[1],o_dir2[0]})) ;
    and (mem_wren[0], not_o_row_0, i_valid) ;
    assign not_o_row_0 = ~o_row[0] ;
    and (mem_wren[1], o_row[0], i_valid) ;
    select_4_4 i_max1_select_0Bus26_0_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({g[0],a[0],c[0],e[0]}), 
               .d (i_max1[0])) ;
    select_4_4 i_max1_select_0Bus26_1_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({g[1],a[1],c[1],e[1]}), 
               .d (i_max1[1])) ;
    select_4_4 i_max1_select_0Bus26_2_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({g[2],a[2],c[2],e[2]}), 
               .d (i_max1[2])) ;
    select_4_4 i_max1_select_0Bus26_3_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({g[3],a[3],c[3],e[3]}), 
               .d (i_max1[3])) ;
    select_4_4 i_max1_select_0Bus26_4_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({g[4],a[4],c[4],e[4]}), 
               .d (i_max1[4])) ;
    select_4_4 i_max1_select_0Bus26_5_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({g[5],a[5],c[5],e[5]}), 
               .d (i_max1[5])) ;
    select_4_4 i_max1_select_0Bus26_6_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({g[6],a[6],c[6],e[6]}), 
               .d (i_max1[6])) ;
    select_4_4 i_max1_select_0Bus26_7_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({g[7],a[7],c[7],e[7]}), 
               .d (i_max1[7])) ;
    assign not_valid_2 = ~valid[2] ;
    assign not_valid_1 = ~valid[1] ;
    assign not_valid_0 = ~valid[0] ;
    and (rtlc1_P5_SS0_n21, not_valid_0, valid[1]) ;
    select_4_4 i_max2_select_8Bus27_0_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({b[0],d[0],f[0],h[0]}), 
               .d (i_max2[0])) ;
    select_4_4 i_max2_select_8Bus27_1_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({b[1],d[1],f[1],h[1]}), 
               .d (i_max2[1])) ;
    select_4_4 i_max2_select_8Bus27_2_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({b[2],d[2],f[2],h[2]}), 
               .d (i_max2[2])) ;
    select_4_4 i_max2_select_8Bus27_3_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({b[3],d[3],f[3],h[3]}), 
               .d (i_max2[3])) ;
    select_4_4 i_max2_select_8Bus27_4_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({b[4],d[4],f[4],h[4]}), 
               .d (i_max2[4])) ;
    select_4_4 i_max2_select_8Bus27_5_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({b[5],d[5],f[5],h[5]}), 
               .d (i_max2[5])) ;
    select_4_4 i_max2_select_8Bus27_6_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({b[6],d[6],f[6],h[6]}), 
               .d (i_max2[6])) ;
    select_4_4 i_max2_select_8Bus27_7_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({b[7],d[7],f[7],h[7]}), 
               .d (i_max2[7])) ;
    select_4_4 i_add1_select_16Bus28_0_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({a[0],b[0],d[0],f[0]}), 
               .d (i_add1[0])) ;
    select_4_4 i_add1_select_16Bus28_1_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({a[1],b[1],d[1],f[1]}), 
               .d (i_add1[1])) ;
    select_4_4 i_add1_select_16Bus28_2_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({a[2],b[2],d[2],f[2]}), 
               .d (i_add1[2])) ;
    select_4_4 i_add1_select_16Bus28_3_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({a[3],b[3],d[3],f[3]}), 
               .d (i_add1[3])) ;
    select_4_4 i_add1_select_16Bus28_4_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({a[4],b[4],d[4],f[4]}), 
               .d (i_add1[4])) ;
    select_4_4 i_add1_select_16Bus28_5_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({a[5],b[5],d[5],f[5]}), 
               .d (i_add1[5])) ;
    select_4_4 i_add1_select_16Bus28_6_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({a[6],b[6],d[6],f[6]}), 
               .d (i_add1[6])) ;
    select_4_4 i_add1_select_16Bus28_7_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({a[7],b[7],d[7],f[7]}), 
               .d (i_add1[7])) ;
    select_4_4 i_add2_select_24Bus29_0_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({h[0],c[0],e[0],g[0]}), 
               .d (i_add2[0])) ;
    select_4_4 i_add2_select_24Bus29_1_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({h[1],c[1],e[1],g[1]}), 
               .d (i_add2[1])) ;
    select_4_4 i_add2_select_24Bus29_2_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({h[2],c[2],e[2],g[2]}), 
               .d (i_add2[2])) ;
    select_4_4 i_add2_select_24Bus29_3_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({h[3],c[3],e[3],g[3]}), 
               .d (i_add2[3])) ;
    select_4_4 i_add2_select_24Bus29_4_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({h[4],c[4],e[4],g[4]}), 
               .d (i_add2[4])) ;
    select_4_4 i_add2_select_24Bus29_5_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({h[5],c[5],e[5],g[5]}), 
               .d (i_add2[5])) ;
    select_4_4 i_add2_select_24Bus29_6_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({h[6],c[6],e[6],g[6]}), 
               .d (i_add2[6])) ;
    select_4_4 i_add2_select_24Bus29_7_ (.a ({valid[0],rtlc1_P5_SS0_n21,
               rtlc5_P8_SS0_n32,rtlc5_P9_SS0_n35}), .b ({h[7],c[7],e[7],g[7]}), 
               .d (i_add2[7])) ;
    and (rtlc20n137, sub_out_7_, sub_out_8_) ;
    and (rtlc20n140, rtlc20n138, rtlcn1880) ;
    and (rtlc21n47, valid[6], rtlcn0) ;
    and (rtlc21n57, rtlc21n47, rtlcn1) ;
    and (rtlcn6, not_valid_1, valid[2]) ;
    or (rtlc5n40, valid[0], rtlcn6) ;
    and (rtlcn8, not_valid_1, not_valid_2) ;
    or (rtlc5n38, valid[0], rtlcn8) ;
    or (rtlc14n147, i_reset, rtlcn9) ;
    assign not_rtlc5n40 = ~rtlc5n40 ;
    assign i_dir3[0] = valid[2] ? temp_dir[0] : r5[0] ;
    assign i_dir3[1] = valid[2] ? temp_dir[1] : r5[1] ;
    assign i_dir3[2] = valid[2] ? temp_dir[2] : r5[2] ;
    assign i_max3[0] = valid[2] ? temp_max[0] : r4[0] ;
    assign i_max3[1] = valid[2] ? temp_max[1] : r4[1] ;
    assign i_max3[2] = valid[2] ? temp_max[2] : r4[2] ;
    assign i_max3[3] = valid[2] ? temp_max[3] : r4[3] ;
    assign i_max3[4] = valid[2] ? temp_max[4] : r4[4] ;
    assign i_max3[5] = valid[2] ? temp_max[5] : r4[5] ;
    assign i_max3[6] = valid[2] ? temp_max[6] : r4[6] ;
    assign i_max3[7] = valid[2] ? temp_max[7] : r4[7] ;
    assign i_max3[8] = valid[2] ? temp_max[8] : r4[8] ;
    assign i_max3[9] = valid[2] ? temp_max[9] : r4[9] ;
    assign i_add3[1] = valid[5] ? r6[0] : r2[1] ;
    assign i_add3[2] = valid[5] ? r6[1] : r2[2] ;
    assign i_add3[3] = valid[5] ? r6[2] : r2[3] ;
    assign i_add3[4] = valid[5] ? r6[3] : r2[4] ;
    assign i_add3[5] = valid[5] ? r6[4] : r2[5] ;
    assign i_add3[6] = valid[5] ? r6[5] : r2[6] ;
    assign i_add3[7] = valid[5] ? r6[6] : r2[7] ;
    assign i_add3[8] = valid[5] ? r6[7] : r2[8] ;
    assign i_add4[0] = valid[2] ? temp_add[0] : r6[0] ;
    assign i_add4[1] = valid[2] ? temp_add[1] : r6[1] ;
    assign i_add4[2] = valid[2] ? temp_add[2] : r6[2] ;
    assign i_add4[3] = valid[2] ? temp_add[3] : r6[3] ;
    assign i_add4[4] = valid[2] ? temp_add[4] : r6[4] ;
    assign i_add4[5] = valid[2] ? temp_add[5] : r6[5] ;
    assign i_add4[6] = valid[2] ? temp_add[6] : r6[6] ;
    assign i_add4[7] = valid[2] ? temp_add[7] : r6[7] ;
    assign i_add4[8] = valid[2] ? temp_add[8] : r6[8] ;
    assign c_13n1ss1[0] = o_row[0] ? mem_out_1_[0] : mem_out_0_[0] ;
    assign c_13n1ss1[1] = o_row[0] ? mem_out_1_[1] : mem_out_0_[1] ;
    assign c_13n1ss1[2] = o_row[0] ? mem_out_1_[2] : mem_out_0_[2] ;
    assign c_13n1ss1[3] = o_row[0] ? mem_out_1_[3] : mem_out_0_[3] ;
    assign c_13n1ss1[4] = o_row[0] ? mem_out_1_[4] : mem_out_0_[4] ;
    assign c_13n1ss1[5] = o_row[0] ? mem_out_1_[5] : mem_out_0_[5] ;
    assign c_13n1ss1[6] = o_row[0] ? mem_out_1_[6] : mem_out_0_[6] ;
    assign c_13n1ss1[7] = o_row[0] ? mem_out_1_[7] : mem_out_0_[7] ;
    assign d_13n1ss1[0] = o_row[0] ? mem_out_0_[0] : mem_out_1_[0] ;
    assign d_13n1ss1[1] = o_row[0] ? mem_out_0_[1] : mem_out_1_[1] ;
    assign d_13n1ss1[2] = o_row[0] ? mem_out_0_[2] : mem_out_1_[2] ;
    assign d_13n1ss1[3] = o_row[0] ? mem_out_0_[3] : mem_out_1_[3] ;
    assign d_13n1ss1[4] = o_row[0] ? mem_out_0_[4] : mem_out_1_[4] ;
    assign d_13n1ss1[5] = o_row[0] ? mem_out_0_[5] : mem_out_1_[5] ;
    assign d_13n1ss1[6] = o_row[0] ? mem_out_0_[6] : mem_out_1_[6] ;
    assign d_13n1ss1[7] = o_row[0] ? mem_out_0_[7] : mem_out_1_[7] ;
    assign not_valid_5 = ~valid[5] ;
    and (i_add3[0], r2[0], not_valid_5) ;
    and (i_add3[9], r6[8], valid[5]) ;
    and (i_add3[10], r6[9], valid[5]) ;
    and (i_add3[11], r6[10], valid[5]) ;
    and (i_add3[12], r6[11], valid[5]) ;
    and (i_add4[9], r6[9], not_valid_2) ;
    and (i_add4[10], r6[10], not_valid_2) ;
    and (i_add4[11], r6[11], not_valid_2) ;
    and (i_add4[12], r6[12], not_valid_2) ;
    and (o_dir[0], r8[0], o_edge) ;
    and (o_dir[1], r8[1], o_edge) ;
    and (o_dir[2], r8[2], o_edge) ;
    assign not_o_mode_1 = ~o_mode[1] ;
    and (rtlcs0, not_o_mode_1, o_mode[0]) ;
    counter_up_cnt_en_sclear_clock_0_8_cx5_kirsch_8_8 modgen_counter_o_row (.clock (
                                                      i_clock), .q ({o_row[7],
                                                      o_row[6],o_row[5],o_row[4]
                                                      ,o_row[3],o_row[2],
                                                      o_row[1],o_row[0]}), .clk_en (
                                                      debug_num_5[1]), .aclear (
                                                      debug_num_5[0]), .sload (
                                                      debug_num_5[0]), .aset (
                                                      debug_num_5[0]), .sclear (
                                                      i_reset), .updn (
                                                      debug_num_5[1]), .cnt_en (
                                                      rtlcn9)) ;
    counter_up_cnt_en_sclear_clock_0_8_cx6_kirsch_8_8 modgen_counter_column (.clock (
                                                      i_clock), .q ({column[7],
                                                      column[6],column[5],
                                                      column[4],column[3],
                                                      column[2],column[1],
                                                      column[0]}), .clk_en (
                                                      debug_num_5[1]), .aclear (
                                                      debug_num_5[0]), .sload (
                                                      debug_num_5[0]), .aset (
                                                      debug_num_5[0]), .sclear (
                                                      rtlc14n147), .updn (
                                                      debug_num_5[1]), .cnt_en (
                                                      valid[0])) ;
    assign not_rtlcn1880 = ~rtlcn1880 ;
    DFFRSE reg_mode_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (
           debug_num_5[1]), .clk (i_clock), .ce (rtlcn3), .out (o_mode[1])) ;
    DFFRSE reg_mode_0_ (.set (i_reset), .reset (debug_num_5[0]), .in (i_valid), 
           .clk (i_clock), .ce (rtlcn3), .out (o_mode[0])) ;
    DFFRSE reg_e_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_pixel[7]), 
           .clk (i_clock), .ce (i_valid), .out (e[7])) ;
    DFFRSE reg_e_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_pixel[6]), 
           .clk (i_clock), .ce (i_valid), .out (e[6])) ;
    DFFRSE reg_e_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_pixel[5]), 
           .clk (i_clock), .ce (i_valid), .out (e[5])) ;
    DFFRSE reg_e_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_pixel[4]), 
           .clk (i_clock), .ce (i_valid), .out (e[4])) ;
    DFFRSE reg_e_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_pixel[3]), 
           .clk (i_clock), .ce (i_valid), .out (e[3])) ;
    DFFRSE reg_e_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_pixel[2]), 
           .clk (i_clock), .ce (i_valid), .out (e[2])) ;
    DFFRSE reg_e_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_pixel[1]), 
           .clk (i_clock), .ce (i_valid), .out (e[1])) ;
    DFFRSE reg_e_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_pixel[0]), 
           .clk (i_clock), .ce (i_valid), .out (e[0])) ;
    DFFRSE reg_f_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (e[7]), .clk (
           i_clock), .ce (i_valid), .out (f[7])) ;
    DFFRSE reg_f_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (e[6]), .clk (
           i_clock), .ce (i_valid), .out (f[6])) ;
    DFFRSE reg_f_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (e[5]), .clk (
           i_clock), .ce (i_valid), .out (f[5])) ;
    DFFRSE reg_f_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (e[4]), .clk (
           i_clock), .ce (i_valid), .out (f[4])) ;
    DFFRSE reg_f_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (e[3]), .clk (
           i_clock), .ce (i_valid), .out (f[3])) ;
    DFFRSE reg_f_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (e[2]), .clk (
           i_clock), .ce (i_valid), .out (f[2])) ;
    DFFRSE reg_f_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (e[1]), .clk (
           i_clock), .ce (i_valid), .out (f[1])) ;
    DFFRSE reg_f_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (e[0]), .clk (
           i_clock), .ce (i_valid), .out (f[0])) ;
    DFFRSE reg_g_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (f[7]), .clk (
           i_clock), .ce (i_valid), .out (g[7])) ;
    DFFRSE reg_g_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (f[6]), .clk (
           i_clock), .ce (i_valid), .out (g[6])) ;
    DFFRSE reg_g_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (f[5]), .clk (
           i_clock), .ce (i_valid), .out (g[5])) ;
    DFFRSE reg_g_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (f[4]), .clk (
           i_clock), .ce (i_valid), .out (g[4])) ;
    DFFRSE reg_g_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (f[3]), .clk (
           i_clock), .ce (i_valid), .out (g[3])) ;
    DFFRSE reg_g_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (f[2]), .clk (
           i_clock), .ce (i_valid), .out (g[2])) ;
    DFFRSE reg_g_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (f[1]), .clk (
           i_clock), .ce (i_valid), .out (g[1])) ;
    DFFRSE reg_g_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (f[0]), .clk (
           i_clock), .ce (i_valid), .out (g[0])) ;
    DFFRSE reg_d_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (d_13n1ss1[7])
           , .clk (i_clock), .ce (i_valid), .out (d[7])) ;
    DFFRSE reg_d_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (d_13n1ss1[6])
           , .clk (i_clock), .ce (i_valid), .out (d[6])) ;
    DFFRSE reg_d_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (d_13n1ss1[5])
           , .clk (i_clock), .ce (i_valid), .out (d[5])) ;
    DFFRSE reg_d_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (d_13n1ss1[4])
           , .clk (i_clock), .ce (i_valid), .out (d[4])) ;
    DFFRSE reg_d_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (d_13n1ss1[3])
           , .clk (i_clock), .ce (i_valid), .out (d[3])) ;
    DFFRSE reg_d_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (d_13n1ss1[2])
           , .clk (i_clock), .ce (i_valid), .out (d[2])) ;
    DFFRSE reg_d_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (d_13n1ss1[1])
           , .clk (i_clock), .ce (i_valid), .out (d[1])) ;
    DFFRSE reg_d_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (d_13n1ss1[0])
           , .clk (i_clock), .ce (i_valid), .out (d[0])) ;
    DFFRSE reg_i_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (d[7]), .clk (
           i_clock), .ce (i_valid), .out (i[7])) ;
    DFFRSE reg_i_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (d[6]), .clk (
           i_clock), .ce (i_valid), .out (i[6])) ;
    DFFRSE reg_i_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (d[5]), .clk (
           i_clock), .ce (i_valid), .out (i[5])) ;
    DFFRSE reg_i_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (d[4]), .clk (
           i_clock), .ce (i_valid), .out (i[4])) ;
    DFFRSE reg_i_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (d[3]), .clk (
           i_clock), .ce (i_valid), .out (i[3])) ;
    DFFRSE reg_i_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (d[2]), .clk (
           i_clock), .ce (i_valid), .out (i[2])) ;
    DFFRSE reg_i_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (d[1]), .clk (
           i_clock), .ce (i_valid), .out (i[1])) ;
    DFFRSE reg_i_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (d[0]), .clk (
           i_clock), .ce (i_valid), .out (i[0])) ;
    DFFRSE reg_h_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (i[7]), .clk (
           i_clock), .ce (i_valid), .out (h[7])) ;
    DFFRSE reg_h_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (i[6]), .clk (
           i_clock), .ce (i_valid), .out (h[6])) ;
    DFFRSE reg_h_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (i[5]), .clk (
           i_clock), .ce (i_valid), .out (h[5])) ;
    DFFRSE reg_h_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (i[4]), .clk (
           i_clock), .ce (i_valid), .out (h[4])) ;
    DFFRSE reg_h_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (i[3]), .clk (
           i_clock), .ce (i_valid), .out (h[3])) ;
    DFFRSE reg_h_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (i[2]), .clk (
           i_clock), .ce (i_valid), .out (h[2])) ;
    DFFRSE reg_h_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (i[1]), .clk (
           i_clock), .ce (i_valid), .out (h[1])) ;
    DFFRSE reg_h_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (i[0]), .clk (
           i_clock), .ce (i_valid), .out (h[0])) ;
    DFFRSE reg_c_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (c_13n1ss1[7])
           , .clk (i_clock), .ce (i_valid), .out (c[7])) ;
    DFFRSE reg_c_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (c_13n1ss1[6])
           , .clk (i_clock), .ce (i_valid), .out (c[6])) ;
    DFFRSE reg_c_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (c_13n1ss1[5])
           , .clk (i_clock), .ce (i_valid), .out (c[5])) ;
    DFFRSE reg_c_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (c_13n1ss1[4])
           , .clk (i_clock), .ce (i_valid), .out (c[4])) ;
    DFFRSE reg_c_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (c_13n1ss1[3])
           , .clk (i_clock), .ce (i_valid), .out (c[3])) ;
    DFFRSE reg_c_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (c_13n1ss1[2])
           , .clk (i_clock), .ce (i_valid), .out (c[2])) ;
    DFFRSE reg_c_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (c_13n1ss1[1])
           , .clk (i_clock), .ce (i_valid), .out (c[1])) ;
    DFFRSE reg_c_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (c_13n1ss1[0])
           , .clk (i_clock), .ce (i_valid), .out (c[0])) ;
    DFFRSE reg_b_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (c[7]), .clk (
           i_clock), .ce (i_valid), .out (b[7])) ;
    DFFRSE reg_b_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (c[6]), .clk (
           i_clock), .ce (i_valid), .out (b[6])) ;
    DFFRSE reg_b_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (c[5]), .clk (
           i_clock), .ce (i_valid), .out (b[5])) ;
    DFFRSE reg_b_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (c[4]), .clk (
           i_clock), .ce (i_valid), .out (b[4])) ;
    DFFRSE reg_b_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (c[3]), .clk (
           i_clock), .ce (i_valid), .out (b[3])) ;
    DFFRSE reg_b_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (c[2]), .clk (
           i_clock), .ce (i_valid), .out (b[2])) ;
    DFFRSE reg_b_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (c[1]), .clk (
           i_clock), .ce (i_valid), .out (b[1])) ;
    DFFRSE reg_b_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (c[0]), .clk (
           i_clock), .ce (i_valid), .out (b[0])) ;
    DFFRSE reg_a_7_ (.set (debug_num_5[0]), .reset (i_reset), .in (b[7]), .clk (
           i_clock), .ce (i_valid), .out (a[7])) ;
    DFFRSE reg_a_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (b[6]), .clk (
           i_clock), .ce (i_valid), .out (a[6])) ;
    DFFRSE reg_a_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (b[5]), .clk (
           i_clock), .ce (i_valid), .out (a[5])) ;
    DFFRSE reg_a_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (b[4]), .clk (
           i_clock), .ce (i_valid), .out (a[4])) ;
    DFFRSE reg_a_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (b[3]), .clk (
           i_clock), .ce (i_valid), .out (a[3])) ;
    DFFRSE reg_a_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (b[2]), .clk (
           i_clock), .ce (i_valid), .out (a[2])) ;
    DFFRSE reg_a_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (b[1]), .clk (
           i_clock), .ce (i_valid), .out (a[1])) ;
    DFFRSE reg_a_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (b[0]), .clk (
           i_clock), .ce (i_valid), .out (a[0])) ;
    DFFE reg_row_valid2_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         row_valid1[7]), .clk (i_clock), .ce (valid[4]), .out (row_valid2[7])) ;
    DFFE reg_row_valid2_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         row_valid1[6]), .clk (i_clock), .ce (valid[4]), .out (row_valid2[6])) ;
    DFFE reg_row_valid2_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         row_valid1[5]), .clk (i_clock), .ce (valid[4]), .out (row_valid2[5])) ;
    DFFE reg_row_valid2_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         row_valid1[4]), .clk (i_clock), .ce (valid[4]), .out (row_valid2[4])) ;
    DFFE reg_row_valid2_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         row_valid1[3]), .clk (i_clock), .ce (valid[4]), .out (row_valid2[3])) ;
    DFFE reg_row_valid2_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         row_valid1[2]), .clk (i_clock), .ce (valid[4]), .out (row_valid2[2])) ;
    DFFE reg_row_valid2_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         row_valid1[1]), .clk (i_clock), .ce (valid[4]), .out (row_valid2[1])) ;
    DFFE reg_row_valid2_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         row_valid1[0]), .clk (i_clock), .ce (valid[4]), .out (row_valid2[0])) ;
    DFFE reg_column_valid2_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column_valid1[7]), .clk (i_clock), .ce (valid[4]), .out (
         column_valid2[7])) ;
    DFFE reg_column_valid2_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column_valid1[6]), .clk (i_clock), .ce (valid[4]), .out (
         column_valid2[6])) ;
    DFFE reg_column_valid2_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column_valid1[5]), .clk (i_clock), .ce (valid[4]), .out (
         column_valid2[5])) ;
    DFFE reg_column_valid2_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column_valid1[4]), .clk (i_clock), .ce (valid[4]), .out (
         column_valid2[4])) ;
    DFFE reg_column_valid2_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column_valid1[3]), .clk (i_clock), .ce (valid[4]), .out (
         column_valid2[3])) ;
    DFFE reg_column_valid2_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column_valid1[2]), .clk (i_clock), .ce (valid[4]), .out (
         column_valid2[2])) ;
    DFFE reg_column_valid2_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column_valid1[1]), .clk (i_clock), .ce (valid[4]), .out (
         column_valid2[1])) ;
    DFFE reg_column_valid2_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column_valid1[0]), .clk (i_clock), .ce (valid[4]), .out (
         column_valid2[0])) ;
    DFFE reg_row_valid1_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_row[7]), .clk (i_clock), .ce (valid[0]), .out (row_valid1[7])) ;
    DFFE reg_row_valid1_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_row[6]), .clk (i_clock), .ce (valid[0]), .out (row_valid1[6])) ;
    DFFE reg_row_valid1_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_row[5]), .clk (i_clock), .ce (valid[0]), .out (row_valid1[5])) ;
    DFFE reg_row_valid1_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_row[4]), .clk (i_clock), .ce (valid[0]), .out (row_valid1[4])) ;
    DFFE reg_row_valid1_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_row[3]), .clk (i_clock), .ce (valid[0]), .out (row_valid1[3])) ;
    DFFE reg_row_valid1_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_row[2]), .clk (i_clock), .ce (valid[0]), .out (row_valid1[2])) ;
    DFFE reg_row_valid1_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_row[1]), .clk (i_clock), .ce (valid[0]), .out (row_valid1[1])) ;
    DFFE reg_row_valid1_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_row[0]), .clk (i_clock), .ce (valid[0]), .out (row_valid1[0])) ;
    DFFE reg_column_valid1_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column[7]), .clk (i_clock), .ce (valid[0]), .out (column_valid1[7])) ;
    DFFE reg_column_valid1_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column[6]), .clk (i_clock), .ce (valid[0]), .out (column_valid1[6])) ;
    DFFE reg_column_valid1_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column[5]), .clk (i_clock), .ce (valid[0]), .out (column_valid1[5])) ;
    DFFE reg_column_valid1_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column[4]), .clk (i_clock), .ce (valid[0]), .out (column_valid1[4])) ;
    DFFE reg_column_valid1_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column[3]), .clk (i_clock), .ce (valid[0]), .out (column_valid1[3])) ;
    DFFE reg_column_valid1_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column[2]), .clk (i_clock), .ce (valid[0]), .out (column_valid1[2])) ;
    DFFE reg_column_valid1_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column[1]), .clk (i_clock), .ce (valid[0]), .out (column_valid1[1])) ;
    DFFE reg_column_valid1_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         column[0]), .clk (i_clock), .ce (valid[0]), .out (column_valid1[0])) ;
    DFFRSE reg_valid_6_ (.set (debug_num_5[0]), .reset (i_reset), .in (valid[5])
           , .clk (i_clock), .ce (debug_num_5[1]), .out (valid[6])) ;
    DFFRSE reg_valid_5_ (.set (debug_num_5[0]), .reset (i_reset), .in (valid[4])
           , .clk (i_clock), .ce (debug_num_5[1]), .out (valid[5])) ;
    DFFRSE reg_valid_4_ (.set (debug_num_5[0]), .reset (i_reset), .in (valid[3])
           , .clk (i_clock), .ce (debug_num_5[1]), .out (valid[4])) ;
    DFFRSE reg_valid_3_ (.set (debug_num_5[0]), .reset (i_reset), .in (valid[2])
           , .clk (i_clock), .ce (debug_num_5[1]), .out (valid[3])) ;
    DFFRSE reg_valid_2_ (.set (debug_num_5[0]), .reset (i_reset), .in (valid[1])
           , .clk (i_clock), .ce (debug_num_5[1]), .out (valid[2])) ;
    DFFRSE reg_valid_1_ (.set (debug_num_5[0]), .reset (i_reset), .in (valid[0])
           , .clk (i_clock), .ce (debug_num_5[1]), .out (valid[1])) ;
    DFFRSE reg_valid_0_ (.set (debug_num_5[0]), .reset (i_reset), .in (i_valid)
           , .clk (i_clock), .ce (debug_num_5[1]), .out (valid[0])) ;
    DFF reg_r3_9_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[9]), .clk (i_clock), .out (r3[9])) ;
    DFF reg_r3_8_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[8]), .clk (i_clock), .out (r3[8])) ;
    DFF reg_r3_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[7]), .clk (i_clock), .out (r3[7])) ;
    DFF reg_r3_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[6]), .clk (i_clock), .out (r3[6])) ;
    DFF reg_r3_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[5]), .clk (i_clock), .out (r3[5])) ;
    DFF reg_r3_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[4]), .clk (i_clock), .out (r3[4])) ;
    DFF reg_r3_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[3]), .clk (i_clock), .out (r3[3])) ;
    DFF reg_r3_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[2]), .clk (i_clock), .out (r3[2])) ;
    DFF reg_r3_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[1]), .clk (i_clock), .out (r3[1])) ;
    DFF reg_r3_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add2[0]), .clk (i_clock), .out (r3[0])) ;
    DFF reg_r2_8_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[8]), .clk (i_clock), .out (r2[8])) ;
    DFF reg_r2_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[7]), .clk (i_clock), .out (r2[7])) ;
    DFF reg_r2_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[6]), .clk (i_clock), .out (r2[6])) ;
    DFF reg_r2_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[5]), .clk (i_clock), .out (r2[5])) ;
    DFF reg_r2_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[4]), .clk (i_clock), .out (r2[4])) ;
    DFF reg_r2_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[3]), .clk (i_clock), .out (r2[3])) ;
    DFF reg_r2_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[2]), .clk (i_clock), .out (r2[2])) ;
    DFF reg_r2_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[1]), .clk (i_clock), .out (r2[1])) ;
    DFF reg_r2_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add1[0]), .clk (i_clock), .out (r2[0])) ;
    DFF reg_r1_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_dir1_2_), .clk (i_clock), .out (r1[2])) ;
    DFF reg_r1_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        not_rtlc5n40), .clk (i_clock), .out (r1[1])) ;
    DFF reg_r1_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_dir1_0_), .clk (i_clock), .out (r1[0])) ;
    DFFE reg_temp_add_8_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[8]), .clk (i_clock), .ce (valid[1]), .out (temp_add[8])) ;
    DFFE reg_temp_add_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[7]), .clk (i_clock), .ce (valid[1]), .out (temp_add[7])) ;
    DFFE reg_temp_add_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[6]), .clk (i_clock), .ce (valid[1]), .out (temp_add[6])) ;
    DFFE reg_temp_add_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[5]), .clk (i_clock), .ce (valid[1]), .out (temp_add[5])) ;
    DFFE reg_temp_add_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[4]), .clk (i_clock), .ce (valid[1]), .out (temp_add[4])) ;
    DFFE reg_temp_add_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[3]), .clk (i_clock), .ce (valid[1]), .out (temp_add[3])) ;
    DFFE reg_temp_add_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[2]), .clk (i_clock), .ce (valid[1]), .out (temp_add[2])) ;
    DFFE reg_temp_add_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[1]), .clk (i_clock), .ce (valid[1]), .out (temp_add[1])) ;
    DFFE reg_temp_add_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r2[0]), .clk (i_clock), .ce (valid[1]), .out (temp_add[0])) ;
    DFFE reg_temp_dir_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r1[2]), .clk (i_clock), .ce (valid[1]), .out (temp_dir[2])) ;
    DFFE reg_temp_dir_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r1[1]), .clk (i_clock), .ce (valid[1]), .out (temp_dir[1])) ;
    DFFE reg_temp_dir_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r1[0]), .clk (i_clock), .ce (valid[1]), .out (temp_dir[0])) ;
    DFFE reg_temp_max_9_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[9]), .clk (i_clock), .ce (valid[1]), .out (temp_max[9])) ;
    DFFE reg_temp_max_8_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[8]), .clk (i_clock), .ce (valid[1]), .out (temp_max[8])) ;
    DFFE reg_temp_max_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[7]), .clk (i_clock), .ce (valid[1]), .out (temp_max[7])) ;
    DFFE reg_temp_max_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[6]), .clk (i_clock), .ce (valid[1]), .out (temp_max[6])) ;
    DFFE reg_temp_max_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[5]), .clk (i_clock), .ce (valid[1]), .out (temp_max[5])) ;
    DFFE reg_temp_max_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[4]), .clk (i_clock), .ce (valid[1]), .out (temp_max[4])) ;
    DFFE reg_temp_max_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[3]), .clk (i_clock), .ce (valid[1]), .out (temp_max[3])) ;
    DFFE reg_temp_max_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[2]), .clk (i_clock), .ce (valid[1]), .out (temp_max[2])) ;
    DFFE reg_temp_max_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[1]), .clk (i_clock), .ce (valid[1]), .out (temp_max[1])) ;
    DFFE reg_temp_max_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         r3[0]), .clk (i_clock), .ce (valid[1]), .out (temp_max[0])) ;
    DFF reg_r6_12_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[12]), .clk (i_clock), .out (r6[12])) ;
    DFF reg_r6_11_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[11]), .clk (i_clock), .out (r6[11])) ;
    DFF reg_r6_10_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[10]), .clk (i_clock), .out (r6[10])) ;
    DFF reg_r6_9_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[9]), .clk (i_clock), .out (r6[9])) ;
    DFF reg_r6_8_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[8]), .clk (i_clock), .out (r6[8])) ;
    DFF reg_r6_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[7]), .clk (i_clock), .out (r6[7])) ;
    DFF reg_r6_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[6]), .clk (i_clock), .out (r6[6])) ;
    DFF reg_r6_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[5]), .clk (i_clock), .out (r6[5])) ;
    DFF reg_r6_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[4]), .clk (i_clock), .out (r6[4])) ;
    DFF reg_r6_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[3]), .clk (i_clock), .out (r6[3])) ;
    DFF reg_r6_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[2]), .clk (i_clock), .out (r6[2])) ;
    DFF reg_r6_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[1]), .clk (i_clock), .out (r6[1])) ;
    DFF reg_r6_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        o_add3[0]), .clk (i_clock), .out (r6[0])) ;
    DFFE reg_r5_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_dir2[2]), .clk (i_clock), .ce (not_valid_5), .out (r5[2])) ;
    DFFE reg_r5_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_dir2[1]), .clk (i_clock), .ce (not_valid_5), .out (r5[1])) ;
    DFFE reg_r5_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_dir2[0]), .clk (i_clock), .ce (not_valid_5), .out (r5[0])) ;
    DFFE reg_r4_9_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[9]), .clk (i_clock), .ce (not_valid_5), .out (r4[9])) ;
    DFFE reg_r4_8_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[8]), .clk (i_clock), .ce (not_valid_5), .out (r4[8])) ;
    DFFE reg_r4_7_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[7]), .clk (i_clock), .ce (not_valid_5), .out (r4[7])) ;
    DFFE reg_r4_6_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[6]), .clk (i_clock), .ce (not_valid_5), .out (r4[6])) ;
    DFFE reg_r4_5_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[5]), .clk (i_clock), .ce (not_valid_5), .out (r4[5])) ;
    DFFE reg_r4_4_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[4]), .clk (i_clock), .ce (not_valid_5), .out (r4[4])) ;
    DFFE reg_r4_3_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[3]), .clk (i_clock), .ce (not_valid_5), .out (r4[3])) ;
    DFFE reg_r4_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[2]), .clk (i_clock), .ce (not_valid_5), .out (r4[2])) ;
    DFFE reg_r4_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[1]), .clk (i_clock), .ce (not_valid_5), .out (r4[1])) ;
    DFFE reg_r4_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
         o_max1[0]), .clk (i_clock), .ce (not_valid_5), .out (r4[0])) ;
    DFFE reg_r9 (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (rtlc20n140
         ), .clk (i_clock), .ce (valid[6]), .out (o_edge)) ;
    DFFE reg_r8_2_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (r5[2])
         , .clk (i_clock), .ce (valid[6]), .out (r8[2])) ;
    DFFE reg_r8_1_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (r5[1])
         , .clk (i_clock), .ce (valid[6]), .out (r8[1])) ;
    DFFE reg_r8_0_ (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (r5[0])
         , .clk (i_clock), .ce (valid[6]), .out (r8[0])) ;
    DFF reg_output_valid_reg (.set (debug_num_5[0]), .reset (debug_num_5[0]), .in (
        rtlc21n57), .clk (i_clock), .out (o_valid)) ;
    and (rtlcn4, not_valid_0, not_valid_1) ;
    and (rtlc5_P9_SS0_n35, rtlcn4, not_valid_2) ;
    and (rtlc5_P8_SS0_n32, rtlcn4, valid[2]) ;
    or (rtlc_300_or_59_nx0, i_valid, rtlc12n82) ;
    or (rtlcn3, rtlc_300_or_59_nx0, rtlcs0) ;
    assign NOT_r6_0_ = ~r6[0] ;
    sub_12u_12u_12u_0 sub_out_sub13_0 (.cin (NOT_r6_0_), .a ({r4[9],r4[8],r4[7],
                      r4[6],r4[5],r4[4],r4[3],r4[2],r4[1],r4[0],debug_num_5[0],
                      debug_num_5[0]}), .b ({r6[12],r6[11],r6[10],r6[9],r6[8],
                      r6[7],r6[6],r6[5],r6[4],r6[3],r6[2],r6[1]}), .d ({
                      sub_out_12_,sub_out_11_,sub_out_10_,sub_out_9_,sub_out_8_,
                      sub_out_7_,xmplr_dummy [1],xmplr_dummy [2],xmplr_dummy [3]
                      ,xmplr_dummy [4],xmplr_dummy [5],xmplr_dummy [6]}), .cout (
                      rtlcn1880)) ;
    ram_new_0_work_kirsch_8_8_main_unfold_1777 mem (.wr_data1 ({i_pixel[7],
                                               i_pixel[6],i_pixel[5],i_pixel[4],
                                               i_pixel[3],i_pixel[2],i_pixel[1],
                                               i_pixel[0]}), .rd_data1 ({
                                               mem_out_0_[7],mem_out_0_[6],
                                               mem_out_0_[5],mem_out_0_[4],
                                               mem_out_0_[3],mem_out_0_[2],
                                               mem_out_0_[1],mem_out_0_[0]}), .addr1 (
                                               {column[7],column[6],column[5],
                                               column[4],column[3],column[2],
                                               column[1],column[0]}), .wr_clk1 (
                                               i_clock), .rd_clk1 (i_clock), .wr_ena1 (
                                               mem_wren[0]), .rd_ena1 (
                                               debug_num_5[1]), .ena1 (
                                               debug_num_5[1]), .rst1 (
                                               debug_num_5[0]), .regce1 (
                                               debug_num_5[1]), .regrst1 (
                                               debug_num_5[0])) ;
    ram_new_1_work_kirsch_8_8_main_unfold_1777 mem_0 (.wr_data1 ({i_pixel[7],
                                               i_pixel[6],i_pixel[5],i_pixel[4],
                                               i_pixel[3],i_pixel[2],i_pixel[1],
                                               i_pixel[0]}), .rd_data1 ({
                                               mem_out_1_[7],mem_out_1_[6],
                                               mem_out_1_[5],mem_out_1_[4],
                                               mem_out_1_[3],mem_out_1_[2],
                                               mem_out_1_[1],mem_out_1_[0]}), .addr1 (
                                               {column[7],column[6],column[5],
                                               column[4],column[3],column[2],
                                               column[1],column[0]}), .wr_clk1 (
                                               i_clock), .rd_clk1 (i_clock), .wr_ena1 (
                                               mem_wren[1]), .rd_ena1 (
                                               debug_num_5[1]), .ena1 (
                                               debug_num_5[1]), .rst1 (
                                               debug_num_5[0]), .regce1 (
                                               debug_num_5[1]), .regrst1 (
                                               debug_num_5[0])) ;
    or_6u_6u modgen_or_0 (.a ({sub_out_9_,sub_out_10_,sub_out_11_,sub_out_12_,
             not_rtlcn1880,rtlc20n137}), .d (rtlc20n138)) ;
    or_7u_7u modgen_or_1 (.a ({row_valid2[2],row_valid2[3],row_valid2[4],
             row_valid2[5],row_valid2[6],row_valid2[7],row_valid2[1]}), .d (
             rtlcn0)) ;
    or_7u_7u modgen_or_2 (.a ({column_valid2[2],column_valid2[3],
             column_valid2[4],column_valid2[5],column_valid2[6],column_valid2[7]
             ,column_valid2[1]}), .d (rtlcn1)) ;
    and_9u_9u modgen_and_3 (.a ({column[7],column[6],column[5],column[4],
              column[3],column[2],column[1],column[0],valid[0]}), .d (rtlcn9)) ;
    and_17u_17u modgen_and_5 (.a ({row_valid2[7],row_valid2[6],row_valid2[5],
                row_valid2[4],row_valid2[3],row_valid2[2],row_valid2[1],
                row_valid2[0],column_valid2[7],column_valid2[6],column_valid2[5]
                ,column_valid2[4],column_valid2[3],column_valid2[2],
                column_valid2[1],column_valid2[0],o_valid}), .d (rtlc12n82)) ;
endmodule


module and_17u_17u ( a, d ) ;

    input [16:0]a ;
    output d ;







    sim_and #(17) ix22 (.a (a), .d (d)) ;
endmodule


module and_9u_9u ( a, d ) ;

    input [8:0]a ;
    output d ;







    sim_and #(9) ix14 (.a (a), .d (d)) ;
endmodule


module or_7u_7u ( a, d ) ;

    input [6:0]a ;
    output d ;







    sim_or #(7) ix12 (.a (a), .d (d)) ;
endmodule


module or_6u_6u ( a, d ) ;

    input [5:0]a ;
    output d ;







    sim_or #(6) ix11 (.a (a), .d (d)) ;
endmodule


module ram_new_1_work_kirsch_8_8_main_unfold_1777 ( wr_data1, rd_data1, addr1, 
                                                    wr_clk1, rd_clk1, wr_ena1, 
                                                    rd_ena1, ena1, rst1, regce1, 
                                                    regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen, 
         dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen, 
         dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen, 
         dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen, 
         dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen, 
         dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen, 
         dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen, 
         dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen, nx36, nx38;



    assign nx32 = 1'b0 ;
    assign nx34 = 1'b1 ;
    DFF reg_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[7]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen)) ;
    DFF reg_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[6]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen)) ;
    DFF reg_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[5]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen)) ;
    DFF reg_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[4]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen)) ;
    DFF reg_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[3]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen)) ;
    DFF reg_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[2]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen)) ;
    DFF reg_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[1]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen)) ;
    DFF reg_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[0]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen)) ;
    clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F mem_0 (.clk (wr_clk1), .we (nx36), .address (
                                          {addr1[7],addr1[6],addr1[5],addr1[4],
                                          addr1[3],addr1[2],addr1[1],addr1[0]})
                                          , .data ({wr_data1[7],wr_data1[6],
                                          wr_data1[5],wr_data1[4],wr_data1[3],
                                          wr_data1[2],wr_data1[1],wr_data1[0]})
                                          , .q ({rd_data1[7],rd_data1[6],
                                          rd_data1[5],rd_data1[4],rd_data1[3],
                                          rd_data1[2],rd_data1[1],rd_data1[0]})
                                          , .addr2 ({
                                          dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen
                                          })) ;
    and (nx36, wr_ena1, ena1) ;
    and (nx38, rd_ena1, ena1) ;
endmodule


module ram_new_0_work_kirsch_8_8_main_unfold_1777 ( wr_data1, rd_data1, addr1, 
                                                    wr_clk1, rd_clk1, wr_ena1, 
                                                    rd_ena1, ena1, rst1, regce1, 
                                                    regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen, 
         dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen, 
         dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen, 
         dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen, 
         dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen, 
         dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen, 
         dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen, 
         dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen, nx36, nx38;



    assign nx32 = 1'b0 ;
    assign nx34 = 1'b1 ;
    DFF reg_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[7]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen)) ;
    DFF reg_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[6]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen)) ;
    DFF reg_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[5]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen)) ;
    DFF reg_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[4]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen)) ;
    DFF reg_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[3]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen)) ;
    DFF reg_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[2]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen)) ;
    DFF reg_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[1]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen)) ;
    DFF reg_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen_MGC032 (.set (nx32), .reset (
        nx32), .in (addr1[0]), .clk (rd_clk1), .out (
        dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen)) ;
    clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F mem (.clk (wr_clk1), .we (nx36), .address (
                                          {addr1[7],addr1[6],addr1[5],addr1[4],
                                          addr1[3],addr1[2],addr1[1],addr1[0]})
                                          , .data ({wr_data1[7],wr_data1[6],
                                          wr_data1[5],wr_data1[4],wr_data1[3],
                                          wr_data1[2],wr_data1[1],wr_data1[0]})
                                          , .q ({rd_data1[7],rd_data1[6],
                                          rd_data1[5],rd_data1[4],rd_data1[3],
                                          rd_data1[2],rd_data1[1],rd_data1[0]})
                                          , .addr2 ({
                                          dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen
                                          ,
                                          dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen
                                          })) ;
    and (nx36, wr_ena1, ena1) ;
    and (nx38, rd_ena1, ena1) ;
endmodule


module clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F ( clk, we, address, data, q, addr2
                                                ) ;

    input clk ;
    input we ;
    input [7:0]address ;
    input [7:0]data ;
    output [7:0]q ;
    input [7:0]addr2 ;




    wire [49:0] xmplr_dummy ;




    sim_ram #(8,8,256,"true","false","false","true","false","false","true"
,"false","false","false") ix0 (.clk (clk), .we (we), .address (address), .data (data), .q (q)
            , .addr2 (addr2)) ;
endmodule


module sub_12u_12u_12u_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;







    sim_sub #(12) ix40 (.cin (cin), .a (a), .b (b), .d (d), .cout (cout)) ;
endmodule


module counter_up_cnt_en_sclear_clock_0_8_cx6_kirsch_8_8 ( clock, q, clk_en, 
                                                           aclear, sload, data, 
                                                           aset, sclear, updn, 
                                                           cnt_en ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, nx40, sclear_and_0_dup_103, sclear_and_1_dup_104, 
         sclear_and_2_dup_105, sclear_and_3_dup_106, sclear_and_4_dup_107, 
         sclear_and_5_dup_108, sclear_and_6_dup_109, sclear_and_7_dup_110, 
         inc_d_0_, inc_d_1_, inc_d_2_, inc_d_3_, inc_d_4_, inc_d_5_, inc_d_6_, 
         inc_d_7_, NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    or (nx40, cnt_en, sclear) ;
    DFFE reg_q_7_ (.set (GND), .reset (GND), .in (sclear_and_7_dup_110), .clk (
         clock), .ce (nx40), .out (q[7])) ;
    DFFE reg_q_6_ (.set (GND), .reset (GND), .in (sclear_and_6_dup_109), .clk (
         clock), .ce (nx40), .out (q[6])) ;
    DFFE reg_q_5_ (.set (GND), .reset (GND), .in (sclear_and_5_dup_108), .clk (
         clock), .ce (nx40), .out (q[5])) ;
    DFFE reg_q_4_ (.set (GND), .reset (GND), .in (sclear_and_4_dup_107), .clk (
         clock), .ce (nx40), .out (q[4])) ;
    DFFE reg_q_3_ (.set (GND), .reset (GND), .in (sclear_and_3_dup_106), .clk (
         clock), .ce (nx40), .out (q[3])) ;
    DFFE reg_q_2_ (.set (GND), .reset (GND), .in (sclear_and_2_dup_105), .clk (
         clock), .ce (nx40), .out (q[2])) ;
    DFFE reg_q_1_ (.set (GND), .reset (GND), .in (sclear_and_1_dup_104), .clk (
         clock), .ce (nx40), .out (q[1])) ;
    DFFE reg_q_0_ (.set (GND), .reset (GND), .in (sclear_and_0_dup_103), .clk (
         clock), .ce (nx40), .out (q[0])) ;
    inc_8u_8u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_7_,inc_d_6_,inc_d_5_,
                  inc_d_4_,inc_d_3_,inc_d_2_,inc_d_1_,inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_103, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_104, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_105, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_106, inc_d_3_, NOT_sclear) ;
    and (sclear_and_4_dup_107, inc_d_4_, NOT_sclear) ;
    and (sclear_and_5_dup_108, inc_d_5_, NOT_sclear) ;
    and (sclear_and_6_dup_109, inc_d_6_, NOT_sclear) ;
    and (sclear_and_7_dup_110, inc_d_7_, NOT_sclear) ;
endmodule


module counter_up_cnt_en_sclear_clock_0_8_cx5_kirsch_8_8 ( clock, q, clk_en, 
                                                           aclear, sload, data, 
                                                           aset, sclear, updn, 
                                                           cnt_en ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, nx40, sclear_and_0_dup_103, sclear_and_1_dup_104, 
         sclear_and_2_dup_105, sclear_and_3_dup_106, sclear_and_4_dup_107, 
         sclear_and_5_dup_108, sclear_and_6_dup_109, sclear_and_7_dup_110, 
         inc_d_0_, inc_d_1_, inc_d_2_, inc_d_3_, inc_d_4_, inc_d_5_, inc_d_6_, 
         inc_d_7_, NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    or (nx40, cnt_en, sclear) ;
    DFFE reg_q_7_ (.set (GND), .reset (GND), .in (sclear_and_7_dup_110), .clk (
         clock), .ce (nx40), .out (q[7])) ;
    DFFE reg_q_6_ (.set (GND), .reset (GND), .in (sclear_and_6_dup_109), .clk (
         clock), .ce (nx40), .out (q[6])) ;
    DFFE reg_q_5_ (.set (GND), .reset (GND), .in (sclear_and_5_dup_108), .clk (
         clock), .ce (nx40), .out (q[5])) ;
    DFFE reg_q_4_ (.set (GND), .reset (GND), .in (sclear_and_4_dup_107), .clk (
         clock), .ce (nx40), .out (q[4])) ;
    DFFE reg_q_3_ (.set (GND), .reset (GND), .in (sclear_and_3_dup_106), .clk (
         clock), .ce (nx40), .out (q[3])) ;
    DFFE reg_q_2_ (.set (GND), .reset (GND), .in (sclear_and_2_dup_105), .clk (
         clock), .ce (nx40), .out (q[2])) ;
    DFFE reg_q_1_ (.set (GND), .reset (GND), .in (sclear_and_1_dup_104), .clk (
         clock), .ce (nx40), .out (q[1])) ;
    DFFE reg_q_0_ (.set (GND), .reset (GND), .in (sclear_and_0_dup_103), .clk (
         clock), .ce (nx40), .out (q[0])) ;
    inc_8u_8u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_7_,inc_d_6_,inc_d_5_,
                  inc_d_4_,inc_d_3_,inc_d_2_,inc_d_1_,inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_103, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_104, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_105, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_106, inc_d_3_, NOT_sclear) ;
    and (sclear_and_4_dup_107, inc_d_4_, NOT_sclear) ;
    and (sclear_and_5_dup_108, inc_d_5_, NOT_sclear) ;
    and (sclear_and_6_dup_109, inc_d_6_, NOT_sclear) ;
    and (sclear_and_7_dup_110, inc_d_7_, NOT_sclear) ;
endmodule


module inc_8u_8u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [7:0]a ;
    output [7:0]d ;
    output cout ;







    sim_inc #(8) ix21 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module select_4_4 ( a, b, d ) ;

    input [3:0]a ;
    input [3:0]b ;
    output d ;







    sim_select #(4) ix13 (.a (a), .b (b), .d (d)) ;
endmodule


module stage2_hardware ( i_dir1_stage2, i_dir2_stage2, i_pix1_stage2, 
                         i_pix2_stage2, i_add_op1_stage2, i_add_op2_stage2, 
                         o_add_op12_stage2, o_max_stage2, o_max_dir_stage2 ) ;

    input [2:0]i_dir1_stage2 ;
    input [2:0]i_dir2_stage2 ;
    input [9:0]i_pix1_stage2 ;
    input [9:0]i_pix2_stage2 ;
    input [12:0]i_add_op1_stage2 ;
    input [12:0]i_add_op2_stage2 ;
    output [12:0]o_add_op12_stage2 ;
    output [9:0]o_max_stage2 ;
    output [2:0]o_max_dir_stage2 ;

    wire GND;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    custom_max_10 u_max2 (.i_pix1 ({i_pix1_stage2[9],i_pix1_stage2[8],
                  i_pix1_stage2[7],i_pix1_stage2[6],i_pix1_stage2[5],
                  i_pix1_stage2[4],i_pix1_stage2[3],i_pix1_stage2[2],
                  i_pix1_stage2[1],i_pix1_stage2[0]}), .i_pix2 ({
                  i_pix2_stage2[9],i_pix2_stage2[8],i_pix2_stage2[7],
                  i_pix2_stage2[6],i_pix2_stage2[5],i_pix2_stage2[4],
                  i_pix2_stage2[3],i_pix2_stage2[2],i_pix2_stage2[1],
                  i_pix2_stage2[0]}), .i_dir1 ({i_dir1_stage2[2],
                  i_dir1_stage2[1],i_dir1_stage2[0]}), .i_dir2 ({
                  i_dir2_stage2[2],i_dir2_stage2[1],i_dir2_stage2[0]}), .o_max_dir (
                  {o_max_dir_stage2[2],o_max_dir_stage2[1],o_max_dir_stage2[0]})
                  , .o_max_pix ({o_max_stage2[9],o_max_stage2[8],o_max_stage2[7]
                  ,o_max_stage2[6],o_max_stage2[5],o_max_stage2[4],
                  o_max_stage2[3],o_max_stage2[2],o_max_stage2[1],
                  o_max_stage2[0]})) ;
    add_13u_13u_13u_0_0 o_add_op12_stage2_add13_0 (.cin (GND), .a ({
                        i_add_op1_stage2[12],i_add_op1_stage2[11],
                        i_add_op1_stage2[10],i_add_op1_stage2[9],
                        i_add_op1_stage2[8],i_add_op1_stage2[7],
                        i_add_op1_stage2[6],i_add_op1_stage2[5],
                        i_add_op1_stage2[4],i_add_op1_stage2[3],
                        i_add_op1_stage2[2],i_add_op1_stage2[1],
                        i_add_op1_stage2[0]}), .b ({i_add_op2_stage2[12],
                        i_add_op2_stage2[11],i_add_op2_stage2[10],
                        i_add_op2_stage2[9],i_add_op2_stage2[8],
                        i_add_op2_stage2[7],i_add_op2_stage2[6],
                        i_add_op2_stage2[5],i_add_op2_stage2[4],
                        i_add_op2_stage2[3],i_add_op2_stage2[2],
                        i_add_op2_stage2[1],i_add_op2_stage2[0]}), .d ({
                        o_add_op12_stage2[12],o_add_op12_stage2[11],
                        o_add_op12_stage2[10],o_add_op12_stage2[9],
                        o_add_op12_stage2[8],o_add_op12_stage2[7],
                        o_add_op12_stage2[6],o_add_op12_stage2[5],
                        o_add_op12_stage2[4],o_add_op12_stage2[3],
                        o_add_op12_stage2[2],o_add_op12_stage2[1],
                        o_add_op12_stage2[0]})) ;
endmodule


module add_13u_13u_13u_0_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [12:0]a ;
    input [12:0]b ;
    output [12:0]d ;
    output cout ;







    sim_add #(13) ix44 (.cin (cin), .a (a), .b (b), .d (d), .cout (cout)) ;
endmodule


module custom_max_10 ( i_pix1, i_pix2, i_dir1, i_dir2, o_max_dir, o_max_pix ) ;

    input [9:0]i_pix1 ;
    input [9:0]i_pix2 ;
    input [2:0]i_dir1 ;
    input [2:0]i_dir2 ;
    output [2:0]o_max_dir ;
    output [9:0]o_max_pix ;

    wire nx4, nx7;



    gt_10u_10u rtlc0_copy_n24_gt_19 (.a ({i_pix1[9],i_pix1[8],i_pix1[7],
               i_pix1[6],i_pix1[5],i_pix1[4],i_pix1[3],i_pix1[2],i_pix1[1],
               i_pix1[0]}), .b ({i_pix2[9],i_pix2[8],i_pix2[7],i_pix2[6],
               i_pix2[5],i_pix2[4],i_pix2[3],i_pix2[2],i_pix2[1],i_pix2[0]}), .d (
               nx4)) ;
    gt_10u_10u rtlc2_15_gt_20 (.a ({i_pix2[9],i_pix2[8],i_pix2[7],i_pix2[6],
               i_pix2[5],i_pix2[4],i_pix2[3],i_pix2[2],i_pix2[1],i_pix2[0]}), .b (
               {i_pix1[9],i_pix1[8],i_pix1[7],i_pix1[6],i_pix1[5],i_pix1[4],
               i_pix1[3],i_pix1[2],i_pix1[1],i_pix1[0]}), .d (nx7)) ;
    assign o_max_pix[0] = nx4 ? i_pix1[0] : i_pix2[0] ;
    assign o_max_pix[1] = nx4 ? i_pix1[1] : i_pix2[1] ;
    assign o_max_pix[2] = nx4 ? i_pix1[2] : i_pix2[2] ;
    assign o_max_pix[3] = nx4 ? i_pix1[3] : i_pix2[3] ;
    assign o_max_pix[4] = nx4 ? i_pix1[4] : i_pix2[4] ;
    assign o_max_pix[5] = nx4 ? i_pix1[5] : i_pix2[5] ;
    assign o_max_pix[6] = nx4 ? i_pix1[6] : i_pix2[6] ;
    assign o_max_pix[7] = nx4 ? i_pix1[7] : i_pix2[7] ;
    assign o_max_pix[8] = nx4 ? i_pix1[8] : i_pix2[8] ;
    assign o_max_pix[9] = nx4 ? i_pix1[9] : i_pix2[9] ;
    assign o_max_dir[0] = nx7 ? i_dir2[0] : i_dir1[0] ;
    assign o_max_dir[1] = nx7 ? i_dir2[1] : i_dir1[1] ;
    assign o_max_dir[2] = nx7 ? i_dir2[2] : i_dir1[2] ;
endmodule


module gt_10u_10u ( a, b, d ) ;

    input [9:0]a ;
    input [9:0]b ;
    output d ;







    sim_gt #(10,"false") ix25 (.a (a), .b (b), .d (d)) ;
endmodule


module stage1_hardware ( i_dir1_stage1, i_dir2_stage1, i_pix1_stage1, 
                         i_pix2_stage1, i_add_op1_stage1, i_add_op2_stage1, 
                         o_add_op12_stage1, o_max_add_stage1, o_max_dir_stage1
                          ) ;

    input [2:0]i_dir1_stage1 ;
    input [2:0]i_dir2_stage1 ;
    input [7:0]i_pix1_stage1 ;
    input [7:0]i_pix2_stage1 ;
    input [7:0]i_add_op1_stage1 ;
    input [7:0]i_add_op2_stage1 ;
    output [8:0]o_add_op12_stage1 ;
    output [9:0]o_max_add_stage1 ;
    output [2:0]o_max_dir_stage1 ;

    wire [7:0]custom_max_pix_output;
    wire i_dir2_stage1_2__rename245;
    wire [1:0] xmplr_dummy ;




    assign o_max_dir_stage1[1] = 1'b0 ;
    custom_max_8 u_max1 (.i_pix1 ({i_pix1_stage1[7],i_pix1_stage1[6],
                 i_pix1_stage1[5],i_pix1_stage1[4],i_pix1_stage1[3],
                 i_pix1_stage1[2],i_pix1_stage1[1],i_pix1_stage1[0]}), .i_pix2 (
                 {i_pix2_stage1[7],i_pix2_stage1[6],i_pix2_stage1[5],
                 i_pix2_stage1[4],i_pix2_stage1[3],i_pix2_stage1[2],
                 i_pix2_stage1[1],i_pix2_stage1[0]}), .i_dir1 ({
                 o_max_dir_stage1[1],xmplr_dummy [0],i_dir1_stage1[0]}), .i_dir2 (
                 {i_dir2_stage1_2__rename245,o_max_dir_stage1[1],
                 i_dir2_stage1[0]}), .o_max_dir ({o_max_dir_stage1[2],
                 xmplr_dummy [1],o_max_dir_stage1[0]}), .o_max_pix ({
                 custom_max_pix_output[7],custom_max_pix_output[6],
                 custom_max_pix_output[5],custom_max_pix_output[4],
                 custom_max_pix_output[3],custom_max_pix_output[2],
                 custom_max_pix_output[1],custom_max_pix_output[0]})) ;
    add_8u_8u_8u_0_0 o_add_op12_stage1_add8_0 (.cin (o_max_dir_stage1[1]), .a ({
                     i_add_op1_stage1[7],i_add_op1_stage1[6],i_add_op1_stage1[5]
                     ,i_add_op1_stage1[4],i_add_op1_stage1[3],
                     i_add_op1_stage1[2],i_add_op1_stage1[1],i_add_op1_stage1[0]
                     }), .b ({i_add_op2_stage1[7],i_add_op2_stage1[6],
                     i_add_op2_stage1[5],i_add_op2_stage1[4],i_add_op2_stage1[3]
                     ,i_add_op2_stage1[2],i_add_op2_stage1[1],
                     i_add_op2_stage1[0]}), .d ({o_add_op12_stage1[7],
                     o_add_op12_stage1[6],o_add_op12_stage1[5],
                     o_add_op12_stage1[4],o_add_op12_stage1[3],
                     o_add_op12_stage1[2],o_add_op12_stage1[1],
                     o_add_op12_stage1[0]}), .cout (o_add_op12_stage1[8])) ;
    add_9u_9u_9u_0_0 o_max_add_stage1_add9_1 (.cin (o_max_dir_stage1[1]), .a ({
                     o_max_dir_stage1[1],custom_max_pix_output[7],
                     custom_max_pix_output[6],custom_max_pix_output[5],
                     custom_max_pix_output[4],custom_max_pix_output[3],
                     custom_max_pix_output[2],custom_max_pix_output[1],
                     custom_max_pix_output[0]}), .b ({o_add_op12_stage1[8],
                     o_add_op12_stage1[7],o_add_op12_stage1[6],
                     o_add_op12_stage1[5],o_add_op12_stage1[4],
                     o_add_op12_stage1[3],o_add_op12_stage1[2],
                     o_add_op12_stage1[1],o_add_op12_stage1[0]}), .d ({
                     o_max_add_stage1[8],o_max_add_stage1[7],o_max_add_stage1[6]
                     ,o_max_add_stage1[5],o_max_add_stage1[4],
                     o_max_add_stage1[3],o_max_add_stage1[2],o_max_add_stage1[1]
                     ,o_max_add_stage1[0]}), .cout (o_max_add_stage1[9])) ;
    assign i_dir2_stage1_2__rename245 = 1'b1 ;
endmodule


module add_9u_9u_9u_0_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;







    sim_add #(9) ix31 (.cin (cin), .a (a), .b (b), .d (d), .cout (cout)) ;
endmodule


module add_8u_8u_8u_0_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;







    sim_add #(8) ix29 (.cin (cin), .a (a), .b (b), .d (d), .cout (cout)) ;
endmodule


module custom_max_8 ( i_pix1, i_pix2, i_dir1, i_dir2, o_max_dir, o_max_pix ) ;

    input [7:0]i_pix1 ;
    input [7:0]i_pix2 ;
    input [2:0]i_dir1 ;
    input [2:0]i_dir2 ;
    output [2:0]o_max_dir ;
    output [7:0]o_max_pix ;

    wire nx4;



    gt_8u_8u rtlc0_copy_n22_gt_15 (.a ({i_pix1[7],i_pix1[6],i_pix1[5],i_pix1[4],
             i_pix1[3],i_pix1[2],i_pix1[1],i_pix1[0]}), .b ({i_pix2[7],i_pix2[6]
             ,i_pix2[5],i_pix2[4],i_pix2[3],i_pix2[2],i_pix2[1],i_pix2[0]}), .d (
             nx4)) ;
    gt_8u_8u rtlc2_15_gt_16 (.a ({i_pix2[7],i_pix2[6],i_pix2[5],i_pix2[4],
             i_pix2[3],i_pix2[2],i_pix2[1],i_pix2[0]}), .b ({i_pix1[7],i_pix1[6]
             ,i_pix1[5],i_pix1[4],i_pix1[3],i_pix1[2],i_pix1[1],i_pix1[0]}), .d (
             o_max_dir[2])) ;
    assign o_max_pix[0] = nx4 ? i_pix1[0] : i_pix2[0] ;
    assign o_max_pix[1] = nx4 ? i_pix1[1] : i_pix2[1] ;
    assign o_max_pix[2] = nx4 ? i_pix1[2] : i_pix2[2] ;
    assign o_max_pix[3] = nx4 ? i_pix1[3] : i_pix2[3] ;
    assign o_max_pix[4] = nx4 ? i_pix1[4] : i_pix2[4] ;
    assign o_max_pix[5] = nx4 ? i_pix1[5] : i_pix2[5] ;
    assign o_max_pix[6] = nx4 ? i_pix1[6] : i_pix2[6] ;
    assign o_max_pix[7] = nx4 ? i_pix1[7] : i_pix2[7] ;
    assign o_max_dir[0] = o_max_dir[2] ? i_dir2[0] : i_dir1[0] ;
    assign o_max_dir[1] = 1'b0 ;
endmodule


module gt_8u_8u ( a, b, d ) ;

    input [7:0]a ;
    input [7:0]b ;
    output d ;







    sim_gt #(8,"false") ix21 (.a (a), .b (b), .d (d)) ;
endmodule


module uw_uart ( clk, rst, kirschout, kirschdir, o_valid, i_mode, datain, 
                 o_pixavail, rxflex, txflex ) ;

    input clk ;
    input rst ;
    input kirschout ;
    input [2:0]kirschdir ;
    input o_valid ;
    input [1:0]i_mode ;
    output [7:0]datain ;
    output o_pixavail ;
    input rxflex ;
    output txflex ;

    wire [7:0]sdin;
    wire rxerr, rxrdy, rawrx, GND, sdout_6_, sdout_4_, sdout_3_, sdout_2_, 
         sdout_1_, sdout_0_;
    wire [7:0]rdata;
    wire state, dsend, mdata_7_, mdata_5_, mdata_3_, mdata_2_, mdata_1_, 
         mdata_0_, ack;
    wire [15:0]waitcount;
    wire ld_sdout, PWR, not_o_pixavail;
    wire [3:0]mdata_7n2ss1;
    wire mdata_7n5ss1_6_, mdata_7n5ss1_4_, mdata_7n5ss1_3_, mdata_7n5ss1_2_, 
         mdata_7n5ss1_1_, mdata_7n5ss1_0_, rtlc7n92, rtlc7n115, not_rxerr, 
         not_rtlcn58, rtlc7n145, rtlc7n148, rtlc7_X_0_n181, rtlc7n221, not_dsend, 
         rtlc10n48, not_rtlc10n48, rtlc10n75, rtlcn4, rtlcn5, rtlcn13, 
         not_rtlcn60, rtlcn47, rtlcn58, rtlcn60, rtlcn61, not_rtlc7n148, 
         not_state, rtlcn65, not_rtlc7n92, not_rtlcn73, not_o_valid, rtlcn73, 
         rtlcn74, not_rtlc7n145, not_rst, not_i_mode_1, rtlcn79, 
         not_waitcount_15, not_waitcount_14, not_waitcount_13, not_waitcount_12, 
         not_waitcount_11, not_waitcount_10, not_waitcount_9, not_waitcount_8, 
         not_waitcount_7, not_waitcount_4, not_waitcount_3, not_waitcount_1, 
         not_waitcount_0, rtlcn122, rtlc7_72_or_13_nx0;
    wire [16:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    UARTS i_uarts (.CLK (clk), .RST (rst), .Din ({sdout_6_,GND,sdout_4_,GND,
          sdout_3_,sdout_2_,sdout_1_,sdout_0_}), .LD (ld_sdout), .Rx (rawrx), .Baud (
          PWR), .Dout ({sdin[7],sdin[6],sdin[5],sdin[4],sdin[3],sdin[2],sdin[1],
          sdin[0]}), .Tx (txflex), .RxErr (rxerr), .RxRDY (rxrdy)) ;
    assign not_rxerr = ~rxerr ;
    or (rtlc7n92, o_pixavail, ack) ;
    assign not_rtlcn58 = ~rtlcn58 ;
    assign not_o_pixavail = ~o_pixavail ;
    assign not_rtlc7n148 = ~rtlc7n148 ;
    and (rtlcn5, not_rtlc7n148, rtlc7n92) ;
    or (rtlcn58, rtlc7n115, o_valid) ;
    assign not_state = ~state ;
    and (rtlcn13, not_state, dsend) ;
    and (rtlcn65, rtlc7n92, not_rtlcn58) ;
    assign not_rtlc7n92 = ~rtlc7n92 ;
    or (rtlcn61, rtlcn65, not_rtlcn73) ;
    and (rtlcn60, not_rtlc7n148, rtlcn61) ;
    assign not_rtlcn60 = ~rtlcn60 ;
    assign not_o_valid = ~o_valid ;
    or (rtlcn47, not_rtlc7n92, not_o_valid) ;
    assign not_rtlcn73 = ~rtlcn73 ;
    assign rtlc7n145 = rtlc7n92 ? not_rtlcn58 : not_rxerr ;
    or (rtlcn4, rxrdy, o_pixavail) ;
    assign not_rtlc7n145 = ~rtlc7n145 ;
    or (rtlcn74, not_rtlc7n145, rtlc7n148) ;
    assign not_rst = ~rst ;
    and (rtlc7n221, not_rst, rtlcn74) ;
    or (rtlc10n75, dsend, state) ;
    assign not_dsend = ~dsend ;
    assign not_rtlc10n48 = ~rtlc10n48 ;
    or (mdata_7n2ss1[0], kirschout, not_o_valid) ;
    assign not_i_mode_1 = ~i_mode[1] ;
    and (rtlc7n148, not_i_mode_1, i_mode[0]) ;
    and (mdata_7n5ss1_0_, mdata_7n2ss1[0], rtlcn5) ;
    or (rtlcn73, rtlc7n92, rxerr) ;
    or (rtlc10n48, not_dsend, state) ;
    or (mdata_7n2ss1[1], kirschdir[0], not_o_valid) ;
    and (mdata_7n5ss1_1_, mdata_7n2ss1[1], rtlcn5) ;
    or (mdata_7n2ss1[2], kirschdir[1], not_o_valid) ;
    and (mdata_7n5ss1_2_, mdata_7n2ss1[2], rtlcn5) ;
    or (mdata_7n2ss1[3], kirschdir[2], not_o_valid) ;
    and (mdata_7n5ss1_3_, mdata_7n2ss1[3], rtlcn5) ;
    or (mdata_7n5ss1_4_, rtlcn47, rtlc7n148) ;
    and (mdata_7n5ss1_6_, rtlcn47, not_rtlc7n148) ;
    and (rawrx, rxflex, not_rst) ;
    and (datain[0], rdata[0], o_pixavail) ;
    and (datain[1], rdata[1], o_pixavail) ;
    and (datain[2], rdata[2], o_pixavail) ;
    and (datain[3], rdata[3], o_pixavail) ;
    and (datain[4], rdata[4], o_pixavail) ;
    and (datain[5], rdata[5], o_pixavail) ;
    and (datain[6], rdata[6], o_pixavail) ;
    and (datain[7], rdata[7], o_pixavail) ;
    or (rtlcn79, rst, rtlc7n92) ;
    counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart modgen_counter_waitcount (.clock (
                                                    clk), .q ({waitcount[15],
                                                    waitcount[14],waitcount[13],
                                                    waitcount[12],waitcount[11],
                                                    waitcount[10],waitcount[9],
                                                    waitcount[8],waitcount[7],
                                                    waitcount[6],waitcount[5],
                                                    waitcount[4],waitcount[3],
                                                    waitcount[2],waitcount[1],
                                                    waitcount[0]}), .clk_en (
                                                    rtlcn79), .aclear (GND), .sload (
                                                    GND), .aset (GND), .sclear (
                                                    rtlc7_X_0_n181), .updn (PWR)
                                                    , .cnt_en (PWR)) ;
    assign not_waitcount_15 = ~waitcount[15] ;
    assign not_waitcount_14 = ~waitcount[14] ;
    assign not_waitcount_13 = ~waitcount[13] ;
    assign not_waitcount_12 = ~waitcount[12] ;
    assign not_waitcount_11 = ~waitcount[11] ;
    assign not_waitcount_10 = ~waitcount[10] ;
    assign not_waitcount_9 = ~waitcount[9] ;
    assign not_waitcount_8 = ~waitcount[8] ;
    assign not_waitcount_7 = ~waitcount[7] ;
    assign not_waitcount_4 = ~waitcount[4] ;
    assign not_waitcount_3 = ~waitcount[3] ;
    assign not_waitcount_1 = ~waitcount[1] ;
    assign not_waitcount_0 = ~waitcount[0] ;
    and_16u_16u rtlc_318_and_14 (.a ({not_waitcount_15,not_waitcount_14,
                not_waitcount_13,not_waitcount_12,not_waitcount_11,
                not_waitcount_10,not_waitcount_9,not_waitcount_8,not_waitcount_7
                ,waitcount[6],waitcount[5],not_waitcount_4,not_waitcount_3,
                waitcount[2],not_waitcount_1,not_waitcount_0}), .d (rtlc7n115)
                ) ;
    and (rtlcn122, not_o_pixavail, rtlcn4) ;
    DFFE reg_mdata_6_ (.set (GND), .reset (GND), .in (mdata_7n5ss1_6_), .clk (
         clk), .ce (rtlc7n221), .out (mdata_7_)) ;
    DFFE reg_mdata_4_ (.set (GND), .reset (GND), .in (mdata_7n5ss1_4_), .clk (
         clk), .ce (rtlc7n221), .out (mdata_5_)) ;
    DFFE reg_mdata_3_ (.set (GND), .reset (GND), .in (mdata_7n5ss1_3_), .clk (
         clk), .ce (rtlc7n221), .out (mdata_3_)) ;
    DFFE reg_mdata_2_ (.set (GND), .reset (GND), .in (mdata_7n5ss1_2_), .clk (
         clk), .ce (rtlc7n221), .out (mdata_2_)) ;
    DFFE reg_mdata_1_ (.set (GND), .reset (GND), .in (mdata_7n5ss1_1_), .clk (
         clk), .ce (rtlc7n221), .out (mdata_1_)) ;
    DFFE reg_mdata_0_ (.set (GND), .reset (GND), .in (mdata_7n5ss1_0_), .clk (
         clk), .ce (rtlc7n221), .out (mdata_0_)) ;
    DFFRSE reg_dsend (.set (GND), .reset (rst), .in (not_rtlcn60), .clk (clk), .ce (
           PWR), .out (dsend)) ;
    DFFE reg_rdata_7_ (.set (GND), .reset (rst), .in (sdin[7]), .clk (clk), .ce (
         rxrdy), .out (rdata[7])) ;
    DFFE reg_rdata_6_ (.set (GND), .reset (rst), .in (sdin[6]), .clk (clk), .ce (
         rxrdy), .out (rdata[6])) ;
    DFFE reg_rdata_5_ (.set (GND), .reset (rst), .in (sdin[5]), .clk (clk), .ce (
         rxrdy), .out (rdata[5])) ;
    DFFE reg_rdata_4_ (.set (GND), .reset (rst), .in (sdin[4]), .clk (clk), .ce (
         rxrdy), .out (rdata[4])) ;
    DFFE reg_rdata_3_ (.set (GND), .reset (rst), .in (sdin[3]), .clk (clk), .ce (
         rxrdy), .out (rdata[3])) ;
    DFFE reg_rdata_2_ (.set (GND), .reset (rst), .in (sdin[2]), .clk (clk), .ce (
         rxrdy), .out (rdata[2])) ;
    DFFE reg_rdata_1_ (.set (GND), .reset (rst), .in (sdin[1]), .clk (clk), .ce (
         rxrdy), .out (rdata[1])) ;
    DFFE reg_rdata_0_ (.set (GND), .reset (rst), .in (sdin[0]), .clk (clk), .ce (
         rxrdy), .out (rdata[0])) ;
    DFFE reg_ld_sdout (.set (GND), .reset (rst), .in (not_state), .clk (clk), .ce (
         rtlc10n75), .out (ld_sdout)) ;
    DFFE reg_sdout_6_ (.set (GND), .reset (rst), .in (mdata_7_), .clk (clk), .ce (
         not_rtlc10n48), .out (sdout_6_)) ;
    DFFE reg_sdout_4_ (.set (GND), .reset (rst), .in (mdata_5_), .clk (clk), .ce (
         not_rtlc10n48), .out (sdout_4_)) ;
    DFFE reg_sdout_3_ (.set (GND), .reset (rst), .in (mdata_3_), .clk (clk), .ce (
         not_rtlc10n48), .out (sdout_3_)) ;
    DFFE reg_sdout_2_ (.set (GND), .reset (rst), .in (mdata_2_), .clk (clk), .ce (
         not_rtlc10n48), .out (sdout_2_)) ;
    DFFE reg_sdout_1_ (.set (GND), .reset (rst), .in (mdata_1_), .clk (clk), .ce (
         not_rtlc10n48), .out (sdout_1_)) ;
    DFFE reg_sdout_0_ (.set (GND), .reset (rst), .in (mdata_0_), .clk (clk), .ce (
         not_rtlc10n48), .out (sdout_0_)) ;
    DFF reg_state (.set (GND), .reset (rst), .in (rtlcn13), .clk (clk), .out (
        state)) ;
    DFFRSE reg_ack (.set (GND), .reset (rst), .in (rtlcn65), .clk (clk), .ce (
           PWR), .out (ack)) ;
    DFF reg_charavail (.set (GND), .reset (rst), .in (rtlcn122), .clk (clk), .out (
        o_pixavail)) ;
    or (rtlc7_72_or_13_nx0, rst, o_valid) ;
    or (rtlc7_X_0_n181, rtlc7_72_or_13_nx0, rtlc7n115) ;
endmodule


module DFFRSE ( set, reset, in, clk, ce, out ) ;

    input set ;
    input reset ;
    input in ;
    input clk ;
    input ce ;
    output out ;
reg out; 
always @ (posedge clk)
begin
    if (reset) out = 0;
    else if (set) out = 1;
    else begin
      if (ce)     out = in;
    end
end

endmodule


module and_16u_16u ( a, d ) ;

    input [15:0]a ;
    output d ;







    sim_and #(16) ix21 (.a (a), .d (d)) ;
endmodule


module counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart ( clock, q, clk_en, 
                                                         aclear, sload, data, 
                                                         aset, sclear, updn, 
                                                         cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, sclear_and_0_dup_191, sclear_and_1_dup_192, 
         sclear_and_2_dup_193, sclear_and_3_dup_194, sclear_and_4_dup_195, 
         sclear_and_5_dup_196, sclear_and_6_dup_197, sclear_and_7_dup_198, 
         sclear_and_8_dup_199, sclear_and_9_dup_200, sclear_and_10_dup_201, 
         sclear_and_11_dup_202, sclear_and_12_dup_203, sclear_and_13_dup_204, 
         sclear_and_14_dup_205, sclear_and_15_dup_206, inc_d_0_, inc_d_1_, 
         inc_d_2_, inc_d_3_, inc_d_4_, inc_d_5_, inc_d_6_, inc_d_7_, inc_d_8_, 
         inc_d_9_, inc_d_10_, inc_d_11_, inc_d_12_, inc_d_13_, inc_d_14_, 
         inc_d_15_, NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    DFFE reg_q_15_ (.set (GND), .reset (GND), .in (sclear_and_15_dup_206), .clk (
         clock), .ce (clk_en), .out (q[15])) ;
    DFFE reg_q_14_ (.set (GND), .reset (GND), .in (sclear_and_14_dup_205), .clk (
         clock), .ce (clk_en), .out (q[14])) ;
    DFFE reg_q_13_ (.set (GND), .reset (GND), .in (sclear_and_13_dup_204), .clk (
         clock), .ce (clk_en), .out (q[13])) ;
    DFFE reg_q_12_ (.set (GND), .reset (GND), .in (sclear_and_12_dup_203), .clk (
         clock), .ce (clk_en), .out (q[12])) ;
    DFFE reg_q_11_ (.set (GND), .reset (GND), .in (sclear_and_11_dup_202), .clk (
         clock), .ce (clk_en), .out (q[11])) ;
    DFFE reg_q_10_ (.set (GND), .reset (GND), .in (sclear_and_10_dup_201), .clk (
         clock), .ce (clk_en), .out (q[10])) ;
    DFFE reg_q_9_ (.set (GND), .reset (GND), .in (sclear_and_9_dup_200), .clk (
         clock), .ce (clk_en), .out (q[9])) ;
    DFFE reg_q_8_ (.set (GND), .reset (GND), .in (sclear_and_8_dup_199), .clk (
         clock), .ce (clk_en), .out (q[8])) ;
    DFFE reg_q_7_ (.set (GND), .reset (GND), .in (sclear_and_7_dup_198), .clk (
         clock), .ce (clk_en), .out (q[7])) ;
    DFFE reg_q_6_ (.set (GND), .reset (GND), .in (sclear_and_6_dup_197), .clk (
         clock), .ce (clk_en), .out (q[6])) ;
    DFFE reg_q_5_ (.set (GND), .reset (GND), .in (sclear_and_5_dup_196), .clk (
         clock), .ce (clk_en), .out (q[5])) ;
    DFFE reg_q_4_ (.set (GND), .reset (GND), .in (sclear_and_4_dup_195), .clk (
         clock), .ce (clk_en), .out (q[4])) ;
    DFFE reg_q_3_ (.set (GND), .reset (GND), .in (sclear_and_3_dup_194), .clk (
         clock), .ce (clk_en), .out (q[3])) ;
    DFFE reg_q_2_ (.set (GND), .reset (GND), .in (sclear_and_2_dup_193), .clk (
         clock), .ce (clk_en), .out (q[2])) ;
    DFFE reg_q_1_ (.set (GND), .reset (GND), .in (sclear_and_1_dup_192), .clk (
         clock), .ce (clk_en), .out (q[1])) ;
    DFFE reg_q_0_ (.set (GND), .reset (GND), .in (sclear_and_0_dup_191), .clk (
         clock), .ce (clk_en), .out (q[0])) ;
    inc_16u_16u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_15_,inc_d_14_,inc_d_13_,
                    inc_d_12_,inc_d_11_,inc_d_10_,inc_d_9_,inc_d_8_,inc_d_7_,
                    inc_d_6_,inc_d_5_,inc_d_4_,inc_d_3_,inc_d_2_,inc_d_1_,
                    inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_191, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_192, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_193, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_194, inc_d_3_, NOT_sclear) ;
    and (sclear_and_4_dup_195, inc_d_4_, NOT_sclear) ;
    and (sclear_and_5_dup_196, inc_d_5_, NOT_sclear) ;
    and (sclear_and_6_dup_197, inc_d_6_, NOT_sclear) ;
    and (sclear_and_7_dup_198, inc_d_7_, NOT_sclear) ;
    and (sclear_and_8_dup_199, inc_d_8_, NOT_sclear) ;
    and (sclear_and_9_dup_200, inc_d_9_, NOT_sclear) ;
    and (sclear_and_10_dup_201, inc_d_10_, NOT_sclear) ;
    and (sclear_and_11_dup_202, inc_d_11_, NOT_sclear) ;
    and (sclear_and_12_dup_203, inc_d_12_, NOT_sclear) ;
    and (sclear_and_13_dup_204, inc_d_13_, NOT_sclear) ;
    and (sclear_and_14_dup_205, inc_d_14_, NOT_sclear) ;
    and (sclear_and_15_dup_206, inc_d_15_, NOT_sclear) ;
endmodule


module inc_16u_16u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [15:0]a ;
    output [15:0]d ;
    output cout ;







    sim_inc #(16) ix37 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module UARTS ( CLK, RST, Din, LD, Rx, Baud, Dout, Tx, TxBusy, RxErr, RxRDY ) ;

    input CLK ;
    input RST ;
    input [7:0]Din ;
    input LD ;
    input Rx ;
    input Baud ;
    output [7:0]Dout ;
    output Tx ;
    output TxBusy ;
    output RxErr ;
    output RxRDY ;

    wire [8:1]Tx_Reg;
    wire [7:0]Rx_Reg;
    wire RxDivisor_4_;
    wire [10:0]RxDiv;
    wire [11:0]TxDiv;
    wire TopTx, TopRx;
    wire [3:0]TxBitCnt;
    wire [3:0]RxBitCnt;
    wire Rx_r;
    wire [5:0]RxFSM;
    wire [1:0]TxFSM;
    wire PWR, rtlc8n72;
    wire [8:0]Tx_Reg_14n6ss1;
    wire not_LD, not_rtlcs3, rtlc14n163, rtlc14n167, rtlc14n218, not_TxFSM_1, 
         not_rtlcn20, not_TopTx, rtlc14n223, rtlc14_X_0_n224, rtlc14n234, 
         not_rtlc14_X_0_n224, rtlc14n289, not_rtlcn22, not_rtlc14n167, 
         not_rtlcn24, not_Rx_r, not_Rx, rtlc17n282, rtlc17n287, not_TopRx, 
         rtlc17n335, rtlc17n414, not_rtlc17n287, rtlc17n432, not_rtlcn26, 
         rtlcn20, rtlcn22, rtlcn24, rtlcn26, not_TxFSM_0, rtlcn52, rtlcn58, 
         rtlcn63, rtlcn68, rtlcn72, rtlcn78, rtlcn92, not_rtlcn132, not_RxFSM_0, 
         not_rtlcs5, rtlcn113, rtlcn114, rtlcn115, rtlcn116, not_rtlc14n289, 
         rtlcn132, not_RxFSM_4, rtlcs0, rtlcs1, rtlcs3, rtlcs4, rtlcs5, 
         not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, not_RxDiv_9, 
         not_RxDiv_5, not_RxDiv_1, not_TxDiv_10, not_TxDiv_6, not_TxDiv_2, 
         not_TxBitCnt_3, not_TxBitCnt_2, not_TxBitCnt_1, not_rtlc17n335, rtlcs6, 
         rtlcs7, rtlc14_109_or_0_nx0;
    wire [26:0] xmplr_dummy ;




    assign TxBusy = 1'b0 ;
    assign PWR = 1'b1 ;
    or (rtlc8n72, RxFSM[0], rtlcs0) ;
    or (rtlc14n289, rtlcs4, rtlc14n218) ;
    or (rtlc14n163, not_TopTx, not_rtlcs3) ;
    assign not_TopTx = ~TopTx ;
    and (rtlc14n223, not_TopTx, TxFSM[1]) ;
    and (rtlc14n218, TxFSM[1], TxFSM[0]) ;
    assign not_rtlc14_X_0_n224 = ~rtlc14_X_0_n224 ;
    assign not_TxFSM_1 = ~TxFSM[1] ;
    and (rtlc14n234, TopTx, not_TxFSM_1) ;
    assign not_rtlcs3 = ~rtlcs3 ;
    or (rtlc17n282, not_TopRx, not_Rx_r) ;
    assign not_TopRx = ~TopRx ;
    and (rtlc17n335, not_TopRx, RxFSM[3]) ;
    assign not_Rx = ~Rx ;
    assign not_rtlcn20 = ~rtlcn20 ;
    or (rtlcn20, TxFSM[1], TxFSM[0]) ;
    select_3_3 rtlc_82_select_1 (.a ({RxFSM[0],not_rtlcn132,RxFSM[5]}), .b ({
               Rx_r,not_TopRx,not_Rx}), .d (rtlcn26)) ;
    mux_3u_3u Tx_Reg_mux_14i1 (.a ({Tx_Reg[1],TxBusy,PWR}), .b ({TxBusy,TxFSM[1]
              ,TxFSM[0]}), .d (Tx_Reg_14n6ss1[0])) ;
    mux_4u_4u rtlc_127_mux_3 (.a ({PWR,not_TopTx,PWR,not_LD}), .b ({TxBusy,
              TxBusy,TxFSM[1],TxFSM[0]}), .d (rtlc14n167)) ;
    mux_4u_4u rtlc_128_mux_4 (.a ({PWR,not_TopTx,not_TopTx,not_LD}), .b ({TxBusy
              ,TxBusy,TxFSM[1],TxFSM[0]}), .d (rtlcn22)) ;
    mux_4u_4u rtlc_129_mux_5 (.a ({not_TopTx,rtlc14n163,not_TopTx,not_LD}), .b (
              {TxBusy,TxBusy,TxFSM[1],TxFSM[0]}), .d (rtlcn24)) ;
    assign not_Rx_r = ~Rx_r ;
    assign not_LD = ~LD ;
    assign not_RxFSM_0 = ~RxFSM[0] ;
    assign not_TxFSM_0 = ~TxFSM[0] ;
    assign not_rtlcs5 = ~rtlcs5 ;
    and (rtlcn52, not_rtlcs5, RxFSM[2]) ;
    and (rtlcn113, not_Rx_r, RxFSM[1]) ;
    or (rtlcn58, RxFSM[3], rtlcn113) ;
    and (rtlcn114, RxFSM[4], Rx_r) ;
    or (rtlcn63, RxFSM[5], rtlcn114) ;
    and (rtlcn68, rtlcs5, RxFSM[2]) ;
    and (rtlcn72, not_RxFSM_0, rtlcs0) ;
    and (rtlcn115, RxFSM[4], not_Rx_r) ;
    and (rtlcn116, Rx_r, RxFSM[1]) ;
    or (rtlcn78, rtlcn115, rtlcn116) ;
    assign not_rtlc14n289 = ~rtlc14n289 ;
    assign not_rtlcn132 = ~rtlcn132 ;
    assign Tx_Reg_14n6ss1[1] = TxFSM[1] ? Tx_Reg[2] : Din[0] ;
    assign Tx_Reg_14n6ss1[2] = TxFSM[1] ? Tx_Reg[3] : Din[1] ;
    assign Tx_Reg_14n6ss1[3] = TxFSM[1] ? Tx_Reg[4] : Din[2] ;
    assign Tx_Reg_14n6ss1[4] = TxFSM[1] ? Tx_Reg[5] : Din[3] ;
    assign Tx_Reg_14n6ss1[5] = TxFSM[1] ? Tx_Reg[6] : Din[5] ;
    assign Tx_Reg_14n6ss1[6] = TxFSM[1] ? Tx_Reg[7] : Din[5] ;
    assign Tx_Reg_14n6ss1[7] = TxFSM[1] ? Tx_Reg[8] : Din[7] ;
    assign not_rtlcn24 = ~rtlcn24 ;
    assign not_rtlc14n167 = ~rtlc14n167 ;
    assign not_rtlcn22 = ~rtlcn22 ;
    assign not_rtlcn26 = ~rtlcn26 ;
    or (rtlc17n432, RxRDY, RxFSM[5]) ;
    assign not_RxFSM_4 = ~RxFSM[4] ;
    assign not_rtlc17n287 = ~rtlc17n287 ;
    or (rtlcn132, RxFSM[0], RxFSM[5]) ;
    assign not_RxBitCnt_2 = ~RxBitCnt[2] ;
    assign not_RxBitCnt_1 = ~RxBitCnt[1] ;
    assign not_RxBitCnt_0 = ~RxBitCnt[0] ;
    and_4u_4u rtlc_356_and_7 (.a ({RxBitCnt[3],not_RxBitCnt_2,not_RxBitCnt_1,
              not_RxBitCnt_0}), .d (rtlcs5)) ;
    assign not_RxDiv_9 = ~RxDiv[9] ;
    assign not_RxDiv_5 = ~RxDiv[5] ;
    assign not_RxDiv_1 = ~RxDiv[1] ;
    and_4u_4u rtlc_366_and_8 (.a ({not_RxDiv_9,not_RxDiv_5,not_RxDiv_1,rtlcs6})
              , .d (rtlcs0)) ;
    or (rtlc17n287, rtlc17n282, not_RxFSM_4) ;
    assign not_TxDiv_10 = ~TxDiv[10] ;
    assign not_TxDiv_6 = ~TxDiv[6] ;
    assign not_TxDiv_2 = ~TxDiv[2] ;
    and_4u_4u rtlc_377_and_9 (.a ({not_TxDiv_10,not_TxDiv_6,not_TxDiv_2,rtlcs7})
              , .d (rtlcs1)) ;
    assign not_TxBitCnt_3 = ~TxBitCnt[3] ;
    assign not_TxBitCnt_2 = ~TxBitCnt[2] ;
    assign not_TxBitCnt_1 = ~TxBitCnt[1] ;
    and_4u_4u rtlc_382_and_10 (.a ({not_TxBitCnt_3,not_TxBitCnt_2,not_TxBitCnt_1
              ,TxBitCnt[0]}), .d (rtlcs3)) ;
    and (rtlcs4, not_TxFSM_1, not_TxFSM_0) ;
    or (Tx_Reg_14n6ss1[8], Din[7], TxFSM[1]) ;
    and (rtlc17n414, TopRx, RxFSM[3]) ;
    counter_up_sclear_aclear_clock_0_11_cx0_UARTS modgen_counter_RxDiv (.clock (
                                                  CLK), .q ({RxDiv[10],RxDiv[9],
                                                  RxDiv[8],RxDiv[7],RxDiv[6],
                                                  RxDiv[5],RxDiv[4],RxDiv[3],
                                                  RxDiv[2],RxDiv[1],RxDiv[0]}), 
                                                  .clk_en (PWR), .aclear (RST), 
                                                  .sload (TxBusy), .aset (TxBusy
                                                  ), .sclear (rtlc8n72), .updn (
                                                  PWR), .cnt_en (PWR)) ;
    counter_up_sclear_aclear_clock_0_12_cx1_UARTS modgen_counter_TxDiv (.clock (
                                                  CLK), .q ({TxDiv[11],TxDiv[10]
                                                  ,TxDiv[9],TxDiv[8],TxDiv[7],
                                                  TxDiv[6],TxDiv[5],TxDiv[4],
                                                  TxDiv[3],TxDiv[2],TxDiv[1],
                                                  TxDiv[0]}), .clk_en (PWR), .aclear (
                                                  RST), .sload (TxBusy), .aset (
                                                  TxBusy), .sclear (rtlcs1), .updn (
                                                  PWR), .cnt_en (PWR)) ;
    counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS 
                                                              modgen_counter_TxBitCnt
                                                               (.clock (CLK), .q (
                                                              {TxBitCnt[3],
                                                              TxBitCnt[2],
                                                              TxBitCnt[1],
                                                              TxBitCnt[0]}), .clk_en (
                                                              not_rtlc14_X_0_n224
                                                              ), .aclear (RST), 
                                                              .sload (rtlc14n234
                                                              ), .data ({PWR,
                                                              TxBusy,TxBusy,PWR}
                                                              ), .aset (TxBusy)
                                                              , .sclear (TxBusy)
                                                              , .updn (TxBusy), 
                                                              .cnt_en (TxFSM[1])
                                                              ) ;
    assign not_rtlc17n335 = ~rtlc17n335 ;
    counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS 
                                                               modgen_counter_RxBitCnt
                                                                (.clock (CLK), .q (
                                                               {RxBitCnt[3],
                                                               RxBitCnt[2],
                                                               RxBitCnt[1],
                                                               RxBitCnt[0]}), .clk_en (
                                                               not_rtlc17n335), 
                                                               .aclear (RST), .sload (
                                                               TxBusy), .aset (
                                                               TxBusy), .sclear (
                                                               RxFSM[0]), .updn (
                                                               PWR), .cnt_en (
                                                               RxFSM[3])) ;
    eq_8u_8u rtlceq_s14_eq_11 (.a ({RxDiv[10],RxDiv[8],RxDiv[7],RxDiv[6],
             RxDiv[4],RxDiv[3],RxDiv[2],RxDiv[0]}), .b ({TxBusy,TxBusy,
             RxDivisor_4_,RxDivisor_4_,RxDivisor_4_,RxDivisor_4_,TxBusy,TxBusy})
             , .d (rtlcs6)) ;
    eq_9u_9u rtlceq_s16_eq_12 (.a ({TxDiv[11],TxDiv[9],TxDiv[8],TxDiv[7],
             TxDiv[5],TxDiv[4],TxDiv[3],TxDiv[1],TxDiv[0]}), .b ({TxBusy,TxBusy,
             RxDivisor_4_,RxDivisor_4_,RxDivisor_4_,RxDivisor_4_,TxBusy,TxBusy,
             RxDivisor_4_}), .d (rtlcs7)) ;
    DFF reg_Rx_r (.set (RST), .reset (TxBusy), .in (Rx), .clk (CLK), .out (Rx_r)
        ) ;
    DFF reg_RxDivisor_4_ (.set (TxBusy), .reset (RST), .in (PWR), .clk (CLK), .out (
        RxDivisor_4_)) ;
    DFF reg_TopRx (.set (TxBusy), .reset (RST), .in (rtlcn72), .clk (CLK), .out (
        TopRx)) ;
    DFF reg_TopTx (.set (TxBusy), .reset (RST), .in (rtlcs1), .clk (CLK), .out (
        TopTx)) ;
    DFFE reg_TxFSM_1_ (.set (TxBusy), .reset (RST), .in (not_rtlc14n289), .clk (
         CLK), .ce (not_rtlcn24), .out (TxFSM[1])) ;
    DFFE reg_TxFSM_0_ (.set (TxBusy), .reset (RST), .in (not_TxFSM_0), .clk (CLK
         ), .ce (not_rtlcn24), .out (TxFSM[0])) ;
    DFFE reg_Tx_Reg_8_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[8]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[8])) ;
    DFFE reg_Tx_Reg_7_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[7]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[7])) ;
    DFFE reg_Tx_Reg_6_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[6]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[6])) ;
    DFFE reg_Tx_Reg_5_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[5]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[5])) ;
    DFFE reg_Tx_Reg_4_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[4]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[4])) ;
    DFFE reg_Tx_Reg_3_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[3]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[3])) ;
    DFFE reg_Tx_Reg_2_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[2]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[2])) ;
    DFFE reg_Tx_Reg_1_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[1]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[1])) ;
    DFFE reg_Tx_Reg_0_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[0]), .clk (
         CLK), .ce (not_rtlcn22), .out (Tx)) ;
    DFFE reg_RxFSM_5_ (.set (TxBusy), .reset (RST), .in (rtlcn78), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[5])) ;
    DFFE reg_RxFSM_4_ (.set (TxBusy), .reset (RST), .in (rtlcn68), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[4])) ;
    DFFE reg_RxFSM_3_ (.set (TxBusy), .reset (RST), .in (rtlcn52), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[3])) ;
    DFFE reg_RxFSM_2_ (.set (TxBusy), .reset (RST), .in (rtlcn58), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[2])) ;
    DFFE reg_RxFSM_1_ (.set (TxBusy), .reset (RST), .in (RxFSM[0]), .clk (CLK), 
         .ce (not_rtlcn26), .out (RxFSM[1])) ;
    DFFE reg_RxFSM_0_ (.set (RST), .reset (TxBusy), .in (rtlcn63), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[0])) ;
    DFFE reg_RxErr (.set (TxBusy), .reset (RST), .in (RxFSM[5]), .clk (CLK), .ce (
         rtlc17n432), .out (RxErr)) ;
    DFFE reg_Dout_7_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[7]), .clk (CLK), 
         .ce (not_rtlc17n287), .out (Dout[7])) ;
    DFFE reg_Dout_6_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[6]), .clk (CLK), 
         .ce (not_rtlc17n287), .out (Dout[6])) ;
    DFFE reg_Dout_5_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[5]), .clk (CLK), 
         .ce (not_rtlc17n287), .out (Dout[5])) ;
    DFFE reg_Dout_4_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[4]), .clk (CLK), 
         .ce (not_rtlc17n287), .out (Dout[4])) ;
    DFFE reg_Dout_3_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[3]), .clk (CLK), 
         .ce (not_rtlc17n287), .out (Dout[3])) ;
    DFFE reg_Dout_2_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[2]), .clk (CLK), 
         .ce (not_rtlc17n287), .out (Dout[2])) ;
    DFFE reg_Dout_1_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[1]), .clk (CLK), 
         .ce (not_rtlc17n287), .out (Dout[1])) ;
    DFFE reg_Dout_0_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[0]), .clk (CLK), 
         .ce (not_rtlc17n287), .out (Dout[0])) ;
    DFFE reg_Rx_Reg_7_ (.set (TxBusy), .reset (RST), .in (Rx_r), .clk (CLK), .ce (
         rtlc17n414), .out (Rx_Reg[7])) ;
    DFFE reg_Rx_Reg_6_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[7]), .clk (CLK)
         , .ce (rtlc17n414), .out (Rx_Reg[6])) ;
    DFFE reg_Rx_Reg_5_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[6]), .clk (CLK)
         , .ce (rtlc17n414), .out (Rx_Reg[5])) ;
    DFFE reg_Rx_Reg_4_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[5]), .clk (CLK)
         , .ce (rtlc17n414), .out (Rx_Reg[4])) ;
    DFFE reg_Rx_Reg_3_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[4]), .clk (CLK)
         , .ce (rtlc17n414), .out (Rx_Reg[3])) ;
    DFFE reg_Rx_Reg_2_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[3]), .clk (CLK)
         , .ce (rtlc17n414), .out (Rx_Reg[2])) ;
    DFFE reg_Rx_Reg_1_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[2]), .clk (CLK)
         , .ce (rtlc17n414), .out (Rx_Reg[1])) ;
    DFFE reg_Rx_Reg_0_ (.set (TxBusy), .reset (RST), .in (Rx_Reg[1]), .clk (CLK)
         , .ce (rtlc17n414), .out (Rx_Reg[0])) ;
    DFF reg_RxRDYi (.set (TxBusy), .reset (RST), .in (rtlcn92), .clk (CLK), .out (
        RxRDY)) ;
    or (rtlc14_109_or_0_nx0, rtlc14n218, not_rtlcn20) ;
    or (rtlc14_X_0_n224, rtlc14_109_or_0_nx0, rtlc14n223) ;
    and (rtlcn92, rtlcn114, TopRx) ;
endmodule


module eq_9u_9u ( a, b, d ) ;

    input [8:0]a ;
    input [8:0]b ;
    output d ;







    sim_eq #(9) ix15 (.a (a), .b (b), .d (d)) ;
endmodule


module eq_8u_8u ( a, b, d ) ;

    input [7:0]a ;
    input [7:0]b ;
    output d ;







    sim_eq #(8) ix14 (.a (a), .b (b), .d (d)) ;
endmodule


module counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS ( clock, q, 
                                                                    clk_en, 
                                                                    aclear, 
                                                                    sload, data, 
                                                                    aset, sclear, 
                                                                    updn, cnt_en
                                                                     ) ;

    input clock ;
    output [3:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [3:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, nx24, nx26, sclear_and_0_dup_59, sclear_and_1_dup_60, 
         sclear_and_2_dup_61, sclear_and_3_dup_62, inc_d_0_, inc_d_1_, inc_d_2_, 
         inc_d_3_, NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    or (nx24, cnt_en, sclear) ;
    and (nx26, nx24, clk_en) ;
    DFFE reg_q_3_ (.set (GND), .reset (aclear), .in (sclear_and_3_dup_62), .clk (
         clock), .ce (nx26), .out (q[3])) ;
    DFFE reg_q_2_ (.set (GND), .reset (aclear), .in (sclear_and_2_dup_61), .clk (
         clock), .ce (nx26), .out (q[2])) ;
    DFFE reg_q_1_ (.set (GND), .reset (aclear), .in (sclear_and_1_dup_60), .clk (
         clock), .ce (nx26), .out (q[1])) ;
    DFFE reg_q_0_ (.set (GND), .reset (aclear), .in (sclear_and_0_dup_59), .clk (
         clock), .ce (nx26), .out (q[0])) ;
    inc_4u_4u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_3_,inc_d_2_,inc_d_1_,
                  inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_59, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_60, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_61, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_62, inc_d_3_, NOT_sclear) ;
endmodule


module inc_4u_4u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [3:0]a ;
    output [3:0]d ;
    output cout ;







    sim_inc #(4) ix13 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS ( clock, q, 
                                                                   clk_en, 
                                                                   aclear, sload, 
                                                                   data, aset, 
                                                                   sclear, updn, 
                                                                   cnt_en ) ;

    input clock ;
    output [3:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [3:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, nx20, nx22, sload_mux_0_dup_53, sload_mux_1_dup_54, 
         sload_mux_2_dup_55, sload_mux_3_dup_56, dec_d_0_, dec_d_1_, dec_d_2_, 
         dec_d_3_;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    or (nx20, cnt_en, sload) ;
    and (nx22, clk_en, nx20) ;
    DFFE reg_q_3_ (.set (GND), .reset (aclear), .in (sload_mux_3_dup_56), .clk (
         clock), .ce (nx22), .out (q[3])) ;
    DFFE reg_q_2_ (.set (GND), .reset (aclear), .in (sload_mux_2_dup_55), .clk (
         clock), .ce (nx22), .out (q[2])) ;
    DFFE reg_q_1_ (.set (GND), .reset (aclear), .in (sload_mux_1_dup_54), .clk (
         clock), .ce (nx22), .out (q[1])) ;
    DFFE reg_q_0_ (.set (GND), .reset (aclear), .in (sload_mux_0_dup_53), .clk (
         clock), .ce (nx22), .out (q[0])) ;
    dec_4u_4u_0_0 dec (.cin (GND), .a (q), .d ({dec_d_3_,dec_d_2_,dec_d_1_,
                  dec_d_0_})) ;
    assign sload_mux_0_dup_53 = sload ? data[0] : dec_d_0_ ;
    assign sload_mux_1_dup_54 = sload ? data[1] : dec_d_1_ ;
    assign sload_mux_2_dup_55 = sload ? data[2] : dec_d_2_ ;
    assign sload_mux_3_dup_56 = sload ? data[3] : dec_d_3_ ;
endmodule


module dec_4u_4u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [3:0]a ;
    output [3:0]d ;
    output cout ;







    sim_dec #(4) ix13 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module DFFE ( set, reset, in, clk, ce, out ) ;

    input set ;
    input reset ;
    input in ;
    input clk ;
    input ce ;
    output out ;
reg out; 
always @ (posedge set or posedge reset or posedge clk)
begin
    if (set) out = 1;
    else if (reset) out = 0;
    else begin
      if (ce)     out = in;
    end
end

endmodule


module counter_up_sclear_aclear_clock_0_12_cx1_UARTS ( clock, q, clk_en, aclear, 
                                                       sload, data, aset, sclear, 
                                                       updn, cnt_en ) ;

    input clock ;
    output [11:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [11:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, sclear_and_0_dup_147, sclear_and_1_dup_148, 
         sclear_and_2_dup_149, sclear_and_3_dup_150, sclear_and_4_dup_151, 
         sclear_and_5_dup_152, sclear_and_6_dup_153, sclear_and_7_dup_154, 
         sclear_and_8_dup_155, sclear_and_9_dup_156, sclear_and_10_dup_157, 
         sclear_and_11_dup_158, inc_d_0_, inc_d_1_, inc_d_2_, inc_d_3_, inc_d_4_, 
         inc_d_5_, inc_d_6_, inc_d_7_, inc_d_8_, inc_d_9_, inc_d_10_, inc_d_11_, 
         NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    DFF reg_q_11_ (.set (GND), .reset (aclear), .in (sclear_and_11_dup_158), .clk (
        clock), .out (q[11])) ;
    DFF reg_q_10_ (.set (GND), .reset (aclear), .in (sclear_and_10_dup_157), .clk (
        clock), .out (q[10])) ;
    DFF reg_q_9_ (.set (GND), .reset (aclear), .in (sclear_and_9_dup_156), .clk (
        clock), .out (q[9])) ;
    DFF reg_q_8_ (.set (GND), .reset (aclear), .in (sclear_and_8_dup_155), .clk (
        clock), .out (q[8])) ;
    DFF reg_q_7_ (.set (GND), .reset (aclear), .in (sclear_and_7_dup_154), .clk (
        clock), .out (q[7])) ;
    DFF reg_q_6_ (.set (GND), .reset (aclear), .in (sclear_and_6_dup_153), .clk (
        clock), .out (q[6])) ;
    DFF reg_q_5_ (.set (GND), .reset (aclear), .in (sclear_and_5_dup_152), .clk (
        clock), .out (q[5])) ;
    DFF reg_q_4_ (.set (GND), .reset (aclear), .in (sclear_and_4_dup_151), .clk (
        clock), .out (q[4])) ;
    DFF reg_q_3_ (.set (GND), .reset (aclear), .in (sclear_and_3_dup_150), .clk (
        clock), .out (q[3])) ;
    DFF reg_q_2_ (.set (GND), .reset (aclear), .in (sclear_and_2_dup_149), .clk (
        clock), .out (q[2])) ;
    DFF reg_q_1_ (.set (GND), .reset (aclear), .in (sclear_and_1_dup_148), .clk (
        clock), .out (q[1])) ;
    DFF reg_q_0_ (.set (GND), .reset (aclear), .in (sclear_and_0_dup_147), .clk (
        clock), .out (q[0])) ;
    inc_12u_12u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_11_,inc_d_10_,inc_d_9_,
                    inc_d_8_,inc_d_7_,inc_d_6_,inc_d_5_,inc_d_4_,inc_d_3_,
                    inc_d_2_,inc_d_1_,inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_147, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_148, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_149, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_150, inc_d_3_, NOT_sclear) ;
    and (sclear_and_4_dup_151, inc_d_4_, NOT_sclear) ;
    and (sclear_and_5_dup_152, inc_d_5_, NOT_sclear) ;
    and (sclear_and_6_dup_153, inc_d_6_, NOT_sclear) ;
    and (sclear_and_7_dup_154, inc_d_7_, NOT_sclear) ;
    and (sclear_and_8_dup_155, inc_d_8_, NOT_sclear) ;
    and (sclear_and_9_dup_156, inc_d_9_, NOT_sclear) ;
    and (sclear_and_10_dup_157, inc_d_10_, NOT_sclear) ;
    and (sclear_and_11_dup_158, inc_d_11_, NOT_sclear) ;
endmodule


module inc_12u_12u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [11:0]a ;
    output [11:0]d ;
    output cout ;







    sim_inc #(12) ix29 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module counter_up_sclear_aclear_clock_0_11_cx0_UARTS ( clock, q, clk_en, aclear, 
                                                       sload, data, aset, sclear, 
                                                       updn, cnt_en ) ;

    input clock ;
    output [10:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [10:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, sclear_and_0_dup_136, sclear_and_1_dup_137, 
         sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
         sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
         sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
         inc_d_0_, inc_d_1_, inc_d_2_, inc_d_3_, inc_d_4_, inc_d_5_, inc_d_6_, 
         inc_d_7_, inc_d_8_, inc_d_9_, inc_d_10_, NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    DFF reg_q_10_ (.set (GND), .reset (aclear), .in (sclear_and_10_dup_146), .clk (
        clock), .out (q[10])) ;
    DFF reg_q_9_ (.set (GND), .reset (aclear), .in (sclear_and_9_dup_145), .clk (
        clock), .out (q[9])) ;
    DFF reg_q_8_ (.set (GND), .reset (aclear), .in (sclear_and_8_dup_144), .clk (
        clock), .out (q[8])) ;
    DFF reg_q_7_ (.set (GND), .reset (aclear), .in (sclear_and_7_dup_143), .clk (
        clock), .out (q[7])) ;
    DFF reg_q_6_ (.set (GND), .reset (aclear), .in (sclear_and_6_dup_142), .clk (
        clock), .out (q[6])) ;
    DFF reg_q_5_ (.set (GND), .reset (aclear), .in (sclear_and_5_dup_141), .clk (
        clock), .out (q[5])) ;
    DFF reg_q_4_ (.set (GND), .reset (aclear), .in (sclear_and_4_dup_140), .clk (
        clock), .out (q[4])) ;
    DFF reg_q_3_ (.set (GND), .reset (aclear), .in (sclear_and_3_dup_139), .clk (
        clock), .out (q[3])) ;
    DFF reg_q_2_ (.set (GND), .reset (aclear), .in (sclear_and_2_dup_138), .clk (
        clock), .out (q[2])) ;
    DFF reg_q_1_ (.set (GND), .reset (aclear), .in (sclear_and_1_dup_137), .clk (
        clock), .out (q[1])) ;
    DFF reg_q_0_ (.set (GND), .reset (aclear), .in (sclear_and_0_dup_136), .clk (
        clock), .out (q[0])) ;
    inc_11u_11u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_10_,inc_d_9_,inc_d_8_,
                    inc_d_7_,inc_d_6_,inc_d_5_,inc_d_4_,inc_d_3_,inc_d_2_,
                    inc_d_1_,inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_136, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_137, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_138, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_139, inc_d_3_, NOT_sclear) ;
    and (sclear_and_4_dup_140, inc_d_4_, NOT_sclear) ;
    and (sclear_and_5_dup_141, inc_d_5_, NOT_sclear) ;
    and (sclear_and_6_dup_142, inc_d_6_, NOT_sclear) ;
    and (sclear_and_7_dup_143, inc_d_7_, NOT_sclear) ;
    and (sclear_and_8_dup_144, inc_d_8_, NOT_sclear) ;
    and (sclear_and_9_dup_145, inc_d_9_, NOT_sclear) ;
    and (sclear_and_10_dup_146, inc_d_10_, NOT_sclear) ;
endmodule


module inc_11u_11u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [10:0]a ;
    output [10:0]d ;
    output cout ;







    sim_inc #(11) ix27 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module DFF ( set, reset, in, clk, out ) ;

    input set ;
    input reset ;
    input in ;
    input clk ;
    output out ;
reg out; 
always @ (posedge set or posedge reset or posedge clk)
begin
    if (set) out = 1;
    else if (reset) out = 0;
    else begin
     out = in;
    end
end

endmodule


module and_4u_4u ( a, d ) ;

    input [3:0]a ;
    output d ;







    sim_and #(4) ix9 (.a (a), .d (d)) ;
endmodule


module mux_4u_4u ( a, b, d ) ;

    input [3:0]a ;
    input [3:0]b ;
    output d ;







    sim_mux #(4,2) ix9 (.a (a), .b (b), .d (d)) ;
endmodule


module mux_3u_3u ( a, b, d ) ;

    input [2:0]a ;
    input [2:0]b ;
    output d ;







    sim_mux #(3,2) ix8 (.a (a), .b (b), .d (d)) ;
endmodule


module select_3_3 ( a, b, d ) ;

    input [2:0]a ;
    input [2:0]b ;
    output d ;







    sim_select #(3) ix11 (.a (a), .b (b), .d (d)) ;
endmodule

