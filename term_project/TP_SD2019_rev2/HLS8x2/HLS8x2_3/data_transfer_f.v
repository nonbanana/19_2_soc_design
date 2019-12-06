// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module data_transfer_f (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        fmap_TDATA,
        fmap_TVALID,
        fmap_TREADY,
        W_BRAM_0_0_address0,
        W_BRAM_0_0_ce0,
        W_BRAM_0_0_we0,
        W_BRAM_0_0_d0,
        W_BRAM_0_1_address0,
        W_BRAM_0_1_ce0,
        W_BRAM_0_1_we0,
        W_BRAM_0_1_d0,
        W_BRAM_0_2_address0,
        W_BRAM_0_2_ce0,
        W_BRAM_0_2_we0,
        W_BRAM_0_2_d0,
        W_BRAM_0_3_address0,
        W_BRAM_0_3_ce0,
        W_BRAM_0_3_we0,
        W_BRAM_0_3_d0,
        W_BRAM_0_4_address0,
        W_BRAM_0_4_ce0,
        W_BRAM_0_4_we0,
        W_BRAM_0_4_d0,
        W_BRAM_0_5_address0,
        W_BRAM_0_5_ce0,
        W_BRAM_0_5_we0,
        W_BRAM_0_5_d0,
        W_BRAM_0_6_address0,
        W_BRAM_0_6_ce0,
        W_BRAM_0_6_we0,
        W_BRAM_0_6_d0,
        W_BRAM_0_7_address0,
        W_BRAM_0_7_ce0,
        W_BRAM_0_7_we0,
        W_BRAM_0_7_d0,
        W_BRAM_1_0_address0,
        W_BRAM_1_0_ce0,
        W_BRAM_1_0_we0,
        W_BRAM_1_0_d0,
        W_BRAM_1_1_address0,
        W_BRAM_1_1_ce0,
        W_BRAM_1_1_we0,
        W_BRAM_1_1_d0,
        W_BRAM_1_2_address0,
        W_BRAM_1_2_ce0,
        W_BRAM_1_2_we0,
        W_BRAM_1_2_d0,
        W_BRAM_1_3_address0,
        W_BRAM_1_3_ce0,
        W_BRAM_1_3_we0,
        W_BRAM_1_3_d0,
        W_BRAM_1_4_address0,
        W_BRAM_1_4_ce0,
        W_BRAM_1_4_we0,
        W_BRAM_1_4_d0,
        W_BRAM_1_5_address0,
        W_BRAM_1_5_ce0,
        W_BRAM_1_5_we0,
        W_BRAM_1_5_d0,
        W_BRAM_1_6_address0,
        W_BRAM_1_6_ce0,
        W_BRAM_1_6_we0,
        W_BRAM_1_6_d0,
        W_BRAM_1_7_address0,
        W_BRAM_1_7_ce0,
        W_BRAM_1_7_we0,
        W_BRAM_1_7_d0,
        m,
        c
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] fmap_TDATA;
input   fmap_TVALID;
output   fmap_TREADY;
output  [3:0] W_BRAM_0_0_address0;
output   W_BRAM_0_0_ce0;
output   W_BRAM_0_0_we0;
output  [15:0] W_BRAM_0_0_d0;
output  [3:0] W_BRAM_0_1_address0;
output   W_BRAM_0_1_ce0;
output   W_BRAM_0_1_we0;
output  [15:0] W_BRAM_0_1_d0;
output  [3:0] W_BRAM_0_2_address0;
output   W_BRAM_0_2_ce0;
output   W_BRAM_0_2_we0;
output  [15:0] W_BRAM_0_2_d0;
output  [3:0] W_BRAM_0_3_address0;
output   W_BRAM_0_3_ce0;
output   W_BRAM_0_3_we0;
output  [15:0] W_BRAM_0_3_d0;
output  [3:0] W_BRAM_0_4_address0;
output   W_BRAM_0_4_ce0;
output   W_BRAM_0_4_we0;
output  [15:0] W_BRAM_0_4_d0;
output  [3:0] W_BRAM_0_5_address0;
output   W_BRAM_0_5_ce0;
output   W_BRAM_0_5_we0;
output  [15:0] W_BRAM_0_5_d0;
output  [3:0] W_BRAM_0_6_address0;
output   W_BRAM_0_6_ce0;
output   W_BRAM_0_6_we0;
output  [15:0] W_BRAM_0_6_d0;
output  [3:0] W_BRAM_0_7_address0;
output   W_BRAM_0_7_ce0;
output   W_BRAM_0_7_we0;
output  [15:0] W_BRAM_0_7_d0;
output  [3:0] W_BRAM_1_0_address0;
output   W_BRAM_1_0_ce0;
output   W_BRAM_1_0_we0;
output  [15:0] W_BRAM_1_0_d0;
output  [3:0] W_BRAM_1_1_address0;
output   W_BRAM_1_1_ce0;
output   W_BRAM_1_1_we0;
output  [15:0] W_BRAM_1_1_d0;
output  [3:0] W_BRAM_1_2_address0;
output   W_BRAM_1_2_ce0;
output   W_BRAM_1_2_we0;
output  [15:0] W_BRAM_1_2_d0;
output  [3:0] W_BRAM_1_3_address0;
output   W_BRAM_1_3_ce0;
output   W_BRAM_1_3_we0;
output  [15:0] W_BRAM_1_3_d0;
output  [3:0] W_BRAM_1_4_address0;
output   W_BRAM_1_4_ce0;
output   W_BRAM_1_4_we0;
output  [15:0] W_BRAM_1_4_d0;
output  [3:0] W_BRAM_1_5_address0;
output   W_BRAM_1_5_ce0;
output   W_BRAM_1_5_we0;
output  [15:0] W_BRAM_1_5_d0;
output  [3:0] W_BRAM_1_6_address0;
output   W_BRAM_1_6_ce0;
output   W_BRAM_1_6_we0;
output  [15:0] W_BRAM_1_6_d0;
output  [3:0] W_BRAM_1_7_address0;
output   W_BRAM_1_7_ce0;
output   W_BRAM_1_7_we0;
output  [15:0] W_BRAM_1_7_d0;
input  [6:0] m;
input  [8:0] c;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fmap_TREADY;
reg W_BRAM_0_0_ce0;
reg W_BRAM_0_0_we0;
reg W_BRAM_0_1_ce0;
reg W_BRAM_0_1_we0;
reg W_BRAM_0_2_ce0;
reg W_BRAM_0_2_we0;
reg W_BRAM_0_3_ce0;
reg W_BRAM_0_3_we0;
reg W_BRAM_0_4_ce0;
reg W_BRAM_0_4_we0;
reg W_BRAM_0_5_ce0;
reg W_BRAM_0_5_we0;
reg W_BRAM_0_6_ce0;
reg W_BRAM_0_6_we0;
reg W_BRAM_0_7_ce0;
reg W_BRAM_0_7_we0;
reg W_BRAM_1_0_ce0;
reg W_BRAM_1_0_we0;
reg W_BRAM_1_1_ce0;
reg W_BRAM_1_1_we0;
reg W_BRAM_1_2_ce0;
reg W_BRAM_1_2_we0;
reg W_BRAM_1_3_ce0;
reg W_BRAM_1_3_we0;
reg W_BRAM_1_4_ce0;
reg W_BRAM_1_4_we0;
reg W_BRAM_1_5_ce0;
reg W_BRAM_1_5_we0;
reg W_BRAM_1_6_ce0;
reg W_BRAM_1_6_we0;
reg W_BRAM_1_7_ce0;
reg W_BRAM_1_7_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fmap_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] exitcond_flatten2_fu_500_p2;
reg   [67:0] indvar_flatten2_reg_312;
reg   [31:0] i1_reg_323;
reg   [35:0] indvar_flatten_reg_332;
reg   [31:0] j1_reg_343;
reg   [3:0] k1_reg_352;
wire   [0:0] tmp_16_fu_377_p1;
reg   [0:0] tmp_16_reg_662;
wire   [2:0] tmp_17_fu_381_p1;
reg   [2:0] tmp_17_reg_667;
wire   [35:0] bound_fu_439_p2;
reg   [35:0] bound_reg_673;
wire   [7:0] tmp_11_fu_463_p2;
reg   [7:0] tmp_11_reg_679;
wire   [31:0] c_cast2_fu_469_p1;
reg   [31:0] c_cast2_reg_684;
wire    ap_CS_fsm_state2;
wire   [31:0] m_cast1_fu_472_p1;
wire   [67:0] bound7_fu_485_p2;
reg   [67:0] bound7_reg_695;
wire   [2:0] tmp_35_t_fu_495_p2;
reg   [2:0] tmp_35_t_reg_700;
reg    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten2_reg_705;
wire   [67:0] indvar_flatten_next2_fu_505_p2;
wire   [0:0] exitcond_flatten_fu_517_p2;
reg   [0:0] exitcond_flatten_reg_714;
wire   [31:0] tmp_31_t_mid2_v_v_fu_529_p3;
reg   [31:0] tmp_31_t_mid2_v_v_reg_719;
wire   [0:0] tmp_31_t_mid2_fu_541_p2;
reg   [0:0] tmp_31_t_mid2_reg_724;
wire   [0:0] exitcond_mid_fu_558_p2;
reg   [0:0] exitcond_mid_reg_728;
wire   [3:0] k1_mid2_fu_576_p3;
reg   [3:0] k1_mid2_reg_733;
wire   [2:0] tmp_35_t_mid1_fu_588_p2;
reg   [2:0] tmp_35_t_mid1_reg_738;
wire   [31:0] j1_mid2_fu_593_p3;
reg   [15:0] fmap_read_reg_748;
wire   [3:0] k1_1_fu_601_p2;
wire   [35:0] indvar_flatten_next_fu_613_p3;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg   [31:0] ap_phi_mux_i1_phi_fu_326_p4;
wire   [63:0] tmp_3_fu_633_p1;
wire   [2:0] tmp_35_t_mid2_fu_627_p3;
wire   [8:0] tmp_s_fu_385_p2;
wire   [0:0] tmp_7_fu_391_p2;
wire   [8:0] smax1_fu_397_p3;
wire   [9:0] smax1_cast_fu_405_p1;
wire   [9:0] c_cast2_cast_fu_363_p1;
wire   [9:0] tmp_8_fu_409_p2;
wire  signed [31:0] tmp_21_cast_fu_415_p1;
wire   [12:0] tmp_18_fu_423_p3;
wire  signed [34:0] tmp_9_fu_431_p1;
wire   [35:0] p_shl_fu_435_p1;
wire   [35:0] cast_fu_419_p1;
wire   [6:0] tmp_fu_371_p2;
wire   [0:0] tmp_10_fu_445_p2;
wire   [6:0] smax4_fu_451_p3;
wire   [7:0] smax4_cast_fu_459_p1;
wire   [7:0] m_cast1_cast_fu_367_p1;
wire  signed [31:0] tmp_24_cast_fu_475_p1;
wire   [35:0] bound7_fu_485_p0;
wire   [31:0] bound7_fu_485_p1;
wire   [2:0] tmp_19_fu_491_p1;
wire   [31:0] i1_1_fu_511_p2;
wire   [0:0] tmp_20_fu_537_p1;
wire   [0:0] exitcond_fu_552_p2;
wire   [0:0] not_exitcond_flatten_fu_546_p2;
wire   [31:0] j1_mid_fu_522_p3;
wire   [0:0] tmp_12_fu_570_p2;
wire   [31:0] j1_1_fu_564_p2;
wire   [2:0] tmp_21_fu_584_p1;
wire   [35:0] indvar_flatten_op_fu_607_p2;
wire   [2:0] tmp_35_t_mid_fu_621_p3;
wire    ap_CS_fsm_state5;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [67:0] bound7_fu_485_p00;
wire   [67:0] bound7_fu_485_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_reg_705 == 1'd0))) begin
        i1_reg_323 <= tmp_31_t_mid2_v_v_reg_719;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i1_reg_323 <= m_cast1_fu_472_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_fu_500_p2 == 1'd0))) begin
        indvar_flatten2_reg_312 <= indvar_flatten_next2_fu_505_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten2_reg_312 <= 68'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_fu_500_p2 == 1'd0))) begin
        indvar_flatten_reg_332 <= indvar_flatten_next_fu_613_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_reg_332 <= 36'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_fu_500_p2 == 1'd0))) begin
        j1_reg_343 <= j1_mid2_fu_593_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        j1_reg_343 <= c_cast2_fu_469_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_fu_500_p2 == 1'd0))) begin
        k1_reg_352 <= k1_1_fu_601_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        k1_reg_352 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound7_reg_695 <= bound7_fu_485_p2;
        c_cast2_reg_684[8 : 0] <= c_cast2_fu_469_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_reg_673 <= bound_fu_439_p2;
        tmp_11_reg_679 <= tmp_11_fu_463_p2;
        tmp_16_reg_662 <= tmp_16_fu_377_p1;
        tmp_17_reg_667 <= tmp_17_fu_381_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten2_reg_705 <= exitcond_flatten2_fu_500_p2;
        tmp_35_t_reg_700 <= tmp_35_t_fu_495_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_fu_500_p2 == 1'd0))) begin
        exitcond_flatten_reg_714 <= exitcond_flatten_fu_517_p2;
        exitcond_mid_reg_728 <= exitcond_mid_fu_558_p2;
        fmap_read_reg_748 <= fmap_TDATA;
        k1_mid2_reg_733 <= k1_mid2_fu_576_p3;
        tmp_31_t_mid2_reg_724 <= tmp_31_t_mid2_fu_541_p2;
        tmp_35_t_mid1_reg_738 <= tmp_35_t_mid1_fu_588_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_fu_500_p2 == 1'd0))) begin
        tmp_31_t_mid2_v_v_reg_719 <= tmp_31_t_mid2_v_v_fu_529_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_0_0_ce0 = 1'b1;
    end else begin
        W_BRAM_0_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_31_t_mid2_reg_724 == 1'd0))) begin
        W_BRAM_0_0_we0 = 1'b1;
    end else begin
        W_BRAM_0_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_0_1_ce0 = 1'b1;
    end else begin
        W_BRAM_0_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_31_t_mid2_reg_724 == 1'd0))) begin
        W_BRAM_0_1_we0 = 1'b1;
    end else begin
        W_BRAM_0_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_0_2_ce0 = 1'b1;
    end else begin
        W_BRAM_0_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_31_t_mid2_reg_724 == 1'd0))) begin
        W_BRAM_0_2_we0 = 1'b1;
    end else begin
        W_BRAM_0_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_0_3_ce0 = 1'b1;
    end else begin
        W_BRAM_0_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_31_t_mid2_reg_724 == 1'd0))) begin
        W_BRAM_0_3_we0 = 1'b1;
    end else begin
        W_BRAM_0_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_0_4_ce0 = 1'b1;
    end else begin
        W_BRAM_0_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_31_t_mid2_reg_724 == 1'd0))) begin
        W_BRAM_0_4_we0 = 1'b1;
    end else begin
        W_BRAM_0_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_0_5_ce0 = 1'b1;
    end else begin
        W_BRAM_0_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_31_t_mid2_reg_724 == 1'd0))) begin
        W_BRAM_0_5_we0 = 1'b1;
    end else begin
        W_BRAM_0_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_0_6_ce0 = 1'b1;
    end else begin
        W_BRAM_0_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_31_t_mid2_reg_724 == 1'd0))) begin
        W_BRAM_0_6_we0 = 1'b1;
    end else begin
        W_BRAM_0_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_0_7_ce0 = 1'b1;
    end else begin
        W_BRAM_0_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_31_t_mid2_reg_724 == 1'd0))) begin
        W_BRAM_0_7_we0 = 1'b1;
    end else begin
        W_BRAM_0_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_0_ce0 = 1'b1;
    end else begin
        W_BRAM_1_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd0) & (tmp_31_t_mid2_reg_724 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_0_we0 = 1'b1;
    end else begin
        W_BRAM_1_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_1_ce0 = 1'b1;
    end else begin
        W_BRAM_1_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd1) & (tmp_31_t_mid2_reg_724 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_1_we0 = 1'b1;
    end else begin
        W_BRAM_1_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_2_ce0 = 1'b1;
    end else begin
        W_BRAM_1_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd2) & (tmp_31_t_mid2_reg_724 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_2_we0 = 1'b1;
    end else begin
        W_BRAM_1_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_3_ce0 = 1'b1;
    end else begin
        W_BRAM_1_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd3) & (tmp_31_t_mid2_reg_724 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_3_we0 = 1'b1;
    end else begin
        W_BRAM_1_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_4_ce0 = 1'b1;
    end else begin
        W_BRAM_1_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd4) & (tmp_31_t_mid2_reg_724 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_4_we0 = 1'b1;
    end else begin
        W_BRAM_1_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_5_ce0 = 1'b1;
    end else begin
        W_BRAM_1_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd5) & (tmp_31_t_mid2_reg_724 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_5_we0 = 1'b1;
    end else begin
        W_BRAM_1_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_6_ce0 = 1'b1;
    end else begin
        W_BRAM_1_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd6) & (tmp_31_t_mid2_reg_724 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_6_we0 = 1'b1;
    end else begin
        W_BRAM_1_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_7_ce0 = 1'b1;
    end else begin
        W_BRAM_1_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_t_mid2_fu_627_p3 == 3'd7) & (tmp_31_t_mid2_reg_724 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_BRAM_1_7_we0 = 1'b1;
    end else begin
        W_BRAM_1_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_flatten2_fu_500_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_reg_705 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i1_phi_fu_326_p4 = tmp_31_t_mid2_v_v_reg_719;
    end else begin
        ap_phi_mux_i1_phi_fu_326_p4 = i1_reg_323;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_fu_500_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        fmap_TDATA_blk_n = fmap_TVALID;
    end else begin
        fmap_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten2_fu_500_p2 == 1'd0))) begin
        fmap_TREADY = 1'b1;
    end else begin
        fmap_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_flatten2_fu_500_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_flatten2_fu_500_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign W_BRAM_0_0_address0 = tmp_3_fu_633_p1;

assign W_BRAM_0_0_d0 = fmap_read_reg_748;

assign W_BRAM_0_1_address0 = tmp_3_fu_633_p1;

assign W_BRAM_0_1_d0 = fmap_read_reg_748;

assign W_BRAM_0_2_address0 = tmp_3_fu_633_p1;

assign W_BRAM_0_2_d0 = fmap_read_reg_748;

assign W_BRAM_0_3_address0 = tmp_3_fu_633_p1;

assign W_BRAM_0_3_d0 = fmap_read_reg_748;

assign W_BRAM_0_4_address0 = tmp_3_fu_633_p1;

assign W_BRAM_0_4_d0 = fmap_read_reg_748;

assign W_BRAM_0_5_address0 = tmp_3_fu_633_p1;

assign W_BRAM_0_5_d0 = fmap_read_reg_748;

assign W_BRAM_0_6_address0 = tmp_3_fu_633_p1;

assign W_BRAM_0_6_d0 = fmap_read_reg_748;

assign W_BRAM_0_7_address0 = tmp_3_fu_633_p1;

assign W_BRAM_0_7_d0 = fmap_read_reg_748;

assign W_BRAM_1_0_address0 = tmp_3_fu_633_p1;

assign W_BRAM_1_0_d0 = fmap_read_reg_748;

assign W_BRAM_1_1_address0 = tmp_3_fu_633_p1;

assign W_BRAM_1_1_d0 = fmap_read_reg_748;

assign W_BRAM_1_2_address0 = tmp_3_fu_633_p1;

assign W_BRAM_1_2_d0 = fmap_read_reg_748;

assign W_BRAM_1_3_address0 = tmp_3_fu_633_p1;

assign W_BRAM_1_3_d0 = fmap_read_reg_748;

assign W_BRAM_1_4_address0 = tmp_3_fu_633_p1;

assign W_BRAM_1_4_d0 = fmap_read_reg_748;

assign W_BRAM_1_5_address0 = tmp_3_fu_633_p1;

assign W_BRAM_1_5_d0 = fmap_read_reg_748;

assign W_BRAM_1_6_address0 = tmp_3_fu_633_p1;

assign W_BRAM_1_6_d0 = fmap_read_reg_748;

assign W_BRAM_1_7_address0 = tmp_3_fu_633_p1;

assign W_BRAM_1_7_d0 = fmap_read_reg_748;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((fmap_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_flatten2_fu_500_p2 == 1'd0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((fmap_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_flatten2_fu_500_p2 == 1'd0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter0 = ((fmap_TVALID == 1'b0) & (exitcond_flatten2_fu_500_p2 == 1'd0));
end

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound7_fu_485_p0 = bound7_fu_485_p00;

assign bound7_fu_485_p00 = bound_reg_673;

assign bound7_fu_485_p1 = bound7_fu_485_p10;

assign bound7_fu_485_p10 = $unsigned(tmp_24_cast_fu_475_p1);

assign bound7_fu_485_p2 = (bound7_fu_485_p0 * bound7_fu_485_p1);

assign bound_fu_439_p2 = (p_shl_fu_435_p1 + cast_fu_419_p1);

assign c_cast2_cast_fu_363_p1 = c;

assign c_cast2_fu_469_p1 = c;

assign cast_fu_419_p1 = $unsigned(tmp_21_cast_fu_415_p1);

assign exitcond_flatten2_fu_500_p2 = ((indvar_flatten2_reg_312 == bound7_reg_695) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_517_p2 = ((indvar_flatten_reg_332 == bound_reg_673) ? 1'b1 : 1'b0);

assign exitcond_fu_552_p2 = ((k1_reg_352 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond_mid_fu_558_p2 = (not_exitcond_flatten_fu_546_p2 & exitcond_fu_552_p2);

assign i1_1_fu_511_p2 = (32'd1 + ap_phi_mux_i1_phi_fu_326_p4);

assign indvar_flatten_next2_fu_505_p2 = (68'd1 + indvar_flatten2_reg_312);

assign indvar_flatten_next_fu_613_p3 = ((exitcond_flatten_fu_517_p2[0:0] === 1'b1) ? 36'd1 : indvar_flatten_op_fu_607_p2);

assign indvar_flatten_op_fu_607_p2 = (indvar_flatten_reg_332 + 36'd1);

assign j1_1_fu_564_p2 = (32'd1 + j1_mid_fu_522_p3);

assign j1_mid2_fu_593_p3 = ((exitcond_mid_fu_558_p2[0:0] === 1'b1) ? j1_1_fu_564_p2 : j1_mid_fu_522_p3);

assign j1_mid_fu_522_p3 = ((exitcond_flatten_fu_517_p2[0:0] === 1'b1) ? c_cast2_reg_684 : j1_reg_343);

assign k1_1_fu_601_p2 = (k1_mid2_fu_576_p3 + 4'd1);

assign k1_mid2_fu_576_p3 = ((tmp_12_fu_570_p2[0:0] === 1'b1) ? 4'd0 : k1_reg_352);

assign m_cast1_cast_fu_367_p1 = m;

assign m_cast1_fu_472_p1 = m;

assign not_exitcond_flatten_fu_546_p2 = (exitcond_flatten_fu_517_p2 ^ 1'd1);

assign p_shl_fu_435_p1 = $unsigned(tmp_9_fu_431_p1);

assign smax1_cast_fu_405_p1 = smax1_fu_397_p3;

assign smax1_fu_397_p3 = ((tmp_7_fu_391_p2[0:0] === 1'b1) ? c : tmp_s_fu_385_p2);

assign smax4_cast_fu_459_p1 = smax4_fu_451_p3;

assign smax4_fu_451_p3 = ((tmp_10_fu_445_p2[0:0] === 1'b1) ? m : tmp_fu_371_p2);

assign tmp_10_fu_445_p2 = ((m > tmp_fu_371_p2) ? 1'b1 : 1'b0);

assign tmp_11_fu_463_p2 = (smax4_cast_fu_459_p1 - m_cast1_cast_fu_367_p1);

assign tmp_12_fu_570_p2 = (exitcond_mid_fu_558_p2 | exitcond_flatten_fu_517_p2);

assign tmp_16_fu_377_p1 = m[0:0];

assign tmp_17_fu_381_p1 = c[2:0];

assign tmp_18_fu_423_p3 = {{tmp_8_fu_409_p2}, {3'd0}};

assign tmp_19_fu_491_p1 = j1_reg_343[2:0];

assign tmp_20_fu_537_p1 = tmp_31_t_mid2_v_v_fu_529_p3[0:0];

assign tmp_21_cast_fu_415_p1 = $signed(tmp_8_fu_409_p2);

assign tmp_21_fu_584_p1 = j1_1_fu_564_p2[2:0];

assign tmp_24_cast_fu_475_p1 = $signed(tmp_11_reg_679);

assign tmp_31_t_mid2_fu_541_p2 = (tmp_20_fu_537_p1 ^ tmp_16_reg_662);

assign tmp_31_t_mid2_v_v_fu_529_p3 = ((exitcond_flatten_fu_517_p2[0:0] === 1'b1) ? i1_1_fu_511_p2 : ap_phi_mux_i1_phi_fu_326_p4);

assign tmp_35_t_fu_495_p2 = (tmp_19_fu_491_p1 - tmp_17_reg_667);

assign tmp_35_t_mid1_fu_588_p2 = (tmp_21_fu_584_p1 - tmp_17_reg_667);

assign tmp_35_t_mid2_fu_627_p3 = ((exitcond_mid_reg_728[0:0] === 1'b1) ? tmp_35_t_mid1_reg_738 : tmp_35_t_mid_fu_621_p3);

assign tmp_35_t_mid_fu_621_p3 = ((exitcond_flatten_reg_714[0:0] === 1'b1) ? 3'd0 : tmp_35_t_reg_700);

assign tmp_3_fu_633_p1 = k1_mid2_reg_733;

assign tmp_7_fu_391_p2 = ((c > tmp_s_fu_385_p2) ? 1'b1 : 1'b0);

assign tmp_8_fu_409_p2 = (smax1_cast_fu_405_p1 - c_cast2_cast_fu_363_p1);

assign tmp_9_fu_431_p1 = $signed(tmp_18_fu_423_p3);

assign tmp_fu_371_p2 = (7'd2 + m);

assign tmp_s_fu_385_p2 = (9'd8 + c);

always @ (posedge ap_clk) begin
    c_cast2_reg_684[31:9] <= 23'b00000000000000000000000;
end

endmodule //data_transfer_f
