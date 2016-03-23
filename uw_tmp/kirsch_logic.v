//
// Verilog description for cell kirsch, 
// Wed Mar 23 19:25:20 2016
//
// Precision RTL Synthesis, 64-bit 2015.2.16//

//
// Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
// "modgen_sim" library, during the simulation run for this netlist
//

module kirsch_logic ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir,                 o_mode, o_row, debug_key, debug_switch, debug_led_red, 
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
    wire rtlcn4, rtlc_300_or_44_nx0, NOT_r6_0_;
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
    counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch modgen_counter_o_row (.clock (
                                                  i_clock), .q ({o_row[7],
                                                  o_row[6],o_row[5],o_row[4],
                                                  o_row[3],o_row[2],o_row[1],
                                                  o_row[0]}), .clk_en (
                                                  debug_num_5[1]), .aclear (
                                                  debug_num_5[0]), .sload (
                                                  debug_num_5[0]), .aset (
                                                  debug_num_5[0]), .sclear (
                                                  i_reset), .updn (
                                                  debug_num_5[1]), .cnt_en (
                                                  rtlcn9)) ;
    counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch modgen_counter_column (.clock (
                                                  i_clock), .q ({column[7],
                                                  column[6],column[5],column[4],
                                                  column[3],column[2],column[1],
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
    or (rtlc_300_or_44_nx0, i_valid, rtlc12n82) ;
    or (rtlcn3, rtlc_300_or_44_nx0, rtlcs0) ;
    assign NOT_r6_0_ = ~r6[0] ;
    sub_12u_12u_12u_0 sub_out_sub13_0 (.cin (NOT_r6_0_), .a ({r4[9],r4[8],r4[7],
                      r4[6],r4[5],r4[4],r4[3],r4[2],r4[1],r4[0],debug_num_5[0],
                      debug_num_5[0]}), .b ({r6[12],r6[11],r6[10],r6[9],r6[8],
                      r6[7],r6[6],r6[5],r6[4],r6[3],r6[2],r6[1]}), .d ({
                      sub_out_12_,sub_out_11_,sub_out_10_,sub_out_9_,sub_out_8_,
                      sub_out_7_,xmplr_dummy [1],xmplr_dummy [2],xmplr_dummy [3]
                      ,xmplr_dummy [4],xmplr_dummy [5],xmplr_dummy [6]}), .cout (
                      rtlcn1880)) ;
    ram_new_0_work_kirsch_main mem (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5]
                               ,i_pixel[4],i_pixel[3],i_pixel[2],i_pixel[1],
                               i_pixel[0]}), .rd_data1 ({mem_out_0_[7],
                               mem_out_0_[6],mem_out_0_[5],mem_out_0_[4],
                               mem_out_0_[3],mem_out_0_[2],mem_out_0_[1],
                               mem_out_0_[0]}), .addr1 ({column[7],column[6],
                               column[5],column[4],column[3],column[2],column[1]
                               ,column[0]}), .wr_clk1 (i_clock), .rd_clk1 (
                               i_clock), .wr_ena1 (mem_wren[0]), .rd_ena1 (
                               debug_num_5[1]), .ena1 (debug_num_5[1]), .rst1 (
                               debug_num_5[0]), .regce1 (debug_num_5[1]), .regrst1 (
                               debug_num_5[0])) ;
    ram_new_1_work_kirsch_main mem_0 (.wr_data1 ({i_pixel[7],i_pixel[6],
                               i_pixel[5],i_pixel[4],i_pixel[3],i_pixel[2],
                               i_pixel[1],i_pixel[0]}), .rd_data1 ({
                               mem_out_1_[7],mem_out_1_[6],mem_out_1_[5],
                               mem_out_1_[4],mem_out_1_[3],mem_out_1_[2],
                               mem_out_1_[1],mem_out_1_[0]}), .addr1 ({column[7]
                               ,column[6],column[5],column[4],column[3],
                               column[2],column[1],column[0]}), .wr_clk1 (
                               i_clock), .rd_clk1 (i_clock), .wr_ena1 (
                               mem_wren[1]), .rd_ena1 (debug_num_5[1]), .ena1 (
                               debug_num_5[1]), .rst1 (debug_num_5[0]), .regce1 (
                               debug_num_5[1]), .regrst1 (debug_num_5[0])) ;
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


module ram_new_1_work_kirsch_main ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, 
                                    wr_ena1, rd_ena1, ena1, rst1, regce1, 
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


module ram_new_0_work_kirsch_main ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, 
                                    wr_ena1, rd_ena1, ena1, rst1, regce1, 
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


module counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch ( clock, q, clk_en, aclear, 
                                                       sload, data, aset, sclear, 
                                                       updn, cnt_en ) ;

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


module counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch ( clock, q, clk_en, aclear, 
                                                       sload, data, aset, sclear, 
                                                       updn, cnt_en ) ;

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



    gt_10u_10u rtlc0_copy_n24_gt_4 (.a ({i_pix1[9],i_pix1[8],i_pix1[7],i_pix1[6]
               ,i_pix1[5],i_pix1[4],i_pix1[3],i_pix1[2],i_pix1[1],i_pix1[0]}), .b (
               {i_pix2[9],i_pix2[8],i_pix2[7],i_pix2[6],i_pix2[5],i_pix2[4],
               i_pix2[3],i_pix2[2],i_pix2[1],i_pix2[0]}), .d (nx4)) ;
    gt_10u_10u rtlc2_15_gt_5 (.a ({i_pix2[9],i_pix2[8],i_pix2[7],i_pix2[6],
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
    wire i_dir2_stage1_2__rename87;
    wire [1:0] xmplr_dummy ;




    assign o_max_dir_stage1[1] = 1'b0 ;
    custom_max_8 u_max1 (.i_pix1 ({i_pix1_stage1[7],i_pix1_stage1[6],
                 i_pix1_stage1[5],i_pix1_stage1[4],i_pix1_stage1[3],
                 i_pix1_stage1[2],i_pix1_stage1[1],i_pix1_stage1[0]}), .i_pix2 (
                 {i_pix2_stage1[7],i_pix2_stage1[6],i_pix2_stage1[5],
                 i_pix2_stage1[4],i_pix2_stage1[3],i_pix2_stage1[2],
                 i_pix2_stage1[1],i_pix2_stage1[0]}), .i_dir1 ({
                 o_max_dir_stage1[1],xmplr_dummy [0],i_dir1_stage1[0]}), .i_dir2 (
                 {i_dir2_stage1_2__rename87,o_max_dir_stage1[1],i_dir2_stage1[0]
                 }), .o_max_dir ({o_max_dir_stage1[2],xmplr_dummy [1],
                 o_max_dir_stage1[0]}), .o_max_pix ({custom_max_pix_output[7],
                 custom_max_pix_output[6],custom_max_pix_output[5],
                 custom_max_pix_output[4],custom_max_pix_output[3],
                 custom_max_pix_output[2],custom_max_pix_output[1],
                 custom_max_pix_output[0]})) ;
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
    assign i_dir2_stage1_2__rename87 = 1'b1 ;
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



    gt_8u_8u rtlc0_copy_n22_gt_0 (.a ({i_pix1[7],i_pix1[6],i_pix1[5],i_pix1[4],
             i_pix1[3],i_pix1[2],i_pix1[1],i_pix1[0]}), .b ({i_pix2[7],i_pix2[6]
             ,i_pix2[5],i_pix2[4],i_pix2[3],i_pix2[2],i_pix2[1],i_pix2[0]}), .d (
             nx4)) ;
    gt_8u_8u rtlc2_15_gt_1 (.a ({i_pix2[7],i_pix2[6],i_pix2[5],i_pix2[4],
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

