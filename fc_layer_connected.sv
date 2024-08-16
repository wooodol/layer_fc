`timescale 1ns / 1ps

module fc_layer_connected#(parameter DATA_BITS = 32)(
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
   output [31:0] data_out_fc2,
   output valid_out_fc2,
   output valid_out_comp,
   output detect,
   output warning
   );
   
   wire [31:0] data_out_fc1;
   wire valid_out_fc1;
   
   wire [31:0] data_out_relu;
   wire valid_out_relu;
   
wire [31:0] data_out_relubuf_1;
wire [31:0] data_out_relubuf_2;
wire [31:0] data_out_relubuf_3;
wire [31:0] data_out_relubuf_4;
wire [31:0] data_out_relubuf_5;
wire [31:0] data_out_relubuf_6;
wire [31:0] data_out_relubuf_7;
wire [31:0] data_out_relubuf_8;
wire [31:0] data_out_relubuf_9;
wire [31:0] data_out_relubuf_10;
wire [31:0] data_out_relubuf_11;
wire [31:0] data_out_relubuf_12;
wire [31:0] data_out_relubuf_13;
wire [31:0] data_out_relubuf_14;
wire [31:0] data_out_relubuf_15;
wire [31:0] data_out_relubuf_16;
wire [31:0] data_out_relubuf_17;
wire [31:0] data_out_relubuf_18;
wire [31:0] data_out_relubuf_19;
wire [31:0] data_out_relubuf_20;
wire [31:0] data_out_relubuf_21;
wire [31:0] data_out_relubuf_22;
wire [31:0] data_out_relubuf_23;
wire [31:0] data_out_relubuf_24;
wire [31:0] data_out_relubuf_25;
wire [31:0] data_out_relubuf_26;
wire [31:0] data_out_relubuf_27;
wire [31:0] data_out_relubuf_28;
wire [31:0] data_out_relubuf_29;
wire [31:0] data_out_relubuf_30;
wire [31:0] data_out_relubuf_31;
wire [31:0] data_out_relubuf_32;
wire [31:0] data_out_relubuf_33;
wire [31:0] data_out_relubuf_34;
wire [31:0] data_out_relubuf_35;
wire [31:0] data_out_relubuf_36;
wire [31:0] data_out_relubuf_37;
wire [31:0] data_out_relubuf_38;
wire [31:0] data_out_relubuf_39;
wire [31:0] data_out_relubuf_40;
wire [31:0] data_out_relubuf_41;
wire [31:0] data_out_relubuf_42;
wire [31:0] data_out_relubuf_43;
wire [31:0] data_out_relubuf_44;
wire [31:0] data_out_relubuf_45;
wire [31:0] data_out_relubuf_46;
wire [31:0] data_out_relubuf_47;
wire [31:0] data_out_relubuf_48;
wire [31:0] data_out_relubuf_49;
wire [31:0] data_out_relubuf_50;
wire [31:0] data_out_relubuf_51;
wire [31:0] data_out_relubuf_52;
wire [31:0] data_out_relubuf_53;
wire [31:0] data_out_relubuf_54;
wire [31:0] data_out_relubuf_55;
wire [31:0] data_out_relubuf_56;
wire [31:0] data_out_relubuf_57;
wire [31:0] data_out_relubuf_58;
wire [31:0] data_out_relubuf_59;
wire [31:0] data_out_relubuf_60;
wire [31:0] data_out_relubuf_61;
wire [31:0] data_out_relubuf_62;
wire [31:0] data_out_relubuf_63;
wire [31:0] data_out_relubuf_64;
wire [31:0] data_out_relubuf_65;
wire [31:0] data_out_relubuf_66;
wire [31:0] data_out_relubuf_67;
wire [31:0] data_out_relubuf_68;
wire [31:0] data_out_relubuf_69;
wire [31:0] data_out_relubuf_70;
wire [31:0] data_out_relubuf_71;
wire [31:0] data_out_relubuf_72;
wire [31:0] data_out_relubuf_73;
wire [31:0] data_out_relubuf_74;
wire [31:0] data_out_relubuf_75;
wire [31:0] data_out_relubuf_76;
wire [31:0] data_out_relubuf_77;
wire [31:0] data_out_relubuf_78;
wire [31:0] data_out_relubuf_79;
wire [31:0] data_out_relubuf_80;
wire [31:0] data_out_relubuf_81;
wire [31:0] data_out_relubuf_82;
wire [31:0] data_out_relubuf_83;
wire [31:0] data_out_relubuf_84;
wire [31:0] data_out_relubuf_85;
wire [31:0] data_out_relubuf_86;
wire [31:0] data_out_relubuf_87;
wire [31:0] data_out_relubuf_88;
wire [31:0] data_out_relubuf_89;
wire [31:0] data_out_relubuf_90;
wire [31:0] data_out_relubuf_91;
wire [31:0] data_out_relubuf_92;
wire [31:0] data_out_relubuf_93;
wire [31:0] data_out_relubuf_94;
wire [31:0] data_out_relubuf_95;
wire [31:0] data_out_relubuf_96;
wire [31:0] data_out_relubuf_97;
wire [31:0] data_out_relubuf_98;
wire [31:0] data_out_relubuf_99;
wire [31:0] data_out_relubuf_100;
wire [31:0] data_out_relubuf_101;
wire [31:0] data_out_relubuf_102;
wire [31:0] data_out_relubuf_103;
wire [31:0] data_out_relubuf_104;
wire [31:0] data_out_relubuf_105;
wire [31:0] data_out_relubuf_106;
wire [31:0] data_out_relubuf_107;
wire [31:0] data_out_relubuf_108;
wire [31:0] data_out_relubuf_109;
wire [31:0] data_out_relubuf_110;
wire [31:0] data_out_relubuf_111;
wire [31:0] data_out_relubuf_112;
wire [31:0] data_out_relubuf_113;
wire [31:0] data_out_relubuf_114;
wire [31:0] data_out_relubuf_115;
wire [31:0] data_out_relubuf_116;
wire [31:0] data_out_relubuf_117;
wire [31:0] data_out_relubuf_118;
wire [31:0] data_out_relubuf_119;
wire [31:0] data_out_relubuf_120;
wire [31:0] data_out_relubuf_121;
wire [31:0] data_out_relubuf_122;
wire [31:0] data_out_relubuf_123;
wire [31:0] data_out_relubuf_124;
wire [31:0] data_out_relubuf_125;
wire [31:0] data_out_relubuf_126;
wire [31:0] data_out_relubuf_127;
wire [31:0] data_out_relubuf_128;

   
   fully_connected #(
   .INPUT_NUM(1536),
   .OUTPUT_NUM(512),
   .DATA_BITS(32)
   )fully_connected(
   .data_in_1(data_in_1), .data_in_2(data_in_2), .data_in_3(data_in_3), .data_in_4(data_in_4),
    .data_in_5(data_in_5), .data_in_6(data_in_6), .data_in_7(data_in_7), .data_in_8(data_in_8),
    .data_in_9(data_in_9), .data_in_10(data_in_10), .data_in_11(data_in_11), .data_in_12(data_in_12),
    .data_in_13(data_in_13), .data_in_14(data_in_14), .data_in_15(data_in_15), .data_in_16(data_in_16),
    .data_in_17(data_in_17), .data_in_18(data_in_18), .data_in_19(data_in_19), .data_in_20(data_in_20),
    .data_in_21(data_in_21), .data_in_22(data_in_22), .data_in_23(data_in_23), .data_in_24(data_in_24),
    .data_in_25(data_in_25), .data_in_26(data_in_26), .data_in_27(data_in_27), .data_in_28(data_in_28),
    .data_in_29(data_in_29), .data_in_30(data_in_30), .data_in_31(data_in_31), .data_in_32(data_in_32),
    .data_in_33(data_in_33), .data_in_34(data_in_34), .data_in_35(data_in_35), .data_in_36(data_in_36),
    .data_in_37(data_in_37), .data_in_38(data_in_38), .data_in_39(data_in_39), .data_in_40(data_in_40),
    .data_in_41(data_in_41), .data_in_42(data_in_42), .data_in_43(data_in_43), .data_in_44(data_in_44),
    .data_in_45(data_in_45), .data_in_46(data_in_46), .data_in_47(data_in_47), .data_in_48(data_in_48),
    .data_in_49(data_in_49), .data_in_50(data_in_50), .data_in_51(data_in_51), .data_in_52(data_in_52),
    .data_in_53(data_in_53), .data_in_54(data_in_54), .data_in_55(data_in_55), .data_in_56(data_in_56),
    .data_in_57(data_in_57), .data_in_58(data_in_58), .data_in_59(data_in_59), .data_in_60(data_in_60),
    .data_in_61(data_in_61), .data_in_62(data_in_62), .data_in_63(data_in_63), .data_in_64(data_in_64),
    .data_in_65(data_in_65), .data_in_66(data_in_66), .data_in_67(data_in_67), .data_in_68(data_in_68),
    .data_in_69(data_in_69), .data_in_70(data_in_70), .data_in_71(data_in_71), .data_in_72(data_in_72),
    .data_in_73(data_in_73), .data_in_74(data_in_74), .data_in_75(data_in_75), .data_in_76(data_in_76),
    .data_in_77(data_in_77), .data_in_78(data_in_78), .data_in_79(data_in_79), .data_in_80(data_in_80),
    .data_in_81(data_in_81), .data_in_82(data_in_82), .data_in_83(data_in_83), .data_in_84(data_in_84),
    .data_in_85(data_in_85), .data_in_86(data_in_86), .data_in_87(data_in_87), .data_in_88(data_in_88),
    .data_in_89(data_in_89), .data_in_90(data_in_90), .data_in_91(data_in_91), .data_in_92(data_in_92),
    .data_in_93(data_in_93), .data_in_94(data_in_94), .data_in_95(data_in_95), .data_in_96(data_in_96),
    .data_in_97(data_in_97), .data_in_98(data_in_98), .data_in_99(data_in_99), .data_in_100(data_in_100),
    .data_in_101(data_in_101), .data_in_102(data_in_102), .data_in_103(data_in_103), .data_in_104(data_in_104),
    .data_in_105(data_in_105), .data_in_106(data_in_106), .data_in_107(data_in_107), .data_in_108(data_in_108),
    .data_in_109(data_in_109), .data_in_110(data_in_110), .data_in_111(data_in_111), .data_in_112(data_in_112),
    .data_in_113(data_in_113), .data_in_114(data_in_114), .data_in_115(data_in_115), .data_in_116(data_in_116),
    .data_in_117(data_in_117), .data_in_118(data_in_118), .data_in_119(data_in_119), .data_in_120(data_in_120),
    .data_in_121(data_in_121), .data_in_122(data_in_122), .data_in_123(data_in_123), .data_in_124(data_in_124),
    .data_in_125(data_in_125), .data_in_126(data_in_126), .data_in_127(data_in_127), .data_in_128(data_in_128),
    .valid_in(valid_in),
    .clk(clk),
    .data_out_final(data_out_fc1),
    .valid_out_fc1(valid_out_fc1),
    .rst_n(rst_n)
    );
    
    relu_fc relu_fc(
    .valid_in(valid_out_fc1),
    .clk(clk),
    .data_out(data_out_relu),
    .valid_out(valid_out_relu),
    .rst_n(rst_n),
    .data_in(data_out_fc1)
    );
    
    relu_fc_buf relu_fc_buf(
    .valid_in(valid_out_relu),
    .clk(clk),
.data_out_1(data_out_relubuf_1),
.data_out_2(data_out_relubuf_2),
.data_out_3(data_out_relubuf_3),
.data_out_4(data_out_relubuf_4),
.data_out_5(data_out_relubuf_5),
.data_out_6(data_out_relubuf_6),
.data_out_7(data_out_relubuf_7),
.data_out_8(data_out_relubuf_8),
.data_out_9(data_out_relubuf_9),
.data_out_10(data_out_relubuf_10),
.data_out_11(data_out_relubuf_11),
.data_out_12(data_out_relubuf_12),
.data_out_13(data_out_relubuf_13),
.data_out_14(data_out_relubuf_14),
.data_out_15(data_out_relubuf_15),
.data_out_16(data_out_relubuf_16),
.data_out_17(data_out_relubuf_17),
.data_out_18(data_out_relubuf_18),
.data_out_19(data_out_relubuf_19),
.data_out_20(data_out_relubuf_20),
.data_out_21(data_out_relubuf_21),
.data_out_22(data_out_relubuf_22),
.data_out_23(data_out_relubuf_23),
.data_out_24(data_out_relubuf_24),
.data_out_25(data_out_relubuf_25),
.data_out_26(data_out_relubuf_26),
.data_out_27(data_out_relubuf_27),
.data_out_28(data_out_relubuf_28),
.data_out_29(data_out_relubuf_29),
.data_out_30(data_out_relubuf_30),
.data_out_31(data_out_relubuf_31),
.data_out_32(data_out_relubuf_32),
.data_out_33(data_out_relubuf_33),
.data_out_34(data_out_relubuf_34),
.data_out_35(data_out_relubuf_35),
.data_out_36(data_out_relubuf_36),
.data_out_37(data_out_relubuf_37),
.data_out_38(data_out_relubuf_38),
.data_out_39(data_out_relubuf_39),
.data_out_40(data_out_relubuf_40),
.data_out_41(data_out_relubuf_41),
.data_out_42(data_out_relubuf_42),
.data_out_43(data_out_relubuf_43),
.data_out_44(data_out_relubuf_44),
.data_out_45(data_out_relubuf_45),
.data_out_46(data_out_relubuf_46),
.data_out_47(data_out_relubuf_47),
.data_out_48(data_out_relubuf_48),
.data_out_49(data_out_relubuf_49),
.data_out_50(data_out_relubuf_50),
.data_out_51(data_out_relubuf_51),
.data_out_52(data_out_relubuf_52),
.data_out_53(data_out_relubuf_53),
.data_out_54(data_out_relubuf_54),
.data_out_55(data_out_relubuf_55),
.data_out_56(data_out_relubuf_56),
.data_out_57(data_out_relubuf_57),
.data_out_58(data_out_relubuf_58),
.data_out_59(data_out_relubuf_59),
.data_out_60(data_out_relubuf_60),
.data_out_61(data_out_relubuf_61),
.data_out_62(data_out_relubuf_62),
.data_out_63(data_out_relubuf_63),
.data_out_64(data_out_relubuf_64),
.data_out_65(data_out_relubuf_65),
.data_out_66(data_out_relubuf_66),
.data_out_67(data_out_relubuf_67),
.data_out_68(data_out_relubuf_68),
.data_out_69(data_out_relubuf_69),
.data_out_70(data_out_relubuf_70),
.data_out_71(data_out_relubuf_71),
.data_out_72(data_out_relubuf_72),
.data_out_73(data_out_relubuf_73),
.data_out_74(data_out_relubuf_74),
.data_out_75(data_out_relubuf_75),
.data_out_76(data_out_relubuf_76),
.data_out_77(data_out_relubuf_77),
.data_out_78(data_out_relubuf_78),
.data_out_79(data_out_relubuf_79),
.data_out_80(data_out_relubuf_80),
.data_out_81(data_out_relubuf_81),
.data_out_82(data_out_relubuf_82),
.data_out_83(data_out_relubuf_83),
.data_out_84(data_out_relubuf_84),
.data_out_85(data_out_relubuf_85),
.data_out_86(data_out_relubuf_86),
.data_out_87(data_out_relubuf_87),
.data_out_88(data_out_relubuf_88),
.data_out_89(data_out_relubuf_89),
.data_out_90(data_out_relubuf_90),
.data_out_91(data_out_relubuf_91),
.data_out_92(data_out_relubuf_92),
.data_out_93(data_out_relubuf_93),
.data_out_94(data_out_relubuf_94),
.data_out_95(data_out_relubuf_95),
.data_out_96(data_out_relubuf_96),
.data_out_97(data_out_relubuf_97),
.data_out_98(data_out_relubuf_98),
.data_out_99(data_out_relubuf_99),
.data_out_100(data_out_relubuf_100),
.data_out_101(data_out_relubuf_101),
.data_out_102(data_out_relubuf_102),
.data_out_103(data_out_relubuf_103),
.data_out_104(data_out_relubuf_104),
.data_out_105(data_out_relubuf_105),
.data_out_106(data_out_relubuf_106),
.data_out_107(data_out_relubuf_107),
.data_out_108(data_out_relubuf_108),
.data_out_109(data_out_relubuf_109),
.data_out_110(data_out_relubuf_110),
.data_out_111(data_out_relubuf_111),
.data_out_112(data_out_relubuf_112),
.data_out_113(data_out_relubuf_113),
.data_out_114(data_out_relubuf_114),
.data_out_115(data_out_relubuf_115),
.data_out_116(data_out_relubuf_116),
.data_out_117(data_out_relubuf_117),
.data_out_118(data_out_relubuf_118),
.data_out_119(data_out_relubuf_119),
.data_out_120(data_out_relubuf_120),
.data_out_121(data_out_relubuf_121),
.data_out_122(data_out_relubuf_122),
.data_out_123(data_out_relubuf_123),
.data_out_124(data_out_relubuf_124),
.data_out_125(data_out_relubuf_125),
.data_out_126(data_out_relubuf_126),
.data_out_127(data_out_relubuf_127),
.data_out_128(data_out_relubuf_128),
    .valid_out(valid_out_relubuf),
    .rst_n(rst_n),
    .data_in(data_out_relu)
    );
    
 fully_connected2 #(
   .INPUT_NUM(512),
   .OUTPUT_NUM(1),
   .DATA_BITS(32)
   )fully_connected2(
   .data_in_1(data_out_relubuf_1),
.data_in_2(data_out_relubuf_2),
.data_in_3(data_out_relubuf_3),
.data_in_4(data_out_relubuf_4),
.data_in_5(data_out_relubuf_5),
.data_in_6(data_out_relubuf_6),
.data_in_7(data_out_relubuf_7),
.data_in_8(data_out_relubuf_8),
.data_in_9(data_out_relubuf_9),
.data_in_10(data_out_relubuf_10),
.data_in_11(data_out_relubuf_11),
.data_in_12(data_out_relubuf_12),
.data_in_13(data_out_relubuf_13),
.data_in_14(data_out_relubuf_14),
.data_in_15(data_out_relubuf_15),
.data_in_16(data_out_relubuf_16),
.data_in_17(data_out_relubuf_17),
.data_in_18(data_out_relubuf_18),
.data_in_19(data_out_relubuf_19),
.data_in_20(data_out_relubuf_20),
.data_in_21(data_out_relubuf_21),
.data_in_22(data_out_relubuf_22),
.data_in_23(data_out_relubuf_23),
.data_in_24(data_out_relubuf_24),
.data_in_25(data_out_relubuf_25),
.data_in_26(data_out_relubuf_26),
.data_in_27(data_out_relubuf_27),
.data_in_28(data_out_relubuf_28),
.data_in_29(data_out_relubuf_29),
.data_in_30(data_out_relubuf_30),
.data_in_31(data_out_relubuf_31),
.data_in_32(data_out_relubuf_32),
.data_in_33(data_out_relubuf_33),
.data_in_34(data_out_relubuf_34),
.data_in_35(data_out_relubuf_35),
.data_in_36(data_out_relubuf_36),
.data_in_37(data_out_relubuf_37),
.data_in_38(data_out_relubuf_38),
.data_in_39(data_out_relubuf_39),
.data_in_40(data_out_relubuf_40),
.data_in_41(data_out_relubuf_41),
.data_in_42(data_out_relubuf_42),
.data_in_43(data_out_relubuf_43),
.data_in_44(data_out_relubuf_44),
.data_in_45(data_out_relubuf_45),
.data_in_46(data_out_relubuf_46),
.data_in_47(data_out_relubuf_47),
.data_in_48(data_out_relubuf_48),
.data_in_49(data_out_relubuf_49),
.data_in_50(data_out_relubuf_50),
.data_in_51(data_out_relubuf_51),
.data_in_52(data_out_relubuf_52),
.data_in_53(data_out_relubuf_53),
.data_in_54(data_out_relubuf_54),
.data_in_55(data_out_relubuf_55),
.data_in_56(data_out_relubuf_56),
.data_in_57(data_out_relubuf_57),
.data_in_58(data_out_relubuf_58),
.data_in_59(data_out_relubuf_59),
.data_in_60(data_out_relubuf_60),
.data_in_61(data_out_relubuf_61),
.data_in_62(data_out_relubuf_62),
.data_in_63(data_out_relubuf_63),
.data_in_64(data_out_relubuf_64),
.data_in_65(data_out_relubuf_65),
.data_in_66(data_out_relubuf_66),
.data_in_67(data_out_relubuf_67),
.data_in_68(data_out_relubuf_68),
.data_in_69(data_out_relubuf_69),
.data_in_70(data_out_relubuf_70),
.data_in_71(data_out_relubuf_71),
.data_in_72(data_out_relubuf_72),
.data_in_73(data_out_relubuf_73),
.data_in_74(data_out_relubuf_74),
.data_in_75(data_out_relubuf_75),
.data_in_76(data_out_relubuf_76),
.data_in_77(data_out_relubuf_77),
.data_in_78(data_out_relubuf_78),
.data_in_79(data_out_relubuf_79),
.data_in_80(data_out_relubuf_80),
.data_in_81(data_out_relubuf_81),
.data_in_82(data_out_relubuf_82),
.data_in_83(data_out_relubuf_83),
.data_in_84(data_out_relubuf_84),
.data_in_85(data_out_relubuf_85),
.data_in_86(data_out_relubuf_86),
.data_in_87(data_out_relubuf_87),
.data_in_88(data_out_relubuf_88),
.data_in_89(data_out_relubuf_89),
.data_in_90(data_out_relubuf_90),
.data_in_91(data_out_relubuf_91),
.data_in_92(data_out_relubuf_92),
.data_in_93(data_out_relubuf_93),
.data_in_94(data_out_relubuf_94),
.data_in_95(data_out_relubuf_95),
.data_in_96(data_out_relubuf_96),
.data_in_97(data_out_relubuf_97),
.data_in_98(data_out_relubuf_98),
.data_in_99(data_out_relubuf_99),
.data_in_100(data_out_relubuf_100),
.data_in_101(data_out_relubuf_101),
.data_in_102(data_out_relubuf_102),
.data_in_103(data_out_relubuf_103),
.data_in_104(data_out_relubuf_104),
.data_in_105(data_out_relubuf_105),
.data_in_106(data_out_relubuf_106),
.data_in_107(data_out_relubuf_107),
.data_in_108(data_out_relubuf_108),
.data_in_109(data_out_relubuf_109),
.data_in_110(data_out_relubuf_110),
.data_in_111(data_out_relubuf_111),
.data_in_112(data_out_relubuf_112),
.data_in_113(data_out_relubuf_113),
.data_in_114(data_out_relubuf_114),
.data_in_115(data_out_relubuf_115),
.data_in_116(data_out_relubuf_116),
.data_in_117(data_out_relubuf_117),
.data_in_118(data_out_relubuf_118),
.data_in_119(data_out_relubuf_119),
.data_in_120(data_out_relubuf_120),
.data_in_121(data_out_relubuf_121),
.data_in_122(data_out_relubuf_122),
.data_in_123(data_out_relubuf_123),
.data_in_124(data_out_relubuf_124),
.data_in_125(data_out_relubuf_125),
.data_in_126(data_out_relubuf_126),
.data_in_127(data_out_relubuf_127),
.data_in_128(data_out_relubuf_128),

   .valid_in(valid_out_relubuf),
    .clk(clk),
    .data_out_final(data_out_fc2),
    .valid_out_fc2(valid_out_fc2),
    .rst_n(rst_n)
    );

final_comp final_comp(
.clk(clk),
.valid_in(valid_out_fc2),
.valid_out(valid_out_comp),
.detect(detect),
.data_in(data_out_fc2),
.rst_n(rst_n)
);    

stack_warning #(
.SLEEPTIME(100)
)stack_warning(
.clk(clk),
.rst_n(rst_n),
.valid_in(valid_out_comp),
.warning(warning),
.data_in(detect)
);
   
   
   endmodule