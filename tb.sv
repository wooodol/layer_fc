`timescale 1ns / 1ps

module tb();
parameter DATA_BITS = 32;
parameter NUM_REPS = 12; 
integer rep;
integer i;

reg rst_n;
reg valid_in;
reg clk;
reg [31:0] data_out_fc2;
reg valid_out_fc2;
reg detect;
reg valid_out_comp;
reg warning;
reg [DATA_BITS-1:0] data_in_1, data_in_2, data_in_3, data_in_4;
  reg [DATA_BITS-1:0] data_in_5, data_in_6, data_in_7, data_in_8;
  reg [DATA_BITS-1:0] data_in_9, data_in_10, data_in_11, data_in_12;
  reg [DATA_BITS-1:0] data_in_13, data_in_14, data_in_15, data_in_16;
  reg [DATA_BITS-1:0] data_in_17, data_in_18, data_in_19, data_in_20;
  reg [DATA_BITS-1:0] data_in_21, data_in_22, data_in_23, data_in_24;
  reg [DATA_BITS-1:0] data_in_25, data_in_26, data_in_27, data_in_28;
  reg [DATA_BITS-1:0] data_in_29, data_in_30, data_in_31, data_in_32;
  reg [DATA_BITS-1:0] data_in_33, data_in_34, data_in_35, data_in_36;
  reg [DATA_BITS-1:0] data_in_37, data_in_38, data_in_39, data_in_40;
  reg [DATA_BITS-1:0] data_in_41, data_in_42, data_in_43, data_in_44;
  reg [DATA_BITS-1:0] data_in_45, data_in_46, data_in_47, data_in_48;
  reg [DATA_BITS-1:0] data_in_49, data_in_50, data_in_51, data_in_52;
  reg [DATA_BITS-1:0] data_in_53, data_in_54, data_in_55, data_in_56;
  reg [DATA_BITS-1:0] data_in_57, data_in_58, data_in_59, data_in_60;
  reg [DATA_BITS-1:0] data_in_61, data_in_62, data_in_63, data_in_64;
  reg [DATA_BITS-1:0] data_in_65, data_in_66, data_in_67, data_in_68;
  reg [DATA_BITS-1:0] data_in_69, data_in_70, data_in_71, data_in_72;
  reg [DATA_BITS-1:0] data_in_73, data_in_74, data_in_75, data_in_76;
  reg [DATA_BITS-1:0] data_in_77, data_in_78, data_in_79, data_in_80;
  reg [DATA_BITS-1:0] data_in_81, data_in_82, data_in_83, data_in_84;
  reg [DATA_BITS-1:0] data_in_85, data_in_86, data_in_87, data_in_88;
  reg [DATA_BITS-1:0] data_in_89, data_in_90, data_in_91, data_in_92;
  reg [DATA_BITS-1:0] data_in_93, data_in_94, data_in_95, data_in_96;
  reg [DATA_BITS-1:0] data_in_97, data_in_98, data_in_99, data_in_100;
  reg [DATA_BITS-1:0] data_in_101, data_in_102, data_in_103, data_in_104;
  reg [DATA_BITS-1:0] data_in_105, data_in_106, data_in_107, data_in_108;
  reg [DATA_BITS-1:0] data_in_109, data_in_110, data_in_111, data_in_112;
  reg [DATA_BITS-1:0] data_in_113, data_in_114, data_in_115, data_in_116;
  reg [DATA_BITS-1:0] data_in_117, data_in_118, data_in_119, data_in_120;
  reg [DATA_BITS-1:0] data_in_121, data_in_122, data_in_123, data_in_124;
  reg [DATA_BITS-1:0] data_in_125, data_in_126, data_in_127, data_in_128;

fc_layer_connected #(
.DATA_BITS(32)
)uut(
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
    .rst_n(rst_n),
    .data_out_fc2(data_out_fc2),
    .valid_out_fc2(valid_out_fc2),
    .valid_out_comp(valid_out_comp),
    .detect(detect),
    .warning(warning)
    );


initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Reset generation
  initial begin
    rst_n = 0;
    #20 rst_n = 1;
  end
  
  initial begin
    // Initialize Inputs
    valid_in = 0;
    data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; data_in_4 = 0;
    data_in_5 = 0; data_in_6 = 0; data_in_7 = 0; data_in_8 = 0;
    data_in_9 = 0; data_in_10 = 0; data_in_11 = 0; data_in_12 = 0;
    data_in_13 = 0; data_in_14 = 0; data_in_15 = 0; data_in_16 = 0;
    data_in_17 = 0; data_in_18 = 0; data_in_19 = 0; data_in_20 = 0;
    data_in_21 = 0; data_in_22 = 0; data_in_23 = 0; data_in_24 = 0;
    data_in_25 = 0; data_in_26 = 0; data_in_27 = 0; data_in_28 = 0;
    data_in_29 = 0; data_in_30 = 0; data_in_31 = 0; data_in_32 = 0;
    data_in_33 = 0; data_in_34 = 0; data_in_35 = 0; data_in_36 = 0;
    data_in_37 = 0; data_in_38 = 0; data_in_39 = 0; data_in_40 = 0;
    data_in_41 = 0; data_in_42 = 0; data_in_43 = 0; data_in_44 = 0;
    data_in_45 = 0; data_in_46 = 0; data_in_47 = 0; data_in_48 = 0;
    data_in_49 = 0; data_in_50 = 0; data_in_51 = 0; data_in_52 = 0;
    data_in_53 = 0; data_in_54 = 0; data_in_55 = 0; data_in_56 = 0;
    data_in_57 = 0; data_in_58 = 0; data_in_59 = 0; data_in_60 = 0;
    data_in_61 = 0; data_in_62 = 0; data_in_63 = 0; data_in_64 = 0;
    data_in_65 = 0; data_in_66 = 0; data_in_67 = 0; data_in_68 = 0;
    data_in_69 = 0; data_in_70 = 0; data_in_71 = 0; data_in_72 = 0;
    data_in_73 = 0; data_in_74 = 0; data_in_75 = 0; data_in_76 = 0;
    data_in_77 = 0; data_in_78 = 0; data_in_79 = 0; data_in_80 = 0;
    data_in_81 = 0; data_in_82 = 0; data_in_83 = 0; data_in_84 = 0;
    data_in_85 = 0; data_in_86 = 0; data_in_87 = 0; data_in_88 = 0;
    data_in_89 = 0; data_in_90 = 0; data_in_91 = 0; data_in_92 = 0;
    data_in_93 = 0; data_in_94 = 0; data_in_95 = 0; data_in_96 = 0;
    data_in_97 = 0; data_in_98 = 0; data_in_99 = 0; data_in_100 = 0;
    data_in_101 = 0; data_in_102 = 0; data_in_103 = 0; data_in_104 = 0;
    data_in_105 = 0; data_in_106 = 0; data_in_107 = 0; data_in_108 = 0;
    data_in_109 = 0; data_in_110 = 0; data_in_111 = 0; data_in_112 = 0;
    data_in_113 = 0; data_in_114 = 0; data_in_115 = 0; data_in_116 = 0;
    data_in_117 = 0; data_in_118 = 0; data_in_119 = 0; data_in_120 = 0;
    data_in_121 = 0; data_in_122 = 0; data_in_123 = 0; data_in_124 = 0;
    data_in_125 = 0; data_in_126 = 0; data_in_127 = 0; data_in_128 = 0;

    // Wait for reset to complete
    #25;
    // Start the test
    valid_in = 1;

    // Loop through the repetitions
    for (rep = 0; rep < NUM_REPS; rep = rep + 1) begin
      for (i = 0; i < 1; i = i + 1) begin
        data_in_1  = 32'h3F4CCCCD;  // 0.6
data_in_2  = 32'hBF4CCCCD;  // -0.6
data_in_3  = 32'h3F4CCCCD;  // 0.6
data_in_4  = 32'hBF4CCCCD;  // -0.6
data_in_5  = 32'h3E99999A;  // 0.3
data_in_6  = 32'hBE99999A;  // -0.3
data_in_7  = 32'h3F333333;  // 0.4
data_in_8  = 32'hBF333333;  // -0.4
data_in_9  = 32'h3F4CCCCD;  // 0.6
data_in_10 = 32'hBF4CCCCD;  // -0.6
data_in_11 = 32'h3F4CCCCD;  // 0.6
data_in_12 = 32'hBF4CCCCD;  // -0.6
data_in_13 = 32'h3F4CCCCD;  // 0.6
data_in_14 = 32'hBF4CCCCD;  // -0.6
data_in_15 = 32'h3EB33333;  // 0.35
data_in_16 = 32'hBEB33333;  // -0.35
data_in_17 = 32'h3F2A3D71;  // 0.55
data_in_18 = 32'hBF2A3D71;  // -0.55
data_in_19 = 32'h3F266666;  // 0.45
data_in_20 = 32'hBF266666;  // -0.45
data_in_21 = 32'h3F4CCCCD;  // 0.6
data_in_22 = 32'hBF4CCCCD;  // -0.6
data_in_23 = 32'h3F4CCCCD;  // 0.6
data_in_24 = 32'hBF4CCCCD;  // -0.6
data_in_25 = 32'h3F400000;  // 0.5
data_in_26 = 32'hBF400000;  // -0.5
data_in_27 = 32'h3EB851EB;  // 0.37
data_in_28 = 32'hBEB851EB;  // -0.37
data_in_29 = 32'h3F4CCCCD;  // 0.6
data_in_30 = 32'hBF4CCCCD;  // -0.6
data_in_31 = 32'h3F333333;  // 0.4
data_in_32 = 32'hBF333333;  // -0.4
data_in_33 = 32'h3F266666;  // 0.45
data_in_34 = 32'hBF266666;  // -0.45
data_in_35 = 32'h3EB33333;  // 0.35
data_in_36 = 32'hBEB33333;  // -0.35
data_in_37 = 32'h3F4CCCCD;  // 0.6
data_in_38 = 32'hBF4CCCCD;  // -0.6
data_in_39 = 32'h3F2A3D71;  // 0.55
data_in_40 = 32'hBF2A3D71;  // -0.55
data_in_41 = 32'h3F333333;  // 0.4
data_in_42 = 32'hBF333333;  // -0.4
data_in_43 = 32'h3F400000;  // 0.5
data_in_44 = 32'hBF400000;  // -0.5
data_in_45 = 32'h3F266666;  // 0.45
data_in_46 = 32'hBF266666;  // -0.45
data_in_47 = 32'h3F2A3D71;  // 0.55
data_in_48 = 32'hBF2A3D71;  // -0.55
data_in_49 = 32'h3F4CCCCD;  // 0.6
data_in_50 = 32'hBF4CCCCD;  // -0.6
data_in_51 = 32'h3F400000;  // 0.5
data_in_52 = 32'hBF400000;  // -0.5
data_in_53 = 32'h3F266666;  // 0.45
data_in_54 = 32'hBF266666;  // -0.45
data_in_55 = 32'h3F2A3D71;  // 0.55
data_in_56 = 32'hBF2A3D71;  // -0.55
data_in_57 = 32'h3F4CCCCD;  // 0.6
data_in_58 = 32'hBF4CCCCD;  // -0.6
data_in_59 = 32'h3F333333;  // 0.4
data_in_60 = 32'hBF333333;  // -0.4
data_in_61 = 32'h3F266666;  // 0.45
data_in_62 = 32'hBF266666;  // -0.45
data_in_63 = 32'h3F2A3D71;  // 0.55
data_in_64 = 32'hBF2A3D71;  // -0.55
data_in_65 = 32'h3F333333;  // 0.4
data_in_66 = 32'hBF333333;  // -0.4
data_in_67 = 32'h3F4CCCCD;  // 0.6
data_in_68 = 32'hBF4CCCCD;  // -0.6
data_in_69 = 32'h3EB33333;  // 0.35
data_in_70 = 32'hBEB33333;  // -0.35
data_in_71 = 32'h3F4CCCCD;  // 0.6
data_in_72 = 32'hBF4CCCCD;  // -0.6
data_in_73 = 32'h3F2A3D71;  // 0.55
data_in_74 = 32'hBF2A3D71;  // -0.55
data_in_75 = 32'h3F400000;  // 0.5
data_in_76 = 32'hBF400000;  // -0.5
data_in_77 = 32'h3F266666;  // 0.45
data_in_78 = 32'hBF266666;  // -0.45
data_in_79 = 32'h3F4CCCCD;  // 0.6
data_in_80 = 32'hBF4CCCCD;  // -0.6
data_in_81 = 32'h3EB33333;  // 0.35
data_in_82 = 32'hBEB33333;  // -0.35
data_in_83 = 32'h3F266666;  // 0.45
data_in_84 = 32'hBF266666;  // -0.45
data_in_85 = 32'h3F333333;  // 0.4
data_in_86 = 32'hBF333333;  // -0.4
data_in_87 = 32'h3F4CCCCD;  // 0.6
data_in_88 = 32'hBF4CCCCD;  // -0.6
data_in_89 = 32'h3F4CCCCD;  // 0.6
data_in_90 = 32'hBF4CCCCD;  // -0.6
data_in_91 = 32'h3F2A3D71;  // 0.55
data_in_92 = 32'hBF2A3D71;  // -0.55
data_in_93 = 32'h3F333333;  // 0.4
data_in_94 = 32'hBF333333;  // -0.4
data_in_95 = 32'h3F400000;  // 0.5
data_in_96 = 32'hBF400000;  // -0.5
data_in_97 = 32'h3EB33333;  // 0.35
data_in_98 = 32'hBEB33333;  // -0.35
data_in_99 = 32'h3F266666;  // 0.45
data_in_100 = 32'hBF266666;  // -0.45
data_in_101 = 32'h3EB33333;  // 0.35
data_in_102 = 32'hBEB33333;  // -0.35
data_in_103 = 32'h3F2A3D71;  // 0.55
data_in_104 = 32'hBF2A3D71;  // -0.55
data_in_105 = 32'h3F266666;  // 0.45
data_in_106 = 32'hBF266666;  // -0.45
data_in_107 = 32'h3F4CCCCD;  // 0.6
data_in_108 = 32'hBF4CCCCD;  // -0.6
data_in_109 = 32'h3F333333;  // 0.4
data_in_110 = 32'hBF333333;  // -0.4
data_in_111 = 32'h3F2A3D71;  // 0.55
data_in_112 = 32'hBF2A3D71;  // -0.55
data_in_113 = 32'h3F4CCCCD;  // 0.6
data_in_114 = 32'hBF4CCCCD;  // -0.6
data_in_115 = 32'h3F266666;  // 0.45
data_in_116 = 32'hBF266666;  // -0.45
data_in_117 = 32'h3EB33333;  // 0.35
data_in_118 = 32'hBEB33333;  // -0.35
data_in_119 = 32'h3F400000;  // 0.5
data_in_120 = 32'hBF400000;  // -0.5
data_in_121 = 32'h3F4CCCCD;  // 0.6
data_in_122 = 32'hBF4CCCCD;  // -0.6
data_in_123 = 32'h3F2A3D71;  // 0.55
data_in_124 = 32'hBF2A3D71;  // -0.55
data_in_125 = 32'h3EB33333;  // 0.35
data_in_126 = 32'hBEB33333;  // -0.35
data_in_127 = 32'h3F266666;  // 0.45
data_in_128 = 32'hBF266666;  // -0.45
        #10; // Wait for 10 time units
      end
   end  
   valid_in = 0;
end

endmodule
