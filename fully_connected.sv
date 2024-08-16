
`timescale 1ns / 1ps

module fully_connected #(parameter INPUT_NUM = 1536, OUTPUT_NUM = 512, DATA_BITS = 32) (
   input clk,
   input rst_n,
   input valid_in,
   input [DATA_BITS-1:0] data_in_1,  input [DATA_BITS-1:0] data_in_2,  input [DATA_BITS-1:0] data_in_3,
   input [DATA_BITS-1:0] data_in_4,  input [DATA_BITS-1:0] data_in_5,  input [DATA_BITS-1:0] data_in_6,
   input [DATA_BITS-1:0] data_in_7,  input [DATA_BITS-1:0] data_in_8,  input [DATA_BITS-1:0] data_in_9,
   input [DATA_BITS-1:0] data_in_10, input [DATA_BITS-1:0] data_in_11, input [DATA_BITS-1:0] data_in_12,
   input [DATA_BITS-1:0] data_in_13, input [DATA_BITS-1:0] data_in_14, input [DATA_BITS-1:0] data_in_15,
   input [DATA_BITS-1:0] data_in_16, input [DATA_BITS-1:0] data_in_17, input [DATA_BITS-1:0] data_in_18,
   input [DATA_BITS-1:0] data_in_19, input [DATA_BITS-1:0] data_in_20, input [DATA_BITS-1:0] data_in_21,
   input [DATA_BITS-1:0] data_in_22, input [DATA_BITS-1:0] data_in_23, input [DATA_BITS-1:0] data_in_24,
   input [DATA_BITS-1:0] data_in_25, input [DATA_BITS-1:0] data_in_26, input [DATA_BITS-1:0] data_in_27,
   input [DATA_BITS-1:0] data_in_28, input [DATA_BITS-1:0] data_in_29, input [DATA_BITS-1:0] data_in_30,
   input [DATA_BITS-1:0] data_in_31, input [DATA_BITS-1:0] data_in_32, input [DATA_BITS-1:0] data_in_33,
   input [DATA_BITS-1:0] data_in_34, input [DATA_BITS-1:0] data_in_35, input [DATA_BITS-1:0] data_in_36,
   input [DATA_BITS-1:0] data_in_37, input [DATA_BITS-1:0] data_in_38, input [DATA_BITS-1:0] data_in_39,
   input [DATA_BITS-1:0] data_in_40, input [DATA_BITS-1:0] data_in_41, input [DATA_BITS-1:0] data_in_42,
   input [DATA_BITS-1:0] data_in_43, input [DATA_BITS-1:0] data_in_44, input [DATA_BITS-1:0] data_in_45,
   input [DATA_BITS-1:0] data_in_46, input [DATA_BITS-1:0] data_in_47, input [DATA_BITS-1:0] data_in_48,
   input [DATA_BITS-1:0] data_in_49, input [DATA_BITS-1:0] data_in_50, input [DATA_BITS-1:0] data_in_51,
   input [DATA_BITS-1:0] data_in_52, input [DATA_BITS-1:0] data_in_53, input [DATA_BITS-1:0] data_in_54,
   input [DATA_BITS-1:0] data_in_55, input [DATA_BITS-1:0] data_in_56, input [DATA_BITS-1:0] data_in_57,
   input [DATA_BITS-1:0] data_in_58, input [DATA_BITS-1:0] data_in_59, input [DATA_BITS-1:0] data_in_60,
   input [DATA_BITS-1:0] data_in_61, input [DATA_BITS-1:0] data_in_62, input [DATA_BITS-1:0] data_in_63,
   input [DATA_BITS-1:0] data_in_64, input [DATA_BITS-1:0] data_in_65, input [DATA_BITS-1:0] data_in_66,
   input [DATA_BITS-1:0] data_in_67, input [DATA_BITS-1:0] data_in_68, input [DATA_BITS-1:0] data_in_69,
   input [DATA_BITS-1:0] data_in_70, input [DATA_BITS-1:0] data_in_71, input [DATA_BITS-1:0] data_in_72,
   input [DATA_BITS-1:0] data_in_73, input [DATA_BITS-1:0] data_in_74, input [DATA_BITS-1:0] data_in_75,
   input [DATA_BITS-1:0] data_in_76, input [DATA_BITS-1:0] data_in_77, input [DATA_BITS-1:0] data_in_78,
   input [DATA_BITS-1:0] data_in_79, input [DATA_BITS-1:0] data_in_80, input [DATA_BITS-1:0] data_in_81,
   input [DATA_BITS-1:0] data_in_82, input [DATA_BITS-1:0] data_in_83, input [DATA_BITS-1:0] data_in_84,
   input [DATA_BITS-1:0] data_in_85, input [DATA_BITS-1:0] data_in_86, input [DATA_BITS-1:0] data_in_87,
   input [DATA_BITS-1:0] data_in_88, input [DATA_BITS-1:0] data_in_89, input [DATA_BITS-1:0] data_in_90,
   input [DATA_BITS-1:0] data_in_91, input [DATA_BITS-1:0] data_in_92, input [DATA_BITS-1:0] data_in_93,
   input [DATA_BITS-1:0] data_in_94, input [DATA_BITS-1:0] data_in_95, input [DATA_BITS-1:0] data_in_96,
   input [DATA_BITS-1:0] data_in_97, input [DATA_BITS-1:0] data_in_98, input [DATA_BITS-1:0] data_in_99,
   input [DATA_BITS-1:0] data_in_100, input [DATA_BITS-1:0] data_in_101, input [DATA_BITS-1:0] data_in_102,
   input [DATA_BITS-1:0] data_in_103, input [DATA_BITS-1:0] data_in_104, input [DATA_BITS-1:0] data_in_105,
   input [DATA_BITS-1:0] data_in_106, input [DATA_BITS-1:0] data_in_107, input [DATA_BITS-1:0] data_in_108,
   input [DATA_BITS-1:0] data_in_109, input [DATA_BITS-1:0] data_in_110, input [DATA_BITS-1:0] data_in_111,
   input [DATA_BITS-1:0] data_in_112, input [DATA_BITS-1:0] data_in_113, input [DATA_BITS-1:0] data_in_114,
   input [DATA_BITS-1:0] data_in_115, input [DATA_BITS-1:0] data_in_116, input [DATA_BITS-1:0] data_in_117,
   input [DATA_BITS-1:0] data_in_118, input [DATA_BITS-1:0] data_in_119, input [DATA_BITS-1:0] data_in_120,
   input [DATA_BITS-1:0] data_in_121, input [DATA_BITS-1:0] data_in_122, input [DATA_BITS-1:0] data_in_123,
   input [DATA_BITS-1:0] data_in_124, input [DATA_BITS-1:0] data_in_125, input [DATA_BITS-1:0] data_in_126,
   input [DATA_BITS-1:0] data_in_127, input [DATA_BITS-1:0] data_in_128, 
   //------------------------------------------------------출력 선언 ----------------------------------------------------------------------------------------------------------------------------------------------
   output reg [10:0] state,
   output reg [9:0] buf_idx,
   output reg [31:0] data_out_final, 
   output reg valid_out_fc1,
   
   output reg [9:0] data_out_num,
   output reg r,
   output reg [DATA_BITS-1:0] data_out,
   output reg valid_out_fc,
   output reg [DATA_BITS-1:0] fa_a, fa_b,
   output wire [DATA_BITS-1:0] fa_sum,
   output reg [DATA_BITS-1:0] fm_a, fm_b,
   output wire [DATA_BITS-1:0] fm_z,
   output reg fm_valid,
   output reg fa_valid,
   output reg [10:0] sum_idx,
   
   output reg [9:0] data_out_num_2,
   output reg r_2,
   output reg [DATA_BITS-1:0] data_out_2,
   output reg valid_out_fc_2,
   output reg [DATA_BITS-1:0] fa_a_2, fa_b_2,
   output wire [DATA_BITS-1:0] fa_sum_2,
   output reg [DATA_BITS-1:0] fm_a_2, fm_b_2,
   output wire [DATA_BITS-1:0] fm_z_2,
   output reg fm_valid_2,
   output reg fa_valid_2,
   output reg [10:0] sum_idx_2,

   output reg [9:0] data_out_num_3,
   output reg r_3,
   output reg [DATA_BITS-1:0] data_out_3,
   output reg valid_out_fc_3,
   output reg [DATA_BITS-1:0] fa_a_3, fa_b_3,
   output wire [DATA_BITS-1:0] fa_sum_3,
   output reg [DATA_BITS-1:0] fm_a_3, fm_b_3,
   output wire [DATA_BITS-1:0] fm_z_3,
   output reg fm_valid_3,
   output reg fa_valid_3,
   output reg [10:0] sum_idx_3,

   output reg [9:0] data_out_num_4,
   output reg r_4,
   output reg [DATA_BITS-1:0] data_out_4,
   output reg valid_out_fc_4,
   output reg [DATA_BITS-1:0] fa_a_4, fa_b_4,
   output wire [DATA_BITS-1:0] fa_sum_4,
   output reg [DATA_BITS-1:0] fm_a_4, fm_b_4,
   output wire [DATA_BITS-1:0] fm_z_4,
   output reg fm_valid_4,
   output reg fa_valid_4,
   output reg [10:0] sum_idx_4,

   output reg [9:0] data_out_num_5,
   output reg r_5,
   output reg [DATA_BITS-1:0] data_out_5,
   output reg valid_out_fc_5,
   output reg [DATA_BITS-1:0] fa_a_5, fa_b_5,
   output wire [DATA_BITS-1:0] fa_sum_5,
   output reg [DATA_BITS-1:0] fm_a_5, fm_b_5,
   output wire [DATA_BITS-1:0] fm_z_5,
   output reg fm_valid_5,
   output reg fa_valid_5,
   output reg [10:0] sum_idx_5,

   output reg [9:0] data_out_num_6,
   output reg r_6,
   output reg [DATA_BITS-1:0] data_out_6,
   output reg valid_out_fc_6,
   output reg [DATA_BITS-1:0] fa_a_6, fa_b_6,
   output wire [DATA_BITS-1:0] fa_sum_6,
   output reg [DATA_BITS-1:0] fm_a_6, fm_b_6,
   output wire [DATA_BITS-1:0] fm_z_6,
   output reg fm_valid_6,
   output reg fa_valid_6,
   output reg [10:0] sum_idx_6,

   output reg [9:0] data_out_num_7,
   output reg r_7,
   output reg [DATA_BITS-1:0] data_out_7,
   output reg valid_out_fc_7,
   output reg [DATA_BITS-1:0] fa_a_7, fa_b_7,
   output wire [DATA_BITS-1:0] fa_sum_7,
   output reg [DATA_BITS-1:0] fm_a_7, fm_b_7,
   output wire [DATA_BITS-1:0] fm_z_7,
   output reg fm_valid_7,
   output reg fa_valid_7,
   output reg [10:0] sum_idx_7,

   output reg [9:0] data_out_num_8,
   output reg r_8,
   output reg [DATA_BITS-1:0] data_out_8,
   output reg valid_out_fc_8,
   output reg [DATA_BITS-1:0] fa_a_8, fa_b_8,
   output wire [DATA_BITS-1:0] fa_sum_8,
   output reg [DATA_BITS-1:0] fm_a_8, fm_b_8,
   output wire [DATA_BITS-1:0] fm_z_8,
   output reg fm_valid_8,
   output reg fa_valid_8,
   output reg [10:0] sum_idx_8,

   output reg [9:0] data_out_num_9,
   output reg r_9,
   output reg [DATA_BITS-1:0] data_out_9,
   output reg valid_out_fc_9,
   output reg [DATA_BITS-1:0] fa_a_9, fa_b_9,
   output wire [DATA_BITS-1:0] fa_sum_9,
   output reg [DATA_BITS-1:0] fm_a_9, fm_b_9,
   output wire [DATA_BITS-1:0] fm_z_9,
   output reg fm_valid_9,
   output reg fa_valid_9,
   output reg [10:0] sum_idx_9,

   output reg [9:0] data_out_num_10,
   output reg r_10,
   output reg [DATA_BITS-1:0] data_out_10,
   output reg valid_out_fc_10,
   output reg [DATA_BITS-1:0] fa_a_10, fa_b_10,
   output wire [DATA_BITS-1:0] fa_sum_10,
   output reg [DATA_BITS-1:0] fm_a_10, fm_b_10,
   output wire [DATA_BITS-1:0] fm_z_10,
   output reg fm_valid_10,
   output reg fa_valid_10,
   output reg [10:0] sum_idx_10,

   output reg [9:0] data_out_num_11,
   output reg r_11,
   output reg [DATA_BITS-1:0] data_out_11,
   output reg valid_out_fc_11,
   output reg [DATA_BITS-1:0] fa_a_11, fa_b_11,
   output wire [DATA_BITS-1:0] fa_sum_11,
   output reg [DATA_BITS-1:0] fm_a_11, fm_b_11,
   output wire [DATA_BITS-1:0] fm_z_11,
   output reg fm_valid_11,
   output reg fa_valid_11,
   output reg [10:0] sum_idx_11,

   output reg [9:0] data_out_num_12,
   output reg r_12,
   output reg [DATA_BITS-1:0] data_out_12,
   output reg valid_out_fc_12,
   output reg [DATA_BITS-1:0] fa_a_12, fa_b_12,
   output wire [DATA_BITS-1:0] fa_sum_12,
   output reg [DATA_BITS-1:0] fm_a_12, fm_b_12,
   output wire [DATA_BITS-1:0] fm_z_12,
   output reg fm_valid_12,
   output reg fa_valid_12,
   output reg [10:0] sum_idx_12,

   output reg [9:0] data_out_num_13,
   output reg r_13,
   output reg [DATA_BITS-1:0] data_out_13,
   output reg valid_out_fc_13,
   output reg [DATA_BITS-1:0] fa_a_13, fa_b_13,
   output wire [DATA_BITS-1:0] fa_sum_13,
   output reg [DATA_BITS-1:0] fm_a_13, fm_b_13,
   output wire [DATA_BITS-1:0] fm_z_13,
   output reg fm_valid_13,
   output reg fa_valid_13,
   output reg [10:0] sum_idx_13,

   output reg [9:0] data_out_num_14,
   output reg r_14,
   output reg [DATA_BITS-1:0] data_out_14,
   output reg valid_out_fc_14,
   output reg [DATA_BITS-1:0] fa_a_14, fa_b_14,
   output wire [DATA_BITS-1:0] fa_sum_14,
   output reg [DATA_BITS-1:0] fm_a_14, fm_b_14,
   output wire [DATA_BITS-1:0] fm_z_14,
   output reg fm_valid_14,
   output reg fa_valid_14,
   output reg [10:0] sum_idx_14,

   output reg [9:0] data_out_num_15,
   output reg r_15,
   output reg [DATA_BITS-1:0] data_out_15,
   output reg valid_out_fc_15,
   output reg [DATA_BITS-1:0] fa_a_15, fa_b_15,
   output wire [DATA_BITS-1:0] fa_sum_15,
   output reg [DATA_BITS-1:0] fm_a_15, fm_b_15,
   output wire [DATA_BITS-1:0] fm_z_15,
   output reg fm_valid_15,
   output reg fa_valid_15,
   output reg [10:0] sum_idx_15,

   output reg [9:0] data_out_num_16,
   output reg r_16,
   output reg [DATA_BITS-1:0] data_out_16,
   output reg valid_out_fc_16,
   output reg [DATA_BITS-1:0] fa_a_16, fa_b_16,
   output wire [DATA_BITS-1:0] fa_sum_16,
   output reg [DATA_BITS-1:0] fm_a_16, fm_b_16,
   output wire [DATA_BITS-1:0] fm_z_16,
   output reg fm_valid_16,
   output reg fa_valid_16,
   output reg [10:0] sum_idx_16,

   output reg [9:0] data_out_num_17,
   output reg r_17,
   output reg [DATA_BITS-1:0] data_out_17,
   output reg valid_out_fc_17,
   output reg [DATA_BITS-1:0] fa_a_17, fa_b_17,
   output wire [DATA_BITS-1:0] fa_sum_17,
   output reg [DATA_BITS-1:0] fm_a_17, fm_b_17,
   output wire [DATA_BITS-1:0] fm_z_17,
   output reg fm_valid_17,
   output reg fa_valid_17,
   output reg [10:0] sum_idx_17,

   output reg [9:0] data_out_num_18,
   output reg r_18,
   output reg [DATA_BITS-1:0] data_out_18,
   output reg valid_out_fc_18,
   output reg [DATA_BITS-1:0] fa_a_18, fa_b_18,
   output wire [DATA_BITS-1:0] fa_sum_18,
   output reg [DATA_BITS-1:0] fm_a_18, fm_b_18,
   output wire [DATA_BITS-1:0] fm_z_18,
   output reg fm_valid_18,
   output reg fa_valid_18,
   output reg [10:0] sum_idx_18,

   output reg [9:0] data_out_num_19,
   output reg r_19,
   output reg [DATA_BITS-1:0] data_out_19,
   output reg valid_out_fc_19,
   output reg [DATA_BITS-1:0] fa_a_19, fa_b_19,
   output wire [DATA_BITS-1:0] fa_sum_19,
   output reg [DATA_BITS-1:0] fm_a_19, fm_b_19,
   output wire [DATA_BITS-1:0] fm_z_19,
   output reg fm_valid_19,
   output reg fa_valid_19,
   output reg [10:0] sum_idx_19,

   output reg [9:0] data_out_num_20,
   output reg r_20,
   output reg [DATA_BITS-1:0] data_out_20,
   output reg valid_out_fc_20,
   output reg [DATA_BITS-1:0] fa_a_20, fa_b_20,
   output wire [DATA_BITS-1:0] fa_sum_20,
   output reg [DATA_BITS-1:0] fm_a_20, fm_b_20,
   output wire [DATA_BITS-1:0] fm_z_20,
   output reg fm_valid_20,
   output reg fa_valid_20,
   output reg [10:0] sum_idx_20,

   output reg [9:0] data_out_num_21,
   output reg r_21,
   output reg [DATA_BITS-1:0] data_out_21,
   output reg valid_out_fc_21,
   output reg [DATA_BITS-1:0] fa_a_21, fa_b_21,
   output wire [DATA_BITS-1:0] fa_sum_21,
   output reg [DATA_BITS-1:0] fm_a_21, fm_b_21,
   output wire [DATA_BITS-1:0] fm_z_21,
   output reg fm_valid_21,
   output reg fa_valid_21,
   output reg [10:0] sum_idx_21,

   output reg [9:0] data_out_num_22,
   output reg r_22,
   output reg [DATA_BITS-1:0] data_out_22,
   output reg valid_out_fc_22,
   output reg [DATA_BITS-1:0] fa_a_22, fa_b_22,
   output wire [DATA_BITS-1:0] fa_sum_22,
   output reg [DATA_BITS-1:0] fm_a_22, fm_b_22,
   output wire [DATA_BITS-1:0] fm_z_22,
   output reg fm_valid_22,
   output reg fa_valid_22,
   output reg [10:0] sum_idx_22,

   output reg [9:0] data_out_num_23,
   output reg r_23,
   output reg [DATA_BITS-1:0] data_out_23,
   output reg valid_out_fc_23,
   output reg [DATA_BITS-1:0] fa_a_23, fa_b_23,
   output wire [DATA_BITS-1:0] fa_sum_23,
   output reg [DATA_BITS-1:0] fm_a_23, fm_b_23,
   output wire [DATA_BITS-1:0] fm_z_23,
   output reg fm_valid_23,
   output reg fa_valid_23,
   output reg [10:0] sum_idx_23,

   output reg [9:0] data_out_num_24,
   output reg r_24,
   output reg [DATA_BITS-1:0] data_out_24,
   output reg valid_out_fc_24,
   output reg [DATA_BITS-1:0] fa_a_24, fa_b_24,
   output wire [DATA_BITS-1:0] fa_sum_24,
   output reg [DATA_BITS-1:0] fm_a_24, fm_b_24,
   output wire [DATA_BITS-1:0] fm_z_24,
   output reg fm_valid_24,
   output reg fa_valid_24,
   output reg [10:0] sum_idx_24,

   output reg [9:0] data_out_num_25,
   output reg r_25,
   output reg [DATA_BITS-1:0] data_out_25,
   output reg valid_out_fc_25,
   output reg [DATA_BITS-1:0] fa_a_25, fa_b_25,
   output wire [DATA_BITS-1:0] fa_sum_25,
   output reg [DATA_BITS-1:0] fm_a_25, fm_b_25,
   output wire [DATA_BITS-1:0] fm_z_25,
   output reg fm_valid_25,
   output reg fa_valid_25,
   output reg [10:0] sum_idx_25,

   output reg [9:0] data_out_num_26,
   output reg r_26,
   output reg [DATA_BITS-1:0] data_out_26,
   output reg valid_out_fc_26,
   output reg [DATA_BITS-1:0] fa_a_26, fa_b_26,
   output wire [DATA_BITS-1:0] fa_sum_26,
   output reg [DATA_BITS-1:0] fm_a_26, fm_b_26,
   output wire [DATA_BITS-1:0] fm_z_26,
   output reg fm_valid_26,
   output reg fa_valid_26,
   output reg [10:0] sum_idx_26,

   output reg [9:0] data_out_num_27,
   output reg r_27,
   output reg [DATA_BITS-1:0] data_out_27,
   output reg valid_out_fc_27,
   output reg [DATA_BITS-1:0] fa_a_27, fa_b_27,
   output wire [DATA_BITS-1:0] fa_sum_27,
   output reg [DATA_BITS-1:0] fm_a_27, fm_b_27,
   output wire [DATA_BITS-1:0] fm_z_27,
   output reg fm_valid_27,
   output reg fa_valid_27,
   output reg [10:0] sum_idx_27,

   output reg [9:0] data_out_num_28,
   output reg r_28,
   output reg [DATA_BITS-1:0] data_out_28,
   output reg valid_out_fc_28,
   output reg [DATA_BITS-1:0] fa_a_28, fa_b_28,
   output wire [DATA_BITS-1:0] fa_sum_28,
   output reg [DATA_BITS-1:0] fm_a_28, fm_b_28,
   output wire [DATA_BITS-1:0] fm_z_28,
   output reg fm_valid_28,
   output reg fa_valid_28,
   output reg [10:0] sum_idx_28,

   output reg [9:0] data_out_num_29,
   output reg r_29,
   output reg [DATA_BITS-1:0] data_out_29,
   output reg valid_out_fc_29,
   output reg [DATA_BITS-1:0] fa_a_29, fa_b_29,
   output wire [DATA_BITS-1:0] fa_sum_29,
   output reg [DATA_BITS-1:0] fm_a_29, fm_b_29,
   output wire [DATA_BITS-1:0] fm_z_29,
   output reg fm_valid_29,
   output reg fa_valid_29,
   output reg [10:0] sum_idx_29,

   output reg [9:0] data_out_num_30,
   output reg r_30,
   output reg [DATA_BITS-1:0] data_out_30,
   output reg valid_out_fc_30,
   output reg [DATA_BITS-1:0] fa_a_30, fa_b_30,
   output wire [DATA_BITS-1:0] fa_sum_30,
   output reg [DATA_BITS-1:0] fm_a_30, fm_b_30,
   output wire [DATA_BITS-1:0] fm_z_30,
   output reg fm_valid_30,
   output reg fa_valid_30,
   output reg [10:0] sum_idx_30,

   output reg [9:0] data_out_num_31,
   output reg r_31,
   output reg [DATA_BITS-1:0] data_out_31,
   output reg valid_out_fc_31,
   output reg [DATA_BITS-1:0] fa_a_31, fa_b_31,
   output wire [DATA_BITS-1:0] fa_sum_31,
   output reg [DATA_BITS-1:0] fm_a_31, fm_b_31,
   output wire [DATA_BITS-1:0] fm_z_31,
   output reg fm_valid_31,
   output reg fa_valid_31,
   output reg [10:0] sum_idx_31,

   output reg [9:0] data_out_num_32,
   output reg r_32,
   output reg [DATA_BITS-1:0] data_out_32,
   output reg valid_out_fc_32,
   output reg [DATA_BITS-1:0] fa_a_32, fa_b_32,
   output wire [DATA_BITS-1:0] fa_sum_32,
   output reg [DATA_BITS-1:0] fm_a_32, fm_b_32,
   output wire [DATA_BITS-1:0] fm_z_32,
   output reg fm_valid_32,
   output reg fa_valid_32,
   output reg [10:0] sum_idx_32,
   output reg [DATA_BITS-1:0] buffer [0:INPUT_NUM - 1]
);//입출력 포트 정의

localparam INPUT_WIDTH = 12;
localparam INPUT_NUM_DATA_BITS = 11;//파라미터 정의

reg [31:0] data_out_buffer [0:511];

reg [DATA_BITS-1:0] weight [0:INPUT_NUM * OUTPUT_NUM - 1];
reg [DATA_BITS-1:0] bias [0:OUTPUT_NUM - 1];
integer i;
//--------------------------------------------------------레지스터 선언 ~32--------------------------------------------------------------------------------------------------------------------------------------------
reg [9:0] out_idx;
wire fa_valid_d;
wire fm_valid_d;
reg q,w,t;

reg [9:0] out_idx_2;
wire fa_valid_d_2;
wire fm_valid_d_2;
reg q_2,w_2,t_2;

reg [9:0] out_idx_3;
wire fa_valid_d_3;
wire fm_valid_d_3;
reg q_3,w_3,t_3;

reg [9:0] out_idx_4;
wire fa_valid_d_4;
wire fm_valid_d_4;
reg q_4,w_4,t_4;

reg [9:0] out_idx_5;
wire fa_valid_d_5;
wire fm_valid_d_5;
reg q_5,w_5,t_5;

reg [9:0] out_idx_6;
wire fa_valid_d_6;
wire fm_valid_d_6;
reg q_6,w_6,t_6;

reg [9:0] out_idx_7;
wire fa_valid_d_7;
wire fm_valid_d_7;
reg q_7,w_7,t_7;

reg [9:0] out_idx_8;
wire fa_valid_d_8;
wire fm_valid_d_8;
reg q_8,w_8,t_8;

reg [9:0] out_idx_9;
wire fa_valid_d_9;
wire fm_valid_d_9;
reg q_9,w_9,t_9;

reg [9:0] out_idx_10;
wire fa_valid_d_10;
wire fm_valid_d_10;
reg q_10,w_10,t_10;

reg [9:0] out_idx_11;
wire fa_valid_d_11;
wire fm_valid_d_11;
reg q_11,w_11,t_11;

reg [9:0] out_idx_12;
wire fa_valid_d_12;
wire fm_valid_d_12;
reg q_12,w_12,t_12;

reg [9:0] out_idx_13;
wire fa_valid_d_13;
wire fm_valid_d_13;
reg q_13,w_13,t_13;

reg [9:0] out_idx_14;
wire fa_valid_d_14;
wire fm_valid_d_14;
reg q_14,w_14,t_14;

reg [9:0] out_idx_15;
wire fa_valid_d_15;
wire fm_valid_d_15;
reg q_15,w_15,t_15;

reg [9:0] out_idx_16;
wire fa_valid_d_16;
wire fm_valid_d_16;
reg q_16,w_16,t_16;

reg [9:0] out_idx_17;
wire fa_valid_d_17;
wire fm_valid_d_17;
reg q_17,w_17,t_17;

reg [9:0] out_idx_18;
wire fa_valid_d_18;
wire fm_valid_d_18;
reg q_18,w_18,t_18;

reg [9:0] out_idx_19;
wire fa_valid_d_19;
wire fm_valid_d_19;
reg q_19,w_19,t_19;

reg [9:0] out_idx_20;
wire fa_valid_d_20;
wire fm_valid_d_20;
reg q_20,w_20,t_20;

reg [9:0] out_idx_21;
wire fa_valid_d_21;
wire fm_valid_d_21;
reg q_21,w_21,t_21;

reg [9:0] out_idx_22;
wire fa_valid_d_22;
wire fm_valid_d_22;
reg q_22,w_22,t_22;

reg [9:0] out_idx_23;
wire fa_valid_d_23;
wire fm_valid_d_23;
reg q_23,w_23,t_23;

reg [9:0] out_idx_24;
wire fa_valid_d_24;
wire fm_valid_d_24;
reg q_24,w_24,t_24;

reg [9:0] out_idx_25;
wire fa_valid_d_25;
wire fm_valid_d_25;
reg q_25,w_25,t_25;

reg [9:0] out_idx_26;
wire fa_valid_d_26;
wire fm_valid_d_26;
reg q_26,w_26,t_26;

reg [9:0] out_idx_27;
wire fa_valid_d_27;
wire fm_valid_d_27;
reg q_27,w_27,t_27;

reg [9:0] out_idx_28;
wire fa_valid_d_28;
wire fm_valid_d_28;
reg q_28,w_28,t_28;

reg [9:0] out_idx_29;
wire fa_valid_d_29;
wire fm_valid_d_29;
reg q_29,w_29,t_29;

reg [9:0] out_idx_30;
wire fa_valid_d_30;
wire fm_valid_d_30;
reg q_30,w_30,t_30;

reg [9:0] out_idx_31;
wire fa_valid_d_31;
wire fm_valid_d_31;
reg q_31,w_31,t_31;

reg [9:0] out_idx_32;
wire fa_valid_d_32;
wire fm_valid_d_32;
reg q_32,w_32,t_32;

reg delay;

initial begin
   $readmemh("/Users/stars/fc_layer_connect/fc_layer_connect.srcs/sources_1/new/fc1_weight_16.txt", weight); 
   $readmemh("/Users/stars/fc_layer_connect/fc_layer_connect.srcs/sources_1/new/fc1_bias_16.txt", bias);
end //가중치, 편향값 파일 위치 주의

//--------------------------------------------------------곱셈기 인스턴스--------------------------------------------------------------------------------------------------------------------------------------------
fm mul_inst (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a),
    .b(fm_b),
    .z(fm_z),
    .valid(fm_valid_d),
    .v(fm_valid)
);

fm_2 mul_inst_2 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_2),
    .b(fm_b_2),
    .z(fm_z_2),
    .valid(fm_valid_d_2),
    .v(fm_valid_2)
);

fm_3 mul_inst_3 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_3),
    .b(fm_b_3),
    .z(fm_z_3),
    .valid(fm_valid_d_3),
    .v(fm_valid_3)
);

fm_4 mul_inst_4 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_4),
    .b(fm_b_4),
    .z(fm_z_4),
    .valid(fm_valid_d_4),
    .v(fm_valid_4)
);

fm_5 mul_inst_5 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_5),
    .b(fm_b_5),
    .z(fm_z_5),
    .valid(fm_valid_d_5),
    .v(fm_valid_5)
);

fm_6 mul_inst_6 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_6),
    .b(fm_b_6),
    .z(fm_z_6),
    .valid(fm_valid_d_6),
    .v(fm_valid_6)
);

fm_7 mul_inst_7 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_7),
    .b(fm_b_7),
    .z(fm_z_7),
    .valid(fm_valid_d_7),
    .v(fm_valid_7)
);

fm_8 mul_inst_8 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_8),
    .b(fm_b_8),
    .z(fm_z_8),
    .valid(fm_valid_d_8),
    .v(fm_valid_8)
);

fm_9 mul_inst_9 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_9),
    .b(fm_b_9),
    .z(fm_z_9),
    .valid(fm_valid_d_9),
    .v(fm_valid_9)
);

fm_10 mul_inst_10 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_10),
    .b(fm_b_10),
    .z(fm_z_10),
    .valid(fm_valid_d_10),
    .v(fm_valid_10)
);

fm_11 mul_inst_11 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_11),
    .b(fm_b_11),
    .z(fm_z_11),
    .valid(fm_valid_d_11),
    .v(fm_valid_11)
);

fm_12 mul_inst_12 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_12),
    .b(fm_b_12),
    .z(fm_z_12),
    .valid(fm_valid_d_12),
    .v(fm_valid_12)
);

fm_13 mul_inst_13 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_13),
    .b(fm_b_13),
    .z(fm_z_13),
    .valid(fm_valid_d_13),
    .v(fm_valid_13)
);

fm_14 mul_inst_14 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_14),
    .b(fm_b_14),
    .z(fm_z_14),
    .valid(fm_valid_d_14),
    .v(fm_valid_14)
);

fm_15 mul_inst_15 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_15),
    .b(fm_b_15),
    .z(fm_z_15),
    .valid(fm_valid_d_15),
    .v(fm_valid_15)
);

fm_16 mul_inst_16 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_16),
    .b(fm_b_16),
    .z(fm_z_16),
    .valid(fm_valid_d_16),
    .v(fm_valid_16)
);

fm_17 mul_inst_17 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_17),
    .b(fm_b_17),
    .z(fm_z_17),
    .valid(fm_valid_d_17),
    .v(fm_valid_17)
);

fm_18 mul_inst_18 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_18),
    .b(fm_b_18),
    .z(fm_z_18),
    .valid(fm_valid_d_18),
    .v(fm_valid_18)
);

fm_19 mul_inst_19 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_19),
    .b(fm_b_19),
    .z(fm_z_19),
    .valid(fm_valid_d_19),
    .v(fm_valid_19)
);

fm_20 mul_inst_20 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_20),
    .b(fm_b_20),
    .z(fm_z_20),
    .valid(fm_valid_d_20),
    .v(fm_valid_20)
);

fm_21 mul_inst_21 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_21),
    .b(fm_b_21),
    .z(fm_z_21),
    .valid(fm_valid_d_21),
    .v(fm_valid_21)
);

fm_22 mul_inst_22 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_22),
    .b(fm_b_22),
    .z(fm_z_22),
    .valid(fm_valid_d_22),
    .v(fm_valid_22)
);

fm_23 mul_inst_23 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_23),
    .b(fm_b_23),
    .z(fm_z_23),
    .valid(fm_valid_d_23),
    .v(fm_valid_23)
);

fm_24 mul_inst_24 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_24),
    .b(fm_b_24),
    .z(fm_z_24),
    .valid(fm_valid_d_24),
    .v(fm_valid_24)
);

fm_25 mul_inst_25 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_25),
    .b(fm_b_25),
    .z(fm_z_25),
    .valid(fm_valid_d_25),
    .v(fm_valid_25)
);

fm_26 mul_inst_26 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_26),
    .b(fm_b_26),
    .z(fm_z_26),
    .valid(fm_valid_d_26),
    .v(fm_valid_26)
);

fm_27 mul_inst_27 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_27),
    .b(fm_b_27),
    .z(fm_z_27),
    .valid(fm_valid_d_27),
    .v(fm_valid_27)
);

fm_28 mul_inst_28 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_28),
    .b(fm_b_28),
    .z(fm_z_28),
    .valid(fm_valid_d_28),
    .v(fm_valid_28)
);

fm_29 mul_inst_29 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_29),
    .b(fm_b_29),
    .z(fm_z_29),
    .valid(fm_valid_d_29),
    .v(fm_valid_29)
);

fm_30 mul_inst_30 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_30),
    .b(fm_b_30),
    .z(fm_z_30),
    .valid(fm_valid_d_30),
    .v(fm_valid_30)
);

fm_31 mul_inst_31 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_31),
    .b(fm_b_31),
    .z(fm_z_31),
    .valid(fm_valid_d_31),
    .v(fm_valid_31)
);

fm_32 mul_inst_32 (
    .clk(clk),
    .rst_n(rst_n),
    .a(fm_a_32),
    .b(fm_b_32),
    .z(fm_z_32),
    .valid(fm_valid_d_32),
    .v(fm_valid_32)
);


//----------------------------------------------------------덧셈기 인스턴스------------------------------------------------------------------------------------------------------------------------------------------
fa add_inst (
    .a(fa_a),
    .b(fa_b),
    .clk(clk),
    .sum(fa_sum),
    .valid(fa_valid_d),
    .v(fa_valid)
);

fa_2 add_inst_2 (
    .a(fa_a_2),
    .b(fa_b_2),
    .clk(clk),
    .sum(fa_sum_2),
    .valid(fa_valid_d_2),
    .v(fa_valid_2)
);

fa_3 add_inst_3 (
    .a(fa_a_3),
    .b(fa_b_3),
    .clk(clk),
    .sum(fa_sum_3),
    .valid(fa_valid_d_3),
    .v(fa_valid_3)
);

fa_4 add_inst_4 (
    .a(fa_a_4),
    .b(fa_b_4),
    .clk(clk),
    .sum(fa_sum_4),
    .valid(fa_valid_d_4),
    .v(fa_valid_4)
);

fa_5 add_inst_5 (
    .a(fa_a_5),
    .b(fa_b_5),
    .clk(clk),
    .sum(fa_sum_5),
    .valid(fa_valid_d_5),
    .v(fa_valid_5)
);

fa_6 add_inst_6 (
    .a(fa_a_6),
    .b(fa_b_6),
    .clk(clk),
    .sum(fa_sum_6),
    .valid(fa_valid_d_6),
    .v(fa_valid_6)
);

fa_7 add_inst_7 (
    .a(fa_a_7),
    .b(fa_b_7),
    .clk(clk),
    .sum(fa_sum_7),
    .valid(fa_valid_d_7),
    .v(fa_valid_7)
);

fa_8 add_inst_8 (
    .a(fa_a_8),
    .b(fa_b_8),
    .clk(clk),
    .sum(fa_sum_8),
    .valid(fa_valid_d_8),
    .v(fa_valid_8)
);

fa_9 add_inst_9 (
    .a(fa_a_9),
    .b(fa_b_9),
    .clk(clk),
    .sum(fa_sum_9),
    .valid(fa_valid_d_9),
    .v(fa_valid_9)
);

fa_10 add_inst_10 (
    .a(fa_a_10),
    .b(fa_b_10),
    .clk(clk),
    .sum(fa_sum_10),
    .valid(fa_valid_d_10),
    .v(fa_valid_10)
);

fa_11 add_inst_11 (
    .a(fa_a_11),
    .b(fa_b_11),
    .clk(clk),
    .sum(fa_sum_11),
    .valid(fa_valid_d_11),
    .v(fa_valid_11)
);

fa_12 add_inst_12 (
    .a(fa_a_12),
    .b(fa_b_12),
    .clk(clk),
    .sum(fa_sum_12),
    .valid(fa_valid_d_12),
    .v(fa_valid_12)
);

fa_13 add_inst_13 (
    .a(fa_a_13),
    .b(fa_b_13),
    .clk(clk),
    .sum(fa_sum_13),
    .valid(fa_valid_d_13),
    .v(fa_valid_13)
);

fa_14 add_inst_14 (
    .a(fa_a_14),
    .b(fa_b_14),
    .clk(clk),
    .sum(fa_sum_14),
    .valid(fa_valid_d_14),
    .v(fa_valid_14)
);

fa_15 add_inst_15 (
    .a(fa_a_15),
    .b(fa_b_15),
    .clk(clk),
    .sum(fa_sum_15),
    .valid(fa_valid_d_15),
    .v(fa_valid_15)
);

fa_16 add_inst_16 (
    .a(fa_a_16),
    .b(fa_b_16),
    .clk(clk),
    .sum(fa_sum_16),
    .valid(fa_valid_d_16),
    .v(fa_valid_16)
);

fa_17 add_inst_17 (
    .a(fa_a_17),
    .b(fa_b_17),
    .clk(clk),
    .sum(fa_sum_17),
    .valid(fa_valid_d_17),
    .v(fa_valid_17)
);

fa_18 add_inst_18 (
    .a(fa_a_18),
    .b(fa_b_18),
    .clk(clk),
    .sum(fa_sum_18),
    .valid(fa_valid_d_18),
    .v(fa_valid_18)
);

fa_19 add_inst_19 (
    .a(fa_a_19),
    .b(fa_b_19),
    .clk(clk),
    .sum(fa_sum_19),
    .valid(fa_valid_d_19),
    .v(fa_valid_19)
);

fa_20 add_inst_20 (
    .a(fa_a_20),
    .b(fa_b_20),
    .clk(clk),
    .sum(fa_sum_20),
    .valid(fa_valid_d_20),
    .v(fa_valid_20)
);

fa_21 add_inst_21 (
    .a(fa_a_21),
    .b(fa_b_21),
    .clk(clk),
    .sum(fa_sum_21),
    .valid(fa_valid_d_21),
    .v(fa_valid_21)
);

fa_22 add_inst_22 (
    .a(fa_a_22),
    .b(fa_b_22),
    .clk(clk),
    .sum(fa_sum_22),
    .valid(fa_valid_d_22),
    .v(fa_valid_22)
);

fa_23 add_inst_23 (
    .a(fa_a_23),
    .b(fa_b_23),
    .clk(clk),
    .sum(fa_sum_23),
    .valid(fa_valid_d_23),
    .v(fa_valid_23)
);

fa_24 add_inst_24 (
    .a(fa_a_24),
    .b(fa_b_24),
    .clk(clk),
    .sum(fa_sum_24),
    .valid(fa_valid_d_24),
    .v(fa_valid_24)
);

fa_25 add_inst_25 (
    .a(fa_a_25),
    .b(fa_b_25),
    .clk(clk),
    .sum(fa_sum_25),
    .valid(fa_valid_d_25),
    .v(fa_valid_25)
);

fa_26 add_inst_26 (
    .a(fa_a_26),
    .b(fa_b_26),
    .clk(clk),
    .sum(fa_sum_26),
    .valid(fa_valid_d_26),
    .v(fa_valid_26)
);

fa_27 add_inst_27 (
    .a(fa_a_27),
    .b(fa_b_27),
    .clk(clk),
    .sum(fa_sum_27),
    .valid(fa_valid_d_27),
    .v(fa_valid_27)
);

fa_28 add_inst_28 (
    .a(fa_a_28),
    .b(fa_b_28),
    .clk(clk),
    .sum(fa_sum_28),
    .valid(fa_valid_d_28),
    .v(fa_valid_28)
);

fa_29 add_inst_29 (
    .a(fa_a_29),
    .b(fa_b_29),
    .clk(clk),
    .sum(fa_sum_29),
    .valid(fa_valid_d_29),
    .v(fa_valid_29)
);

fa_30 add_inst_30 (
    .a(fa_a_30),
    .b(fa_b_30),
    .clk(clk),
    .sum(fa_sum_30),
    .valid(fa_valid_d_30),
    .v(fa_valid_30)
);

fa_31 add_inst_31 (
    .a(fa_a_31),
    .b(fa_b_31),
    .clk(clk),
    .sum(fa_sum_31),
    .valid(fa_valid_d_31),
    .v(fa_valid_31)
);

fa_32 add_inst_32 (
    .a(fa_a_32),
    .b(fa_b_32),
    .clk(clk),
    .sum(fa_sum_32),
    .valid(fa_valid_d_32),
    .v(fa_valid_32)
);

//-------------------------------------------------------------always 블록---------------------------------------------------------------------------------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
    //---------------------------------------------------------초기화-------------------------------------------------------------------------------------------------------------------------------------------
        buf_idx <= 0;
        state <= 0; 
        valid_out_fc1 <=0;
        i <= 0;
              
        valid_out_fc <= 0;            
        out_idx <= 0;        
        fa_a <= 32'h00000000;
        sum_idx <= 0;
        fm_valid <= 0;
        fa_valid <= 0;
        q <= 1;
        w <= 0;
        r <= 0;
        t <= 0;
        data_out_num <= 0;
        
        valid_out_fc_2 <= 0;      
        out_idx_2 <= 16;        
        fa_a_2 <= 32'h00000000;
        sum_idx_2 <= 0;
        fm_valid_2 <= 0;
        fa_valid_2 <= 0;
        q_2 <= 1;
        w_2 <= 0;
        r_2 <= 0;
        t_2 <= 0;
        data_out_num_2 <= 0;
        
        valid_out_fc_3 <= 0;      
        out_idx_3 <= 32;        
        fa_a_3 <= 32'h00000000;
        sum_idx_3 <= 0;
        fm_valid_3 <= 0;
        fa_valid_3 <= 0;
        q_3 <= 1;
        w_3 <= 0;
        r_3 <= 0;
        t_3 <= 0;
        data_out_num_3 <= 0;
        
        valid_out_fc_4 <= 0;      
        out_idx_4 <= 48;        
        fa_a_4 <= 32'h00000000;
        sum_idx_4 <= 0;
        fm_valid_4 <= 0;
        fa_valid_4 <= 0;
        q_4 <= 1;
        w_4 <= 0;
        r_4 <= 0;
        t_4 <= 0;
        data_out_num_4 <= 0;

        valid_out_fc_5 <= 0;      
        out_idx_5 <= 64;        
        fa_a_5 <= 32'h00000000;
        sum_idx_5 <= 0;
        fm_valid_5 <= 0;
        fa_valid_5 <= 0;
        q_5 <= 1;
        w_5 <= 0;
        r_5 <= 0;
        t_5 <= 0;
        data_out_num_5 <= 0;
        
        valid_out_fc_6 <= 0;      
        out_idx_6 <= 80;        
        fa_a_6 <= 32'h00000000;
        sum_idx_6 <= 0;
        fm_valid_6 <= 0;
        fa_valid_6 <= 0;
        q_6 <= 1;
        w_6 <= 0;
        r_6 <= 0;
        t_6 <= 0;
        data_out_num_6 <= 0;
        
        valid_out_fc_7 <= 0;      
        out_idx_7 <= 96;        
        fa_a_7 <= 32'h00000000;
        sum_idx_7 <= 0;
        fm_valid_7 <= 0;
        fa_valid_7 <= 0;
        q_7 <= 1;
        w_7 <= 0;
        r_7 <= 0;
        t_7 <= 0;
        data_out_num_7 <= 0;
        
        valid_out_fc_8 <= 0;      
        out_idx_8 <= 112;        
        fa_a_8 <= 32'h00000000;
        sum_idx_8 <= 0;
        fm_valid_8 <= 0;
        fa_valid_8 <= 0;
        q_8 <= 1;
        w_8 <= 0;
        r_8 <= 0;
        t_8 <= 0;
        data_out_num_8 <= 0;

        valid_out_fc_9 <= 0;      
        out_idx_9 <= 128;        
        fa_a_9 <= 32'h00000000;
        sum_idx_9 <= 0;
        fm_valid_9 <= 0;
        fa_valid_9 <= 0;
        q_9 <= 1;
        w_9 <= 0;
        r_9 <= 0;
        t_9 <= 0;
        data_out_num_9 <= 0;

        valid_out_fc_10 <= 0;      
        out_idx_10 <= 144;        
        fa_a_10 <= 32'h00000000;
        sum_idx_10 <= 0;
        fm_valid_10 <= 0;
        fa_valid_10 <= 0;
        q_10 <= 1;
        w_10 <= 0;
        r_10 <= 0;
        t_10 <= 0;
        data_out_num_10 <= 0;
        
        valid_out_fc_11 <= 0;      
        out_idx_11 <= 160;        
        fa_a_11 <= 32'h00000000;
        sum_idx_11 <= 0;
        fm_valid_11 <= 0;
        fa_valid_11 <= 0;
        q_11 <= 1;
        w_11 <= 0;
        r_11 <= 0;
        t_11 <= 0;
        data_out_num_11 <= 0;
        
        valid_out_fc_12 <= 0;      
        out_idx_12 <= 176;        
        fa_a_12 <= 32'h00000000;
        sum_idx_12 <= 0;
        fm_valid_12 <= 0;
        fa_valid_12 <= 0;
        q_12 <= 1;
        w_12 <= 0;
        r_12 <= 0;
        t_12 <= 0;
        data_out_num_12 <= 0;
        
        valid_out_fc_13 <= 0;      
        out_idx_13 <= 192;        
        fa_a_13 <= 32'h00000000;
        sum_idx_13 <= 0;
        fm_valid_13 <= 0;
        fa_valid_13 <= 0;
        q_13 <= 1;
        w_13 <= 0;
        r_13 <= 0;
        t_13 <= 0;
        data_out_num_13 <= 0;

        valid_out_fc_14 <= 0;      
        out_idx_14 <= 208;        
        fa_a_14 <= 32'h00000000;
        sum_idx_14 <= 0;
        fm_valid_14 <= 0;
        fa_valid_14 <= 0;
        q_14 <= 1;
        w_14 <= 0;
        r_14 <= 0;
        t_14 <= 0;
        data_out_num_14 <= 0;

        valid_out_fc_15 <= 0;      
        out_idx_15 <= 224;        
        fa_a_15 <= 32'h00000000;
        sum_idx_15 <= 0;
        fm_valid_15 <= 0;
        fa_valid_15 <= 0;
        q_15 <= 1;
        w_15 <= 0;
        r_15 <= 0;
        t_15 <= 0;
        data_out_num_15 <= 0;
        
        valid_out_fc_16 <= 0;      
        out_idx_16 <= 240;        
        fa_a_16 <= 32'h00000000;
        sum_idx_16 <= 0;
        fm_valid_16 <= 0;
        fa_valid_16 <= 0;
        q_16 <= 1;
        w_16 <= 0;
        r_16 <= 0;
        t_16 <= 0;
        data_out_num_16 <= 0;
        
        valid_out_fc_17 <= 0;      
        out_idx_17 <= 256;        
        fa_a_17 <= 32'h00000000;
        sum_idx_17 <= 0;
        fm_valid_17 <= 0;
        fa_valid_17 <= 0;
        q_17 <= 1;
        w_17 <= 0;
        r_17 <= 0;
        t_17 <= 0;
        data_out_num_17 <= 0;
        
        valid_out_fc_18 <= 0;      
        out_idx_18 <= 272;        
        fa_a_18 <= 32'h00000000;
        sum_idx_18 <= 0;
        fm_valid_18 <= 0;
        fa_valid_18 <= 0;
        q_18 <= 1;
        w_18 <= 0;
        r_18 <= 0;
        t_18 <= 0;
        data_out_num_18 <= 0;

        valid_out_fc_19 <= 0;      
        out_idx_19 <= 288;        
        fa_a_19 <= 32'h00000000;
        sum_idx_19 <= 0;
        fm_valid_19 <= 0;
        fa_valid_19 <= 0;
        q_19 <= 1;
        w_19 <= 0;
        r_19 <= 0;
        t_19 <= 0;
        data_out_num_19 <= 0;

        valid_out_fc_20 <= 0;      
        out_idx_20 <= 304;        
        fa_a_20 <= 32'h00000000;
        sum_idx_20 <= 0;
        fm_valid_20 <= 0;
        fa_valid_20 <= 0;
        q_20 <= 1;
        w_20 <= 0;
        r_20 <= 0;
        t_20 <= 0;
        data_out_num_20 <= 0;
        
        valid_out_fc_21 <= 0;      
        out_idx_21 <= 320;        
        fa_a_21 <= 32'h00000000;
        sum_idx_21 <= 0;
        fm_valid_21 <= 0;
        fa_valid_21 <= 0;
        q_21 <= 1;
        w_21 <= 0;
        r_21 <= 0;
        t_21 <= 0;
        data_out_num_21 <= 0;
        
        valid_out_fc_22 <= 0;      
        out_idx_22 <= 336;        
        fa_a_22 <= 32'h00000000;
        sum_idx_22 <= 0;
        fm_valid_22 <= 0;
        fa_valid_22 <= 0;
        q_22 <= 1;
        w_22 <= 0;
        r_22 <= 0;
        t_22 <= 0;
        data_out_num_22 <= 0;
        
        valid_out_fc_23 <= 0;      
        out_idx_23 <= 352;        
        fa_a_23 <= 32'h00000000;
        sum_idx_23 <= 0;
        fm_valid_23 <= 0;
        fa_valid_23 <= 0;
        q_23 <= 1;
        w_23 <= 0;
        r_23 <= 0;
        t_23 <= 0;
        data_out_num_23 <= 0;

        valid_out_fc_24 <= 0;      
        out_idx_24 <= 368;        
        fa_a_24 <= 32'h00000000;
        sum_idx_24 <= 0;
        fm_valid_24 <= 0;
        fa_valid_24 <= 0;
        q_24 <= 1;
        w_24 <= 0;
        r_24 <= 0;
        t_24 <= 0;
        data_out_num_24 <= 0;

        valid_out_fc_25 <= 0;      
        out_idx_25 <= 384;        
        fa_a_25 <= 32'h00000000;
        sum_idx_25 <= 0;
        fm_valid_25 <= 0;
        fa_valid_25 <= 0;
        q_25 <= 1;
        w_25 <= 0;
        r_25 <= 0;
        t_25 <= 0;
        data_out_num_25 <= 0;
        
        valid_out_fc_26 <= 0;      
        out_idx_26 <= 400;        
        fa_a_26 <= 32'h00000000;
        sum_idx_26 <= 0;
        fm_valid_26 <= 0;
        fa_valid_26 <= 0;
        q_26 <= 1;
        w_26 <= 0;
        r_26 <= 0;
        t_26 <= 0;
        data_out_num_26 <= 0;
        
        valid_out_fc_27 <= 0;      
        out_idx_27 <= 416;        
        fa_a_27 <= 32'h00000000;
        sum_idx_27 <= 0;
        fm_valid_27 <= 0;
        fa_valid_27 <= 0;
        q_27 <= 1;
        w_27 <= 0;
        r_27 <= 0;
        t_27 <= 0;
        data_out_num_27 <= 0;
        
        valid_out_fc_28 <= 0;      
        out_idx_28 <= 432;        
        fa_a_28 <= 32'h00000000;
        sum_idx_28 <= 0;
        fm_valid_28 <= 0;
        fa_valid_28 <= 0;
        q_28 <= 1;
        w_28 <= 0;
        r_28 <= 0;
        t_28 <= 0;
        data_out_num_28 <= 0;

        valid_out_fc_29 <= 0;      
        out_idx_29 <= 448;        
        fa_a_29 <= 32'h00000000;
        sum_idx_29 <= 0;
        fm_valid_29 <= 0;
        fa_valid_29 <= 0;
        q_29 <= 1;
        w_29 <= 0;
        r_29 <= 0;
        t_29 <= 0;
        data_out_num_29 <= 0;

        valid_out_fc_30 <= 0;      
        out_idx_30 <= 464;        
        fa_a_30 <= 32'h00000000;
        sum_idx_30 <= 0;
        fm_valid_30 <= 0;
        fa_valid_30 <= 0;
        q_30 <= 1;
        w_30 <= 0;
        r_30 <= 0;
        t_30 <= 0;
        data_out_num_30 <= 0;
        
        valid_out_fc_31 <= 0;      
        out_idx_31 <= 480;        
        fa_a_31 <= 32'h00000000;
        sum_idx_31 <= 0;
        fm_valid_31 <= 0;
        fa_valid_31 <= 0;
        q_31 <= 1;
        w_31 <= 0;
        r_31 <= 0;
        t_31 <= 0;
        data_out_num_31 <= 0;
        
        valid_out_fc_32 <= 0;      
        out_idx_32 <= 496;        
        fa_a_32 <= 32'h00000000;
        sum_idx_32 <= 0;
        fm_valid_32 <= 0;
        fa_valid_32 <= 0;
        q_32 <= 1;
        w_32 <= 0;
        r_32 <= 0;
        t_32 <= 0;
        data_out_num_32 <= 0;
        
    end 
    
    else begin
    if(valid_out_fc==1) begin
        valid_out_fc <= 0;
    end 
    //-------------------------------------------------------버퍼 작동---------------------------------------------------------------------------------------------------------------------------------------------
    else begin
        if (valid_in) begin
            if (state == 0) begin
                buffer[buf_idx]               <= data_in_1;
                buffer[INPUT_WIDTH + buf_idx] <= data_in_2;
                buffer[INPUT_WIDTH * 2 + buf_idx]  <= data_in_3;
                buffer[INPUT_WIDTH * 3 + buf_idx]  <= data_in_4;
                buffer[INPUT_WIDTH * 4 + buf_idx]  <= data_in_5;
                buffer[INPUT_WIDTH * 5 + buf_idx]  <= data_in_6;
                buffer[INPUT_WIDTH * 6 + buf_idx]  <= data_in_7;
                buffer[INPUT_WIDTH * 7 + buf_idx]  <= data_in_8;
                buffer[INPUT_WIDTH * 8 + buf_idx]  <= data_in_9;
                buffer[INPUT_WIDTH * 9 + buf_idx]  <= data_in_10;
                buffer[INPUT_WIDTH * 10 + buf_idx] <= data_in_11;
                buffer[INPUT_WIDTH * 11 + buf_idx] <= data_in_12;
                buffer[INPUT_WIDTH * 12 + buf_idx] <= data_in_13;
                buffer[INPUT_WIDTH * 13 + buf_idx] <= data_in_14;
                buffer[INPUT_WIDTH * 14 + buf_idx] <= data_in_15;
                buffer[INPUT_WIDTH * 15 + buf_idx] <= data_in_16;
                buffer[INPUT_WIDTH * 16 + buf_idx] <= data_in_17;
                buffer[INPUT_WIDTH * 17 + buf_idx] <= data_in_18;
                buffer[INPUT_WIDTH * 18 + buf_idx] <= data_in_19;
                buffer[INPUT_WIDTH * 19 + buf_idx] <= data_in_20;
                buffer[INPUT_WIDTH * 20 + buf_idx] <= data_in_21;
                buffer[INPUT_WIDTH * 21 + buf_idx] <= data_in_22;
                buffer[INPUT_WIDTH * 22 + buf_idx] <= data_in_23;
                buffer[INPUT_WIDTH * 23 + buf_idx] <= data_in_24;
                buffer[INPUT_WIDTH * 24 + buf_idx] <= data_in_25;
                buffer[INPUT_WIDTH * 25 + buf_idx] <= data_in_26;
                buffer[INPUT_WIDTH * 26 + buf_idx] <= data_in_27;
                buffer[INPUT_WIDTH * 27 + buf_idx] <= data_in_28;
                buffer[INPUT_WIDTH * 28 + buf_idx] <= data_in_29;
                buffer[INPUT_WIDTH * 29 + buf_idx] <= data_in_30;
                buffer[INPUT_WIDTH * 30 + buf_idx] <= data_in_31;
                buffer[INPUT_WIDTH * 31 + buf_idx] <= data_in_32;
                buffer[INPUT_WIDTH * 32 + buf_idx] <= data_in_33;
                buffer[INPUT_WIDTH * 33 + buf_idx] <= data_in_34;
                buffer[INPUT_WIDTH * 34 + buf_idx] <= data_in_35;
                buffer[INPUT_WIDTH * 35 + buf_idx] <= data_in_36;
                buffer[INPUT_WIDTH * 36 + buf_idx] <= data_in_37;
                buffer[INPUT_WIDTH * 37 + buf_idx] <= data_in_38;
                buffer[INPUT_WIDTH * 38 + buf_idx] <= data_in_39;
                buffer[INPUT_WIDTH * 39 + buf_idx] <= data_in_40;
                buffer[INPUT_WIDTH * 40 + buf_idx] <= data_in_41;
                buffer[INPUT_WIDTH * 41 + buf_idx] <= data_in_42;
                buffer[INPUT_WIDTH * 42 + buf_idx] <= data_in_43;
                buffer[INPUT_WIDTH * 43 + buf_idx] <= data_in_44;
                buffer[INPUT_WIDTH * 44 + buf_idx] <= data_in_45;
                buffer[INPUT_WIDTH * 45 + buf_idx] <= data_in_46;
                buffer[INPUT_WIDTH * 46 + buf_idx] <= data_in_47;
                buffer[INPUT_WIDTH * 47 + buf_idx] <= data_in_48;
                buffer[INPUT_WIDTH * 48 + buf_idx] <= data_in_49;
                buffer[INPUT_WIDTH * 49 + buf_idx] <= data_in_50;
                buffer[INPUT_WIDTH * 50 + buf_idx] <= data_in_51;
                buffer[INPUT_WIDTH * 51 + buf_idx] <= data_in_52;
                buffer[INPUT_WIDTH * 52 + buf_idx] <= data_in_53;
                buffer[INPUT_WIDTH * 53 + buf_idx] <= data_in_54;
                buffer[INPUT_WIDTH * 54 + buf_idx] <= data_in_55;
                buffer[INPUT_WIDTH * 55 + buf_idx] <= data_in_56;
                buffer[INPUT_WIDTH * 56 + buf_idx] <= data_in_57;
                buffer[INPUT_WIDTH * 57 + buf_idx] <= data_in_58;
                buffer[INPUT_WIDTH * 58 + buf_idx] <= data_in_59;
                buffer[INPUT_WIDTH * 59 + buf_idx] <= data_in_60;
                buffer[INPUT_WIDTH * 60 + buf_idx] <= data_in_61;
                buffer[INPUT_WIDTH * 61 + buf_idx] <= data_in_62;
                buffer[INPUT_WIDTH * 62 + buf_idx] <= data_in_63;
                buffer[INPUT_WIDTH * 63 + buf_idx] <= data_in_64;
                buffer[INPUT_WIDTH * 64 + buf_idx] <= data_in_65;
                buffer[INPUT_WIDTH * 65 + buf_idx] <= data_in_66;
                buffer[INPUT_WIDTH * 66 + buf_idx] <= data_in_67;
                buffer[INPUT_WIDTH * 67 + buf_idx] <= data_in_68;
                buffer[INPUT_WIDTH * 68 + buf_idx] <= data_in_69;
                buffer[INPUT_WIDTH * 69 + buf_idx] <= data_in_70;
                buffer[INPUT_WIDTH * 70 + buf_idx] <= data_in_71;
                buffer[INPUT_WIDTH * 71 + buf_idx] <= data_in_72;
                buffer[INPUT_WIDTH * 72 + buf_idx] <= data_in_73;
                buffer[INPUT_WIDTH * 73 + buf_idx] <= data_in_74;
                buffer[INPUT_WIDTH * 74 + buf_idx] <= data_in_75;
                buffer[INPUT_WIDTH * 75 + buf_idx] <= data_in_76;
                buffer[INPUT_WIDTH * 76 + buf_idx] <= data_in_77;
                buffer[INPUT_WIDTH * 77 + buf_idx] <= data_in_78;
                buffer[INPUT_WIDTH * 78 + buf_idx] <= data_in_79;
                buffer[INPUT_WIDTH * 79 + buf_idx] <= data_in_80;
                buffer[INPUT_WIDTH * 80 + buf_idx] <= data_in_81;
                buffer[INPUT_WIDTH * 81 + buf_idx] <= data_in_82;
                buffer[INPUT_WIDTH * 82 + buf_idx] <= data_in_83;
                buffer[INPUT_WIDTH * 83 + buf_idx] <= data_in_84;
                buffer[INPUT_WIDTH * 84 + buf_idx] <= data_in_85;
                buffer[INPUT_WIDTH * 85 + buf_idx] <= data_in_86;
                buffer[INPUT_WIDTH * 86 + buf_idx] <= data_in_87;
                buffer[INPUT_WIDTH * 87 + buf_idx] <= data_in_88;
                buffer[INPUT_WIDTH * 88 + buf_idx] <= data_in_89;
                buffer[INPUT_WIDTH * 89 + buf_idx] <= data_in_90;
                buffer[INPUT_WIDTH * 90 + buf_idx] <= data_in_91;
                buffer[INPUT_WIDTH * 91 + buf_idx] <= data_in_92;
                buffer[INPUT_WIDTH * 92 + buf_idx] <= data_in_93;
                buffer[INPUT_WIDTH * 93 + buf_idx] <= data_in_94;
                buffer[INPUT_WIDTH * 94 + buf_idx] <= data_in_95;
                buffer[INPUT_WIDTH * 95 + buf_idx] <= data_in_96;
                buffer[INPUT_WIDTH * 96 + buf_idx] <= data_in_97;
                buffer[INPUT_WIDTH * 97 + buf_idx] <= data_in_98;
                buffer[INPUT_WIDTH * 98 + buf_idx] <= data_in_99;
                buffer[INPUT_WIDTH * 99 + buf_idx] <= data_in_100;
                buffer[INPUT_WIDTH * 100 + buf_idx] <= data_in_101;
                buffer[INPUT_WIDTH * 101 + buf_idx] <= data_in_102;
                buffer[INPUT_WIDTH * 102 + buf_idx] <= data_in_103;
                buffer[INPUT_WIDTH * 103 + buf_idx] <= data_in_104;
                buffer[INPUT_WIDTH * 104 + buf_idx] <= data_in_105;
                buffer[INPUT_WIDTH * 105 + buf_idx] <= data_in_106;
                buffer[INPUT_WIDTH * 106 + buf_idx] <= data_in_107;
                buffer[INPUT_WIDTH * 107 + buf_idx] <= data_in_108;
                buffer[INPUT_WIDTH * 108 + buf_idx] <= data_in_109;
                buffer[INPUT_WIDTH * 109 + buf_idx] <= data_in_110;
                buffer[INPUT_WIDTH * 110 + buf_idx] <= data_in_111;
                buffer[INPUT_WIDTH * 111 + buf_idx] <= data_in_112;
                buffer[INPUT_WIDTH * 112 + buf_idx] <= data_in_113;
                buffer[INPUT_WIDTH * 113 + buf_idx] <= data_in_114;
                buffer[INPUT_WIDTH * 114 + buf_idx] <= data_in_115;
                buffer[INPUT_WIDTH * 115 + buf_idx] <= data_in_116;
                buffer[INPUT_WIDTH * 116 + buf_idx] <= data_in_117;
                buffer[INPUT_WIDTH * 117 + buf_idx] <= data_in_118;
                buffer[INPUT_WIDTH * 118 + buf_idx] <= data_in_119;
                buffer[INPUT_WIDTH * 119 + buf_idx] <= data_in_120;
                buffer[INPUT_WIDTH * 120 + buf_idx] <= data_in_121;
                buffer[INPUT_WIDTH * 121 + buf_idx] <= data_in_122;
                buffer[INPUT_WIDTH * 122 + buf_idx] <= data_in_123;
                buffer[INPUT_WIDTH * 123 + buf_idx] <= data_in_124;
                buffer[INPUT_WIDTH * 124 + buf_idx] <= data_in_125;
                buffer[INPUT_WIDTH * 125 + buf_idx] <= data_in_126;
                buffer[INPUT_WIDTH * 126 + buf_idx] <= data_in_127;
                buffer[INPUT_WIDTH * 127 + buf_idx] <= data_in_128;
                buf_idx <= buf_idx + 1'b1;
                if (buf_idx == INPUT_WIDTH - 1) begin
                    buf_idx <= 0;
                    state <= 1;
                end
            end 
        end
    end
// -----------------------------------------------------완전연결층 연산--------------------------------------------------------------------------

// ---------------------------------------------------------------------------------------------------------- 1
     if (state==1) begin    
    if (sum_idx < INPUT_NUM) begin     
        if(q==1) begin
        fm_a <= buffer[sum_idx];
        fm_b <= weight[out_idx * INPUT_NUM + sum_idx];
        fm_valid <= 1;
        q <= 0;
        w <= 1;
        r <= 0;
        end
        
        if (fm_valid_d && (w == 1)) begin                                       
            fa_b <= fm_z;
            fa_valid <= 1;
            fm_valid <= 0;
            w <= 0;
            t <= 1;
        end           
        
        if (fa_valid_d && (t == 1)) begin
            fa_a <= fa_sum;
            sum_idx <= sum_idx + 1;
            fa_valid <= 0;
            t <= 0;                              
            q <= 1;
            r <= 1;
        end                     
        
    end else begin
        // Add bias
        fa_a <= fa_sum;
        fa_b <= bias[out_idx];
        fa_valid <= 1;
        if (fa_valid_d) begin
            data_out <= fa_sum;
            data_out_buffer[out_idx] <= fa_sum;
            sum_idx <= 0;
            fa_a <= 32'h00000000;
            fa_valid <= 0;
            valid_out_fc <= 1;
            out_idx <= out_idx + 1'b1;
            data_out_num <= data_out_num + 1'b1;
            if(out_idx == 15) begin
                out_idx <=0;
                data_out_num <= 0;
                state <= 2;                  
            end
        end
    end
end
// ---------------------------------------------------------------------------------------------------------2    
if (state==1) begin    
    if (sum_idx_2 < INPUT_NUM) begin     
        if(q_2 == 1) begin
        fm_a_2 <= buffer[sum_idx_2];
        fm_b_2 <= weight[out_idx_2 * INPUT_NUM + sum_idx_2];
        fm_valid_2 <= 1;
        q_2 <= 0;
        w_2 <= 1;
        r_2 <= 0;
        end
        
        if (fm_valid_d_2 && (w_2 == 1)) begin                                       
            fa_b_2 <= fm_z_2;
            fa_valid_2 <= 1;
            fm_valid_2 <= 0;
            w_2 <= 0;
            t_2 <= 1;
        end           
        
        if (fa_valid_d_2 && (t_2 == 1)) begin
            fa_a_2 <= fa_sum_2;
            sum_idx_2 <= sum_idx_2 + 1;
            fa_valid_2 <= 0;
            t_2 <= 0;               
            r_2 <= 1;
            q_2 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_2 <= fa_sum_2;
        fa_b_2 <= bias[out_idx_2];
        fa_valid_2 <= 1;
        if (fa_valid_d_2) begin
            data_out_2 <= fa_sum_2;
            data_out_buffer[out_idx_2] <= fa_sum_2;
            sum_idx_2 <= 0;
            fa_a_2 <= 32'h00000000;
            fa_valid_2 <= 0;
            valid_out_fc_2 <= 1;
            out_idx_2 <= out_idx_2 + 1'b1;
            data_out_num_2 <= data_out_num_2 + 1'b1;
            if(out_idx_2 == 31) begin
                out_idx_2 <=0;
                data_out_num_2 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ---------------------------------------------------------------------------------------------------------- 3  
if (state==1) begin    
    if (sum_idx_3 < INPUT_NUM) begin     
        if(q_3==1) begin
        fm_a_3 <= buffer[sum_idx_3];
        fm_b_3 <= weight[out_idx_3 * INPUT_NUM + sum_idx_3];
        fm_valid_3 <= 1;
        q_3 <= 0;
        w_3 <= 1;
        r_3 <= 0;
        end
        
        if (fm_valid_d_3 && (w_3 == 1)) begin                                       
            fa_b_3 <= fm_z_3;
            fa_valid_3 <= 1;
            fm_valid_3 <= 0;
            w_3 <= 0;
            t_3 <= 1;
        end           
        
        if (fa_valid_d_3 && (t_3 == 1)) begin
            fa_a_3 <= fa_sum_3;
            sum_idx_3 <= sum_idx_3 + 1;
            fa_valid_3 <= 0;
            t_3 <= 0;               
            r_3 <= 1;
            q_3 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_3 <= fa_sum_3;
        fa_b_3 <= bias[out_idx_3];
        fa_valid_3 <= 1;
        if (fa_valid_d_3) begin
            data_out_3 <= fa_sum_3;
            data_out_buffer[out_idx_3] <= fa_sum_3;
            sum_idx_3 <= 0;
            fa_a_3 <= 32'h00000000;
            fa_valid_3 <= 0;
            valid_out_fc_3 <= 1;
            out_idx_3 <= out_idx_3 + 1'b1;
            data_out_num_3 <= data_out_num_3 + 1'b1;
            if(out_idx_3 == 47) begin
                out_idx_3 <=0;
                data_out_num_3 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------4  
if (state==1) begin    
    if (sum_idx_4 < INPUT_NUM) begin     
        if(q_4==1) begin
        fm_a_4 <= buffer[sum_idx_4];
        fm_b_4 <= weight[out_idx_4 * INPUT_NUM + sum_idx_4];
        fm_valid_4 <= 1;
        q_4 <= 0;
        w_4 <= 1;
        r_4 <= 0;
        end
        
        if (fm_valid_d_4 && (w_4 == 1)) begin                                       
            fa_b_4 <= fm_z_4;
            fa_valid_4 <= 1;
            fm_valid_4 <= 0;
            w_4 <= 0;
            t_4 <= 1;
        end           
        
        if (fa_valid_d_4 && (t_4 == 1)) begin
            fa_a_4 <= fa_sum_4;
            sum_idx_4 <= sum_idx_4 + 1;
            fa_valid_4 <= 0;
            t_4 <= 0;               
            r_4 <= 1;
            q_4 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_4 <= fa_sum_4;
        fa_b_4 <= bias[out_idx_4];
        fa_valid_4 <= 1;
        if (fa_valid_d_4) begin
            data_out_4 <= fa_sum_4;
            data_out_buffer[out_idx_4] <= fa_sum_4;
            sum_idx_4 <= 0;
            fa_a_4 <= 32'h00000000;
            fa_valid_4 <= 0;
            valid_out_fc_4 <= 1;
            out_idx_4 <= out_idx_4 + 1'b1;
            data_out_num_4 <= data_out_num_4 + 1'b1;
            if(out_idx_4 == 63) begin
                out_idx_4 <=0;
                data_out_num_4 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------5  
if (state==1) begin    
    if (sum_idx_5 < INPUT_NUM) begin     
        if(q_5==1) begin
        fm_a_5 <= buffer[sum_idx_5];
        fm_b_5 <= weight[out_idx_5 * INPUT_NUM + sum_idx_5];
        fm_valid_5 <= 1;
        q_5 <= 0;
        w_5 <= 1;
        r_5 <= 0;
        end
        
        if (fm_valid_d_5 && (w_5 == 1)) begin                                       
            fa_b_5 <= fm_z_5;
            fa_valid_5 <= 1;
            fm_valid_5 <= 0;
            w_5 <= 0;
            t_5 <= 1;
        end           
        
        if (fa_valid_d_5 && (t_5 == 1)) begin
            fa_a_5 <= fa_sum_5;
            sum_idx_5 <= sum_idx_5 + 1;
            fa_valid_5 <= 0;
            t_5 <= 0;               
            r_5 <= 1;
            q_5 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_5 <= fa_sum_5;
        fa_b_5 <= bias[out_idx_5];
        fa_valid_5 <= 1;
        if (fa_valid_d_5) begin
            data_out_5 <= fa_sum_5;
            data_out_buffer[out_idx_5] <= fa_sum_5;
            sum_idx_5 <= 0;
            fa_a_5 <= 32'h00000000;
            fa_valid_5 <= 0;
            valid_out_fc_5 <= 1;
            out_idx_5 <= out_idx_5 + 1'b1;
            data_out_num_5 <= data_out_num_5 + 1'b1;
            if(out_idx_5 == 79) begin
                out_idx_5 <=0;
                data_out_num_5 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------6  
if (state==1) begin    
    if (sum_idx_6 < INPUT_NUM) begin     
        if(q_6==1) begin
        fm_a_6 <= buffer[sum_idx_6];
        fm_b_6 <= weight[out_idx_6 * INPUT_NUM + sum_idx_6];
        fm_valid_6 <= 1;
        q_6 <= 0;
        w_6 <= 1;
        r_6 <= 0;
        end
        
        if (fm_valid_d_6 && (w_6 == 1)) begin                                       
            fa_b_6 <= fm_z_6;
            fa_valid_6 <= 1;
            fm_valid_6 <= 0;
            w_6 <= 0;
            t_6 <= 1;
        end           
        
        if (fa_valid_d_6 && (t_6 == 1)) begin
            fa_a_6 <= fa_sum_6;
            sum_idx_6 <= sum_idx_6 + 1;
            fa_valid_6 <= 0;
            t_6 <= 0;               
            r_6 <= 1;
            q_6 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_6 <= fa_sum_6;
        fa_b_6 <= bias[out_idx_6];
        fa_valid_6 <= 1;
        if (fa_valid_d_6) begin
            data_out_6 <= fa_sum_6;
            data_out_buffer[out_idx_6] <= fa_sum_6;
            sum_idx_6 <= 0;
            fa_a_6 <= 32'h00000000;
            fa_valid_6 <= 0;
            valid_out_fc_6 <= 1;
            out_idx_6 <= out_idx_6 + 1'b1;
            data_out_num_6 <= data_out_num_6 + 1'b1;
            if(out_idx_6 == 95) begin
                out_idx_6 <=0;
                data_out_num_6 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------7  
if (state==1) begin    
    if (sum_idx_7 < INPUT_NUM) begin     
        if(q_7==1) begin
        fm_a_7 <= buffer[sum_idx_7];
        fm_b_7 <= weight[out_idx_7 * INPUT_NUM + sum_idx_7];
        fm_valid_7 <= 1;
        q_7 <= 0;
        w_7 <= 1;
        r_7 <= 0;
        end
        
        if (fm_valid_d_7 && (w_7 == 1)) begin                                       
            fa_b_7 <= fm_z_7;
            fa_valid_7 <= 1;
            fm_valid_7 <= 0;
            w_7 <= 0;
            t_7 <= 1;
        end           
        
        if (fa_valid_d_7 && (t_7 == 1)) begin
            fa_a_7 <= fa_sum_7;
            sum_idx_7 <= sum_idx_7 + 1;
            fa_valid_7 <= 0;
            t_7 <= 0;               
            r_7 <= 1;
            q_7 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_7 <= fa_sum_7;
        fa_b_7 <= bias[out_idx_7];
        fa_valid_7 <= 1;
        if (fa_valid_d_7) begin
            data_out_7 <= fa_sum_7;
            data_out_buffer[out_idx_7] <= fa_sum_7;
            sum_idx_7 <= 0;
            fa_a_7 <= 32'h00000000;
            fa_valid_7 <= 0;
            valid_out_fc_7 <= 1;
            out_idx_7 <= out_idx_7 + 1'b1;
            data_out_num_7 <= data_out_num_7 + 1'b1;
            if(out_idx_7 == 111) begin
                out_idx_7 <=0;
                data_out_num_7 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------8  
if (state==1) begin    
    if (sum_idx_8 < INPUT_NUM) begin     
        if(q_8==1) begin
        fm_a_8 <= buffer[sum_idx_8];
        fm_b_8 <= weight[out_idx_8 * INPUT_NUM + sum_idx_8];
        fm_valid_8 <= 1;
        q_8 <= 0;
        w_8 <= 1;
        r_8 <= 0;
        end
        
        if (fm_valid_d_8 && (w_8 == 1)) begin                                       
            fa_b_8 <= fm_z_8;
            fa_valid_8 <= 1;
            fm_valid_8 <= 0;
            w_8 <= 0;
            t_8 <= 1;
        end           
        
        if (fa_valid_d_8 && (t_8 == 1)) begin
            fa_a_8 <= fa_sum_8;
            sum_idx_8 <= sum_idx_8 + 1;
            fa_valid_8 <= 0;
            t_8 <= 0;               
            r_8 <= 1;
            q_8 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_8 <= fa_sum_8;
        fa_b_8 <= bias[out_idx_8];
        fa_valid_8 <= 1;
        if (fa_valid_d_8) begin
            data_out_8 <= fa_sum_8;
            data_out_buffer[out_idx_8] <= fa_sum_8;
            sum_idx_8 <= 0;
            fa_a_8 <= 32'h00000000;
            fa_valid_8 <= 0;
            valid_out_fc_8 <= 1;
            out_idx_8 <= out_idx_8 + 1'b1;
            data_out_num_8 <= data_out_num_8 + 1'b1;
            if(out_idx_8 == 127) begin
                out_idx_8 <=0;
                data_out_num_8 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------9  
if (state==1) begin    
    if (sum_idx_9 < INPUT_NUM) begin     
        if(q_9==1) begin
        fm_a_9 <= buffer[sum_idx_9];
        fm_b_9 <= weight[out_idx_9 * INPUT_NUM + sum_idx_9];
        fm_valid_9 <= 1;
        q_9 <= 0;
        w_9 <= 1;
        r_9 <= 0;
        end
        
        if (fm_valid_d_9 && (w_9 == 1)) begin                                       
            fa_b_9 <= fm_z_9;
            fa_valid_9 <= 1;
            fm_valid_9 <= 0;
            w_9 <= 0;
            t_9 <= 1;
        end           
        
        if (fa_valid_d_9 && (t_9 == 1)) begin
            fa_a_9 <= fa_sum_9;
            sum_idx_9 <= sum_idx_9 + 1;
            fa_valid_9 <= 0;
            t_9 <= 0;               
            r_9 <= 1;
            q_9 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_9 <= fa_sum_9;
        fa_b_9 <= bias[out_idx_9];
        fa_valid_9 <= 1;
        if (fa_valid_d_9) begin
            data_out_9 <= fa_sum_9;
            data_out_buffer[out_idx_9] <= fa_sum_9;
            sum_idx_9 <= 0;
            fa_a_9 <= 32'h00000000;
            fa_valid_9 <= 0;
            valid_out_fc_9 <= 1;
            out_idx_9 <= out_idx_9 + 1'b1;
            data_out_num_9 <= data_out_num_9 + 1'b1;
            if(out_idx_9 == 143) begin
                out_idx_9 <=0;
                data_out_num_9 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------10  
if (state==1) begin    
    if (sum_idx_10 < INPUT_NUM) begin     
        if(q_10==1) begin
        fm_a_10 <= buffer[sum_idx_10];
        fm_b_10 <= weight[out_idx_10 * INPUT_NUM + sum_idx_10];
        fm_valid_10 <= 1;
        q_10 <= 0;
        w_10 <= 1;
        r_10 <= 0;
        end
        
        if (fm_valid_d_10 && (w_10 == 1)) begin                                       
            fa_b_10 <= fm_z_10;
            fa_valid_10 <= 1;
            fm_valid_10 <= 0;
            w_10 <= 0;
            t_10 <= 1;
        end           
        
        if (fa_valid_d_10 && (t_10 == 1)) begin
            fa_a_10 <= fa_sum_10;
            sum_idx_10 <= sum_idx_10 + 1;
            fa_valid_10 <= 0;
            t_10 <= 0;               
            r_10 <= 1;
            q_10 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_10 <= fa_sum_10;
        fa_b_10 <= bias[out_idx_10];
        fa_valid_10 <= 1;
        if (fa_valid_d_10) begin
            data_out_10 <= fa_sum_10;
            data_out_buffer[out_idx_10] <= fa_sum_10;
            sum_idx_10 <= 0;
            fa_a_10 <= 32'h00000000;
            fa_valid_10 <= 0;
            valid_out_fc_10 <= 1;
            out_idx_10 <= out_idx_10 + 1'b1;
            data_out_num_10 <= data_out_num_10 + 1'b1;
            if(out_idx_10 == 159) begin
                out_idx_10 <=0;
                data_out_num_10 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------11  
if (state==1) begin    
    if (sum_idx_11 < INPUT_NUM) begin     
        if(q_11==1) begin
        fm_a_11 <= buffer[sum_idx_11];
        fm_b_11 <= weight[out_idx_11 * INPUT_NUM + sum_idx_11];
        fm_valid_11 <= 1;
        q_11 <= 0;
        w_11 <= 1;
        r_11 <= 0;
        end
        
        if (fm_valid_d_11 && (w_11 == 1)) begin                                       
            fa_b_11 <= fm_z_11;
            fa_valid_11 <= 1;
            fm_valid_11 <= 0;
            w_11 <= 0;
            t_11 <= 1;
        end           
        
        if (fa_valid_d_11 && (t_11 == 1)) begin
            fa_a_11 <= fa_sum_11;
            sum_idx_11 <= sum_idx_11 + 1;
            fa_valid_11 <= 0;
            t_11 <= 0;               
            r_11 <= 1;
            q_11 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_11 <= fa_sum_11;
        fa_b_11 <= bias[out_idx_11];
        fa_valid_11 <= 1;
        if (fa_valid_d_11) begin
            data_out_11 <= fa_sum_11;
            data_out_buffer[out_idx_11] <= fa_sum_11;
            sum_idx_11 <= 0;
            fa_a_11 <= 32'h00000000;
            fa_valid_11 <= 0;
            valid_out_fc_11 <= 1;
            out_idx_11 <= out_idx_11 + 1'b1;
            data_out_num_11 <= data_out_num_11 + 1'b1;
            if(out_idx_11 == 175) begin
                out_idx_11 <=0;
                data_out_num_11 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------12  
if (state==1) begin    
    if (sum_idx_12 < INPUT_NUM) begin     
        if(q_12==1) begin
        fm_a_12 <= buffer[sum_idx_12];
        fm_b_12 <= weight[out_idx_12 * INPUT_NUM + sum_idx_12];
        fm_valid_12 <= 1;
        q_12 <= 0;
        w_12 <= 1;
        r_12 <= 0;
        end
        
        if (fm_valid_d_12 && (w_12 == 1)) begin                                       
            fa_b_12 <= fm_z_12;
            fa_valid_12 <= 1;
            fm_valid_12 <= 0;
            w_12 <= 0;
            t_12 <= 1;
        end           
        
        if (fa_valid_d_12 && (t_12 == 1)) begin
            fa_a_12 <= fa_sum_12;
            sum_idx_12 <= sum_idx_12 + 1;
            fa_valid_12 <= 0;
            t_12 <= 0;               
            r_12 <= 1;
            q_12 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_12 <= fa_sum_12;
        fa_b_12 <= bias[out_idx_12];
        fa_valid_12 <= 1;
        if (fa_valid_d_12) begin
            data_out_12 <= fa_sum_12;
            data_out_buffer[out_idx_12] <= fa_sum_12;
            sum_idx_12 <= 0;
            fa_a_12 <= 32'h00000000;
            fa_valid_12 <= 0;
            valid_out_fc_12 <= 1;
            out_idx_12 <= out_idx_12 + 1'b1;
            data_out_num_12 <= data_out_num_12 + 1'b1;
            if(out_idx_12 == 191) begin
                out_idx_12 <=0;
                data_out_num_12 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------13  
if (state==1) begin    
    if (sum_idx_13 < INPUT_NUM) begin     
        if(q_13==1) begin
        fm_a_13 <= buffer[sum_idx_13];
        fm_b_13 <= weight[out_idx_13 * INPUT_NUM + sum_idx_13];
        fm_valid_13 <= 1;
        q_13 <= 0;
        w_13 <= 1;
        r_13 <= 0;
        end
        
        if (fm_valid_d_13 && (w_13 == 1)) begin                                       
            fa_b_13 <= fm_z_13;
            fa_valid_13 <= 1;
            fm_valid_13 <= 0;
            w_13 <= 0;
            t_13 <= 1;
        end           
        
        if (fa_valid_d_13 && (t_13 == 1)) begin
            fa_a_13 <= fa_sum_13;
            sum_idx_13 <= sum_idx_13 + 1;
            fa_valid_13 <= 0;
            t_13 <= 0;               
            r_13 <= 1;
            q_13 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_13 <= fa_sum_13;
        fa_b_13 <= bias[out_idx_13];
        fa_valid_13 <= 1;
        if (fa_valid_d_13) begin
            data_out_13 <= fa_sum_13;
            data_out_buffer[out_idx_13] <= fa_sum_13;
            sum_idx_13 <= 0;
            fa_a_13 <= 32'h00000000;
            fa_valid_13 <= 0;
            valid_out_fc_13 <= 1;
            out_idx_13 <= out_idx_13 + 1'b1;
            data_out_num_13 <= data_out_num_13 + 1'b1;
            if(out_idx_13 == 207) begin
                out_idx_13 <=0;
                data_out_num_13 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------14  
if (state==1) begin    
    if (sum_idx_14 < INPUT_NUM) begin     
        if(q_14==1) begin
        fm_a_14 <= buffer[sum_idx_14];
        fm_b_14 <= weight[out_idx_14 * INPUT_NUM + sum_idx_14];
        fm_valid_14 <= 1;
        q_14 <= 0;
        w_14 <= 1;
        r_14 <= 0;
        end
        
        if (fm_valid_d_14 && (w_14 == 1)) begin                                       
            fa_b_14 <= fm_z_14;
            fa_valid_14 <= 1;
            fm_valid_14 <= 0;
            w_14 <= 0;
            t_14 <= 1;
        end           
        
        if (fa_valid_d_14 && (t_14 == 1)) begin
            fa_a_14 <= fa_sum_14;
            sum_idx_14 <= sum_idx_14 + 1;
            fa_valid_14 <= 0;
            t_14 <= 0;               
            r_14 <= 1;
            q_14 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_14 <= fa_sum_14;
        fa_b_14 <= bias[out_idx_14];
        fa_valid_14 <= 1;
        if (fa_valid_d_14) begin
            data_out_14 <= fa_sum_14;
            data_out_buffer[out_idx_14] <= fa_sum_14;
            sum_idx_14 <= 0;
            fa_a_14 <= 32'h00000000;
            fa_valid_14 <= 0;
            valid_out_fc_14 <= 1;
            out_idx_14 <= out_idx_14 + 1'b1;
            data_out_num_14 <= data_out_num_14 + 1'b1;
            if(out_idx_14 == 223) begin
                out_idx_14 <=0;
                data_out_num_14 <= 0;
                state <= 2;                    
            end
        end
    end
end

// ----------------------------------------------------------------------------------------------------------15  
if (state==1) begin    
    if (sum_idx_15 < INPUT_NUM) begin     
        if(q_15==1) begin
        fm_a_15 <= buffer[sum_idx_15];
        fm_b_15 <= weight[out_idx_15 * INPUT_NUM + sum_idx_15];
        fm_valid_15 <= 1;
        q_15 <= 0;
        w_15 <= 1;
        r_15 <= 0;
        end
        
        if (fm_valid_d_15 && (w_15 == 1)) begin                                       
            fa_b_15 <= fm_z_15;
            fa_valid_15 <= 1;
            fm_valid_15 <= 0;
            w_15 <= 0;
            t_15 <= 1;
        end           
        
        if (fa_valid_d_15 && (t_15 == 1)) begin
            fa_a_15 <= fa_sum_15;
            sum_idx_15 <= sum_idx_15 + 1;
            fa_valid_15 <= 0;
            t_15 <= 0;               
            r_15 <= 1;
            q_15 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_15 <= fa_sum_15;
        fa_b_15 <= bias[out_idx_15];
        fa_valid_15 <= 1;
        if (fa_valid_d_15) begin
            data_out_15 <= fa_sum_15;
            data_out_buffer[out_idx_15] <= fa_sum_15;
            sum_idx_15 <= 0;
            fa_a_15 <= 32'h00000000;
            fa_valid_15 <= 0;
            valid_out_fc_15 <= 1;
            out_idx_15 <= out_idx_15 + 1'b1;
            data_out_num_15 <= data_out_num_15 + 1'b1;
            if(out_idx_15 == 239) begin
                out_idx_15 <=0;
                data_out_num_15 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------16  
if (state==1) begin    
    if (sum_idx_16 < INPUT_NUM) begin     
        if(q_16==1) begin
        fm_a_16 <= buffer[sum_idx_16];
        fm_b_16 <= weight[out_idx_16 * INPUT_NUM + sum_idx_16];
        fm_valid_16 <= 1;
        q_16 <= 0;
        w_16 <= 1;
        r_16 <= 0;
        end
        
        if (fm_valid_d_16 && (w_16 == 1)) begin                                       
            fa_b_16 <= fm_z_16;
            fa_valid_16 <= 1;
            fm_valid_16 <= 0;
            w_16 <= 0;
            t_16 <= 1;
        end           
        
        if (fa_valid_d_16 && (t_16 == 1)) begin
            fa_a_16 <= fa_sum_16;
            sum_idx_16 <= sum_idx_16 + 1;
            fa_valid_16 <= 0;
            t_16 <= 0;               
            r_16 <= 1;
            q_16 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_16 <= fa_sum_16;
        fa_b_16 <= bias[out_idx_16];
        fa_valid_16 <= 1;
        if (fa_valid_d_16) begin
            data_out_16 <= fa_sum_16;
            data_out_buffer[out_idx_16] <= fa_sum_16;
            sum_idx_16 <= 0;
            fa_a_16 <= 32'h00000000;
            fa_valid_16 <= 0;
            valid_out_fc_16 <= 1;
            out_idx_16 <= out_idx_16 + 1'b1;
            data_out_num_16 <= data_out_num_16 + 1'b1;
            if(out_idx_16 == 255) begin
                out_idx_16 <=0;
                data_out_num_16 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------17  
if (state==1) begin    
    if (sum_idx_17 < INPUT_NUM) begin     
        if(q_17==1) begin
        fm_a_17 <= buffer[sum_idx_17];
        fm_b_17 <= weight[out_idx_17 * INPUT_NUM + sum_idx_17];
        fm_valid_17 <= 1;
        q_17 <= 0;
        w_17 <= 1;
        r_17 <= 0;
        end
        
        if (fm_valid_d_17 && (w_17 == 1)) begin                                       
            fa_b_17 <= fm_z_17;
            fa_valid_17 <= 1;
            fm_valid_17 <= 0;
            w_17 <= 0;
            t_17 <= 1;
        end           
        
        if (fa_valid_d_17 && (t_17 == 1)) begin
            fa_a_17 <= fa_sum_17;
            sum_idx_17 <= sum_idx_17 + 1;
            fa_valid_17 <= 0;
            t_17 <= 0;               
            r_17 <= 1;
            q_17 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_17 <= fa_sum_17;
        fa_b_17 <= bias[out_idx_17];
        fa_valid_17 <= 1;
        if (fa_valid_d_17) begin
            data_out_17 <= fa_sum_17;
            data_out_buffer[out_idx_17] <= fa_sum_17;
            sum_idx_17 <= 0;
            fa_a_17 <= 32'h00000000;
            fa_valid_17 <= 0;
            valid_out_fc_17 <= 1;
            out_idx_17 <= out_idx_17 + 1'b1;
            data_out_num_17 <= data_out_num_17 + 1'b1;
            if(out_idx_17 == 271) begin
                out_idx_17 <=0;
                data_out_num_17 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------18  
if (state==1) begin    
    if (sum_idx_18 < INPUT_NUM) begin     
        if(q_18==1) begin
        fm_a_18 <= buffer[sum_idx_18];
        fm_b_18 <= weight[out_idx_18 * INPUT_NUM + sum_idx_18];
        fm_valid_18 <= 1;
        q_18 <= 0;
        w_18 <= 1;
        r_18 <= 0;
        end
        
        if (fm_valid_d_18 && (w_18 == 1)) begin                                       
            fa_b_18 <= fm_z_18;
            fa_valid_18 <= 1;
            fm_valid_18 <= 0;
            w_18 <= 0;
            t_18 <= 1;
        end           
        
        if (fa_valid_d_18 && (t_18 == 1)) begin
            fa_a_18 <= fa_sum_18;
            sum_idx_18 <= sum_idx_18 + 1;
            fa_valid_18 <= 0;
            t_18 <= 0;               
            r_18 <= 1;
            q_18 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_18 <= fa_sum_18;
        fa_b_18 <= bias[out_idx_18];
        fa_valid_18 <= 1;
        if (fa_valid_d_18) begin
            data_out_18 <= fa_sum_18;
            data_out_buffer[out_idx_18] <= fa_sum_18;
            sum_idx_18 <= 0;
            fa_a_18 <= 32'h00000000;
            fa_valid_18 <= 0;
            valid_out_fc_18 <= 1;
            out_idx_18 <= out_idx_18 + 1'b1;
            data_out_num_18 <= data_out_num_18 + 1'b1;
            if(out_idx_18 == 287) begin
                out_idx_18 <=0;
                data_out_num_18 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------19  
if (state==1) begin    
    if (sum_idx_19 < INPUT_NUM) begin     
        if(q_19==1) begin
        fm_a_19 <= buffer[sum_idx_19];
        fm_b_19 <= weight[out_idx_19 * INPUT_NUM + sum_idx_19];
        fm_valid_19 <= 1;
        q_19 <= 0;
        w_19 <= 1;
        r_19 <= 0;
        end
        
        if (fm_valid_d_19 && (w_19 == 1)) begin                                       
            fa_b_19 <= fm_z_19;
            fa_valid_19 <= 1;
            fm_valid_19 <= 0;
            w_19 <= 0;
            t_19 <= 1;
        end           
        
        if (fa_valid_d_19 && (t_19 == 1)) begin
            fa_a_19 <= fa_sum_19;
            sum_idx_19 <= sum_idx_19 + 1;
            fa_valid_19 <= 0;
            t_19 <= 0;               
            r_19 <= 1;
            q_19 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_19 <= fa_sum_19;
        fa_b_19 <= bias[out_idx_19];
        fa_valid_19 <= 1;
        if (fa_valid_d_19) begin
            data_out_19 <= fa_sum_19;
            data_out_buffer[out_idx_19] <= fa_sum_19;
            sum_idx_19 <= 0;
            fa_a_19 <= 32'h00000000;
            fa_valid_19 <= 0;
            valid_out_fc_19 <= 1;
            out_idx_19 <= out_idx_19 + 1'b1;
            data_out_num_19 <= data_out_num_19 + 1'b1;
            if(out_idx_19 == 303) begin
                out_idx_19 <=0;
                data_out_num_19 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------20  
if (state==1) begin    
    if (sum_idx_20 < INPUT_NUM) begin     
        if(q_20==1) begin
        fm_a_20 <= buffer[sum_idx_20];
        fm_b_20 <= weight[out_idx_20 * INPUT_NUM + sum_idx_20];
        fm_valid_20 <= 1;
        q_20 <= 0;
        w_20 <= 1;
        r_20 <= 0;
        end
        
        if (fm_valid_d_20 && (w_20 == 1)) begin                                       
            fa_b_20 <= fm_z_20;
            fa_valid_20 <= 1;
            fm_valid_20 <= 0;
            w_20 <= 0;
            t_20 <= 1;
        end           
        
        if (fa_valid_d_20 && (t_20 == 1)) begin
            fa_a_20 <= fa_sum_20;
            sum_idx_20 <= sum_idx_20 + 1;
            fa_valid_20 <= 0;
            t_20 <= 0;               
            r_20 <= 1;
            q_20 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_20 <= fa_sum_20;
        fa_b_20 <= bias[out_idx_20];
        fa_valid_20 <= 1;
        if (fa_valid_d_20) begin
            data_out_20 <= fa_sum_20;
            data_out_buffer[out_idx_20] <= fa_sum_20;
            sum_idx_20 <= 0;
            fa_a_20 <= 32'h00000000;
            fa_valid_20 <= 0;
            valid_out_fc_20 <= 1;
            out_idx_20 <= out_idx_20 + 1'b1;
            data_out_num_20 <= data_out_num_20 + 1'b1;
            if(out_idx_20 == 319) begin
                out_idx_20 <=0;
                data_out_num_20 <= 0;
                state <= 2;                    
            end
        end
    end
end

// ----------------------------------------------------------------------------------------------------------21  
if (state==1) begin    
    if (sum_idx_21 < INPUT_NUM) begin     
        if(q_21==1) begin
        fm_a_21 <= buffer[sum_idx_21];
        fm_b_21 <= weight[out_idx_21 * INPUT_NUM + sum_idx_21];
        fm_valid_21 <= 1;
        q_21 <= 0;
        w_21 <= 1;
        r_21 <= 0;
        end
        
        if (fm_valid_d_21 && (w_21 == 1)) begin                                       
            fa_b_21 <= fm_z_21;
            fa_valid_21 <= 1;
            fm_valid_21 <= 0;
            w_21 <= 0;
            t_21 <= 1;
        end           
        
        if (fa_valid_d_21 && (t_21 == 1)) begin
            fa_a_21 <= fa_sum_21;
            sum_idx_21 <= sum_idx_21 + 1;
            fa_valid_21 <= 0;
            t_21 <= 0;               
            r_21 <= 1;
            q_21 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_21 <= fa_sum_21;
        fa_b_21 <= bias[out_idx_21];
        fa_valid_21 <= 1;
        if (fa_valid_d_21) begin
            data_out_21 <= fa_sum_21;
            data_out_buffer[out_idx_21] <= fa_sum_21;
            sum_idx_21 <= 0;
            fa_a_21 <= 32'h00000000;
            fa_valid_21 <= 0;
            valid_out_fc_21 <= 1;
            out_idx_21 <= out_idx_21 + 1'b1;
            data_out_num_21 <= data_out_num_21 + 1'b1;
            if(out_idx_21 == 335) begin
                out_idx_21 <=0;
                data_out_num_21 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------22  
if (state==1) begin    
    if (sum_idx_22 < INPUT_NUM) begin     
        if(q_22==1) begin
        fm_a_22 <= buffer[sum_idx_22];
        fm_b_22 <= weight[out_idx_22 * INPUT_NUM + sum_idx_22];
        fm_valid_22 <= 1;
        q_22 <= 0;
        w_22 <= 1;
        r_22 <= 0;
        end
        
        if (fm_valid_d_22 && (w_22 == 1)) begin                                       
            fa_b_22 <= fm_z_22;
            fa_valid_22 <= 1;
            fm_valid_22 <= 0;
            w_22 <= 0;
            t_22 <= 1;
        end           
        
        if (fa_valid_d_22 && (t_22 == 1)) begin
            fa_a_22 <= fa_sum_22;
            sum_idx_22 <= sum_idx_22 + 1;
            fa_valid_22 <= 0;
            t_22 <= 0;               
            r_22 <= 1;
            q_22 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_22 <= fa_sum_22;
        fa_b_22 <= bias[out_idx_22];
        fa_valid_22 <= 1;
        if (fa_valid_d_22) begin
            data_out_22 <= fa_sum_22;
            data_out_buffer[out_idx_22] <= fa_sum_22;
            sum_idx_22 <= 0;
            fa_a_22 <= 32'h00000000;
            fa_valid_22 <= 0;
            valid_out_fc_22 <= 1;
            out_idx_22 <= out_idx_22 + 1'b1;
            data_out_num_22 <= data_out_num_22 + 1'b1;
            if(out_idx_22 == 351) begin
                out_idx_22 <=0;
                data_out_num_22 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------23  
if (state==1) begin    
    if (sum_idx_23 < INPUT_NUM) begin     
        if(q_23==1) begin
        fm_a_23 <= buffer[sum_idx_23];
        fm_b_23 <= weight[out_idx_23 * INPUT_NUM + sum_idx_23];
        fm_valid_23 <= 1;
        q_23 <= 0;
        w_23 <= 1;
        r_23 <= 0;
        end
        
        if (fm_valid_d_23 && (w_23 == 1)) begin                                       
            fa_b_23 <= fm_z_23;
            fa_valid_23 <= 1;
            fm_valid_23 <= 0;
            w_23 <= 0;
            t_23 <= 1;
        end           
        
        if (fa_valid_d_23 && (t_23 == 1)) begin
            fa_a_23 <= fa_sum_23;
            sum_idx_23 <= sum_idx_23 + 1;
            fa_valid_23 <= 0;
            t_23 <= 0;               
            r_23 <= 1;
            q_23 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_23 <= fa_sum_23;
        fa_b_23 <= bias[out_idx_23];
        fa_valid_23 <= 1;
        if (fa_valid_d_23) begin
            data_out_23 <= fa_sum_23;
            data_out_buffer[out_idx_23] <= fa_sum_23;
            sum_idx_23 <= 0;
            fa_a_23 <= 32'h00000000;
            fa_valid_23 <= 0;
            valid_out_fc_23 <= 1;
            out_idx_23 <= out_idx_23 + 1'b1;
            data_out_num_23 <= data_out_num_23 + 1'b1;
            if(out_idx_23 == 367) begin
                out_idx_23 <=0;
                data_out_num_23 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------24  
if (state==1) begin    
    if (sum_idx_24 < INPUT_NUM) begin     
        if(q_24==1) begin
        fm_a_24 <= buffer[sum_idx_24];
        fm_b_24 <= weight[out_idx_24 * INPUT_NUM + sum_idx_24];
        fm_valid_24 <= 1;
        q_24 <= 0;
        w_24 <= 1;
        r_24 <= 0;
        end
        
        if (fm_valid_d_24 && (w_24 == 1)) begin                                       
            fa_b_24 <= fm_z_24;
            fa_valid_24 <= 1;
            fm_valid_24 <= 0;
            w_24 <= 0;
            t_24 <= 1;
        end           
        
        if (fa_valid_d_24 && (t_24 == 1)) begin
            fa_a_24 <= fa_sum_24;
            sum_idx_24 <= sum_idx_24 + 1;
            fa_valid_24 <= 0;
            t_24 <= 0;               
            r_24 <= 1;
            q_24 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_24 <= fa_sum_24;
        fa_b_24 <= bias[out_idx_24];
        fa_valid_24 <= 1;
        if (fa_valid_d_24) begin
            data_out_24 <= fa_sum_24;
            data_out_buffer[out_idx_24] <= fa_sum_24;
            sum_idx_24 <= 0;
            fa_a_24 <= 32'h00000000;
            fa_valid_24 <= 0;
            valid_out_fc_24 <= 1;
            out_idx_24 <= out_idx_24 + 1'b1;
            data_out_num_24 <= data_out_num_24 + 1'b1;
            if(out_idx_24 == 383) begin
                out_idx_24 <=0;
                data_out_num_24 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------25  
if (state==1) begin    
    if (sum_idx_25 < INPUT_NUM) begin     
        if(q_25==1) begin
        fm_a_25 <= buffer[sum_idx_25];
        fm_b_25 <= weight[out_idx_25 * INPUT_NUM + sum_idx_25];
        fm_valid_25 <= 1;
        q_25 <= 0;
        w_25 <= 1;
        r_25 <= 0;
        end
        
        if (fm_valid_d_25 && (w_25 == 1)) begin                                       
            fa_b_25 <= fm_z_25;
            fa_valid_25 <= 1;
            fm_valid_25 <= 0;
            w_25 <= 0;
            t_25 <= 1;
        end           
        
        if (fa_valid_d_25 && (t_25 == 1)) begin
            fa_a_25 <= fa_sum_25;
            sum_idx_25 <= sum_idx_25 + 1;
            fa_valid_25 <= 0;
            t_25 <= 0;               
            r_25 <= 1;
            q_25 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_25 <= fa_sum_25;
        fa_b_25 <= bias[out_idx_25];
        fa_valid_25 <= 1;
        if (fa_valid_d_25) begin
            data_out_25 <= fa_sum_25;
            data_out_buffer[out_idx_25] <= fa_sum_25;
            sum_idx_25 <= 0;
            fa_a_25 <= 32'h00000000;
            fa_valid_25 <= 0;
            valid_out_fc_25 <= 1;
            out_idx_25 <= out_idx_25 + 1'b1;
            data_out_num_25 <= data_out_num_25 + 1'b1;
            if(out_idx_25 == 399) begin
                out_idx_25 <=0;
                data_out_num_25 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------26  
if (state==1) begin    
    if (sum_idx_26 < INPUT_NUM) begin     
        if(q_26==1) begin
        fm_a_26 <= buffer[sum_idx_26];
        fm_b_26 <= weight[out_idx_26 * INPUT_NUM + sum_idx_26];
        fm_valid_26 <= 1;
        q_26 <= 0;
        w_26 <= 1;
        r_26 <= 0;
        end
        
        if (fm_valid_d_26 && (w_26 == 1)) begin                                       
            fa_b_26 <= fm_z_26;
            fa_valid_26 <= 1;
            fm_valid_26 <= 0;
            w_26 <= 0;
            t_26 <= 1;
        end           
        
        if (fa_valid_d_26 && (t_26 == 1)) begin
            fa_a_26 <= fa_sum_26;
            sum_idx_26 <= sum_idx_26 + 1;
            fa_valid_26 <= 0;
            t_26 <= 0;               
            r_26 <= 1;
            q_26 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_26 <= fa_sum_26;
        fa_b_26 <= bias[out_idx_26];
        fa_valid_26 <= 1;
        if (fa_valid_d_26) begin
            data_out_26 <= fa_sum_26;
            data_out_buffer[out_idx_26] <= fa_sum_26;
            sum_idx_26 <= 0;
            fa_a_26 <= 32'h00000000;
            fa_valid_26 <= 0;
            valid_out_fc_26 <= 1;
            out_idx_26 <= out_idx_26 + 1'b1;
            data_out_num_26 <= data_out_num_26 + 1'b1;
            if(out_idx_26 == 415) begin
                out_idx_26 <=0;
                data_out_num_26 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------27  
if (state==1) begin    
    if (sum_idx_27 < INPUT_NUM) begin     
        if(q_27==1) begin
        fm_a_27 <= buffer[sum_idx_27];
        fm_b_27 <= weight[out_idx_27 * INPUT_NUM + sum_idx_27];
        fm_valid_27 <= 1;
        q_27 <= 0;
        w_27 <= 1;
        r_27 <= 0;
        end
        
        if (fm_valid_d_27 && (w_27 == 1)) begin                                       
            fa_b_27 <= fm_z_27;
            fa_valid_27 <= 1;
            fm_valid_27 <= 0;
            w_27 <= 0;
            t_27 <= 1;
        end           
        
        if (fa_valid_d_27 && (t_27 == 1)) begin
            fa_a_27 <= fa_sum_27;
            sum_idx_27 <= sum_idx_27 + 1;
            fa_valid_27 <= 0;
            t_27 <= 0;               
            r_27 <= 1;
            q_27 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_27 <= fa_sum_27;
        fa_b_27 <= bias[out_idx_27];
        fa_valid_27 <= 1;
        if (fa_valid_d_27) begin
            data_out_27 <= fa_sum_27;
            data_out_buffer[out_idx_27] <= fa_sum_27;
            sum_idx_27 <= 0;
            fa_a_27 <= 32'h00000000;
            fa_valid_27 <= 0;
            valid_out_fc_27 <= 1;
            out_idx_27 <= out_idx_27 + 1'b1;
            data_out_num_27 <= data_out_num_27 + 1'b1;
            if(out_idx_27 == 431) begin
                out_idx_27 <=0;
                data_out_num_27 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------28  
if (state==1) begin    
    if (sum_idx_28 < INPUT_NUM) begin     
        if(q_28==1) begin
        fm_a_28 <= buffer[sum_idx_28];
        fm_b_28 <= weight[out_idx_28 * INPUT_NUM + sum_idx_28];
        fm_valid_28 <= 1;
        q_28 <= 0;
        w_28 <= 1;
        r_28 <= 0;
        end
        
        if (fm_valid_d_28 && (w_28 == 1)) begin                                       
            fa_b_28 <= fm_z_28;
            fa_valid_28 <= 1;
            fm_valid_28 <= 0;
            w_28 <= 0;
            t_28 <= 1;
        end           
        
        if (fa_valid_d_28 && (t_28 == 1)) begin
            fa_a_28 <= fa_sum_28;
            sum_idx_28 <= sum_idx_28 + 1;
            fa_valid_28 <= 0;
            t_28 <= 0;               
            r_28 <= 1;
            q_28 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_28 <= fa_sum_28;
        fa_b_28 <= bias[out_idx_28];
        fa_valid_28 <= 1;
        if (fa_valid_d_28) begin
            data_out_28 <= fa_sum_28;
            data_out_buffer[out_idx_28] <= fa_sum_28;
            sum_idx_28 <= 0;
            fa_a_28 <= 32'h00000000;
            fa_valid_28 <= 0;
            valid_out_fc_28 <= 1;
            out_idx_28 <= out_idx_28 + 1'b1;
            data_out_num_28 <= data_out_num_28 + 1'b1;
            if(out_idx_28 == 447) begin
                out_idx_28 <=0;
                data_out_num_28 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------29  
if (state==1) begin    
    if (sum_idx_29 < INPUT_NUM) begin     
        if(q_29==1) begin
        fm_a_29 <= buffer[sum_idx_29];
        fm_b_29 <= weight[out_idx_29 * INPUT_NUM + sum_idx_29];
        fm_valid_29 <= 1;
        q_29 <= 0;
        w_29 <= 1;
        r_29 <= 0;
        end
        
        if (fm_valid_d_29 && (w_29 == 1)) begin                                       
            fa_b_29 <= fm_z_29;
            fa_valid_29 <= 1;
            fm_valid_29 <= 0;
            w_29 <= 0;
            t_29 <= 1;
        end           
        
        if (fa_valid_d_29 && (t_29 == 1)) begin
            fa_a_29 <= fa_sum_29;
            sum_idx_29 <= sum_idx_29 + 1;
            fa_valid_29 <= 0;
            t_29 <= 0;               
            r_29 <= 1;
            q_29 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_29 <= fa_sum_29;
        fa_b_29 <= bias[out_idx_29];
        fa_valid_29 <= 1;
        if (fa_valid_d_29) begin
            data_out_29 <= fa_sum_29;
            data_out_buffer[out_idx_29] <= fa_sum_29;
            sum_idx_29 <= 0;
            fa_a_29 <= 32'h00000000;
            fa_valid_29 <= 0;
            valid_out_fc_29 <= 1;
            out_idx_29 <= out_idx_29 + 1'b1;
            data_out_num_29 <= data_out_num_29 + 1'b1;
            if(out_idx_29 == 463) begin
                out_idx_29 <=0;
                data_out_num_29 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------30  
if (state==1) begin    
    if (sum_idx_30 < INPUT_NUM) begin     
        if(q_30==1) begin
        fm_a_30 <= buffer[sum_idx_30];
        fm_b_30 <= weight[out_idx_30 * INPUT_NUM + sum_idx_30];
        fm_valid_30 <= 1;
        q_30 <= 0;
        w_30 <= 1;
        r_30 <= 0;
        end
        
        if (fm_valid_d_30 && (w_30 == 1)) begin                                       
            fa_b_30 <= fm_z_30;
            fa_valid_30 <= 1;
            fm_valid_30 <= 0;
            w_30 <= 0;
            t_30 <= 1;
        end           
        
        if (fa_valid_d_30 && (t_30 == 1)) begin
            fa_a_30 <= fa_sum_30;
            sum_idx_30 <= sum_idx_30 + 1;
            fa_valid_30 <= 0;
            t_30 <= 0;               
            r_30 <= 1;
            q_30 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_30 <= fa_sum_30;
        fa_b_30 <= bias[out_idx_30];
        fa_valid_30 <= 1;
        if (fa_valid_d_30) begin
            data_out_30 <= fa_sum_30;
            data_out_buffer[out_idx_30] <= fa_sum_30;
            sum_idx_30 <= 0;
            fa_a_30 <= 32'h00000000;
            fa_valid_30 <= 0;
            valid_out_fc_30 <= 1;
            out_idx_30 <= out_idx_30 + 1'b1;
            data_out_num_30 <= data_out_num_30 + 1'b1;
            if(out_idx_30 == 479) begin
                out_idx_30 <=0;
                data_out_num_30 <= 0;
                state <= 2;                    
            end
        end
    end
end
// ----------------------------------------------------------------------------------------------------------31  
if (state==1) begin    
    if (sum_idx_31 < INPUT_NUM) begin     
        if(q_31==1) begin
        fm_a_31 <= buffer[sum_idx_31];
        fm_b_31 <= weight[out_idx_31 * INPUT_NUM + sum_idx_31];
        fm_valid_31 <= 1;
        q_31 <= 0;
        w_31 <= 1;
        r_31 <= 0;
        end
        
        if (fm_valid_d_31 && (w_31 == 1)) begin                                       
            fa_b_31 <= fm_z_31;
            fa_valid_31 <= 1;
            fm_valid_31 <= 0;
            w_31 <= 0;
            t_31 <= 1;
        end           
        
        if (fa_valid_d_31 && (t_31 == 1)) begin
            fa_a_31 <= fa_sum_31;
            sum_idx_31 <= sum_idx_31 + 1;
            fa_valid_31 <= 0;
            t_31 <= 0;               
            r_31 <= 1;
            q_31 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_31 <= fa_sum_31;
        fa_b_31 <= bias[out_idx_31];
        fa_valid_31 <= 1;
        if (fa_valid_d_31) begin
            data_out_31 <= fa_sum_31;
            data_out_buffer[out_idx_31] <= fa_sum_31;
            sum_idx_31 <= 0;
            fa_a_31 <= 32'h00000000;
            fa_valid_31 <= 0;
            valid_out_fc_31 <= 1;
            out_idx_31 <= out_idx_31 + 1'b1;
            data_out_num_31 <= data_out_num_31 + 1'b1;
            if(out_idx_31 == 495) begin
                out_idx_31 <=0;
                data_out_num_31 <= 0;
                state <= 2;                    
            end
        end
    end
end

// ----------------------------------------------------------------------------------------------------------32  
if (state==1) begin    
    if (sum_idx_32 < INPUT_NUM) begin     
        if(q_32==1) begin
        fm_a_32 <= buffer[sum_idx_32];
        fm_b_32 <= weight[out_idx_32 * INPUT_NUM + sum_idx_32];
        fm_valid_32 <= 1;
        q_32 <= 0;
        w_32 <= 1;
        r_32 <= 0;
        end
        
        if (fm_valid_d_32 && (w_32 == 1)) begin                                       
            fa_b_32 <= fm_z_32;
            fa_valid_32 <= 1;
            fm_valid_32 <= 0;
            w_32 <= 0;
            t_32 <= 1;
        end           
        
        if (fa_valid_d_32 && (t_32 == 1)) begin
            fa_a_32 <= fa_sum_32;
            sum_idx_32 <= sum_idx_32 + 1;
            fa_valid_32 <= 0;
            t_32 <= 0;               
            r_32 <= 1;
            q_32 <= 1;
        end                    
        
    end else begin
        // Add bias
        fa_a_32 <= fa_sum_32;
        fa_b_32 <= bias[out_idx_32];
        fa_valid_32 <= 1;
        if (fa_valid_d_32) begin
            data_out_32 <= fa_sum_32;
            data_out_buffer[out_idx_32] <= fa_sum_32;
            sum_idx_32 <= 0;
            fa_a_32 <= 32'h00000000;
            fa_valid_32 <= 0;
            valid_out_fc_32 <= 1;
            out_idx_32 <= out_idx_32 + 1'b1;
            data_out_num_32 <= data_out_num_32 + 1'b1;
            if(out_idx_32 == 511) begin
                out_idx_32 <=0;
                data_out_num_32 <= 0;
                state <= 2;                    
            end
        end
    end
end
//-------------------------------------------------------데이터 출력---------------------------------------------------------------------------------------------------------------------------------------------
    if(state == 2) begin
        data_out_final <= data_out_buffer[i];
        i <= i+1;
        valid_out_fc1 <= 1;
    end
    if(i == 511) begin
        state <= 0;
        i <= 0;
        delay <= 1;
    end
    if(delay) begin
        delay <= 0;
        valid_out_fc1 <= 0;
    end
end
end

endmodule