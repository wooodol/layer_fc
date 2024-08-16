`timescale 1ns / 1ps
module relu_fc_buf(
input reg [31:0] data_in,
input valid_in,
input rst_n,
input clk,
output reg valid_out,
output reg [31:0] data_out_1,
output reg [31:0] data_out_2,
output reg [31:0] data_out_3,
output reg [31:0] data_out_4,
output reg [31:0] data_out_5,
output reg [31:0] data_out_6,
output reg [31:0] data_out_7,
output reg [31:0] data_out_8,
output reg [31:0] data_out_9,
output reg [31:0] data_out_10,
output reg [31:0] data_out_11,
output reg [31:0] data_out_12,
output reg [31:0] data_out_13,
output reg [31:0] data_out_14,
output reg [31:0] data_out_15,
output reg [31:0] data_out_16,
output reg [31:0] data_out_17,
output reg [31:0] data_out_18,
output reg [31:0] data_out_19,
output reg [31:0] data_out_20,
output reg [31:0] data_out_21,
output reg [31:0] data_out_22,
output reg [31:0] data_out_23,
output reg [31:0] data_out_24,
output reg [31:0] data_out_25,
output reg [31:0] data_out_26,
output reg [31:0] data_out_27,
output reg [31:0] data_out_28,
output reg [31:0] data_out_29,
output reg [31:0] data_out_30,
output reg [31:0] data_out_31,
output reg [31:0] data_out_32,
output reg [31:0] data_out_33,
output reg [31:0] data_out_34,
output reg [31:0] data_out_35,
output reg [31:0] data_out_36,
output reg [31:0] data_out_37,
output reg [31:0] data_out_38,
output reg [31:0] data_out_39,
output reg [31:0] data_out_40,
output reg [31:0] data_out_41,
output reg [31:0] data_out_42,
output reg [31:0] data_out_43,
output reg [31:0] data_out_44,
output reg [31:0] data_out_45,
output reg [31:0] data_out_46,
output reg [31:0] data_out_47,
output reg [31:0] data_out_48,
output reg [31:0] data_out_49,
output reg [31:0] data_out_50,
output reg [31:0] data_out_51,
output reg [31:0] data_out_52,
output reg [31:0] data_out_53,
output reg [31:0] data_out_54,
output reg [31:0] data_out_55,
output reg [31:0] data_out_56,
output reg [31:0] data_out_57,
output reg [31:0] data_out_58,
output reg [31:0] data_out_59,
output reg [31:0] data_out_60,
output reg [31:0] data_out_61,
output reg [31:0] data_out_62,
output reg [31:0] data_out_63,
output reg [31:0] data_out_64,
output reg [31:0] data_out_65,
output reg [31:0] data_out_66,
output reg [31:0] data_out_67,
output reg [31:0] data_out_68,
output reg [31:0] data_out_69,
output reg [31:0] data_out_70,
output reg [31:0] data_out_71,
output reg [31:0] data_out_72,
output reg [31:0] data_out_73,
output reg [31:0] data_out_74,
output reg [31:0] data_out_75,
output reg [31:0] data_out_76,
output reg [31:0] data_out_77,
output reg [31:0] data_out_78,
output reg [31:0] data_out_79,
output reg [31:0] data_out_80,
output reg [31:0] data_out_81,
output reg [31:0] data_out_82,
output reg [31:0] data_out_83,
output reg [31:0] data_out_84,
output reg [31:0] data_out_85,
output reg [31:0] data_out_86,
output reg [31:0] data_out_87,
output reg [31:0] data_out_88,
output reg [31:0] data_out_89,
output reg [31:0] data_out_90,
output reg [31:0] data_out_91,
output reg [31:0] data_out_92,
output reg [31:0] data_out_93,
output reg [31:0] data_out_94,
output reg [31:0] data_out_95,
output reg [31:0] data_out_96,
output reg [31:0] data_out_97,
output reg [31:0] data_out_98,
output reg [31:0] data_out_99,
output reg [31:0] data_out_100,
output reg [31:0] data_out_101,
output reg [31:0] data_out_102,
output reg [31:0] data_out_103,
output reg [31:0] data_out_104,
output reg [31:0] data_out_105,
output reg [31:0] data_out_106,
output reg [31:0] data_out_107,
output reg [31:0] data_out_108,
output reg [31:0] data_out_109,
output reg [31:0] data_out_110,
output reg [31:0] data_out_111,
output reg [31:0] data_out_112,
output reg [31:0] data_out_113,
output reg [31:0] data_out_114,
output reg [31:0] data_out_115,
output reg [31:0] data_out_116,
output reg [31:0] data_out_117,
output reg [31:0] data_out_118,
output reg [31:0] data_out_119,
output reg [31:0] data_out_120,
output reg [31:0] data_out_121,
output reg [31:0] data_out_122,
output reg [31:0] data_out_123,
output reg [31:0] data_out_124,
output reg [31:0] data_out_125,
output reg [31:0] data_out_126,
output reg [31:0] data_out_127,
output reg [31:0] data_out_128
);
reg [1:0] state, delay;
reg [31:0] data_buf [0:511]; 
reg [10:0] i,out_idx;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        state <= 0;
        valid_out <= 0;
        delay <= 0;
        i <= 0;
        out_idx <= 0;
    end
    else begin
        if(state == 0) begin
            if(valid_in) begin
                data_buf[i] <= data_in;
                i <= i + 1;
                if(i == 511) begin
                    i <= 0;
                    state <= 1;
                end
            end
        end
        if(state == 1) begin
data_out_1   <= data_buf[4*0+out_idx];
data_out_2   <= data_buf[4*1+out_idx];
data_out_3   <= data_buf[4*2+out_idx];
data_out_4   <= data_buf[4*3+out_idx];
data_out_5   <= data_buf[4*4+out_idx];
data_out_6   <= data_buf[4*5+out_idx];
data_out_7   <= data_buf[4*6+out_idx];
data_out_8   <= data_buf[4*7+out_idx];
data_out_9   <= data_buf[4*8+out_idx];
data_out_10  <= data_buf[4*9+out_idx];
data_out_11  <= data_buf[4*10+out_idx];
data_out_12  <= data_buf[4*11+out_idx];
data_out_13  <= data_buf[4*12+out_idx];
data_out_14  <= data_buf[4*13+out_idx];
data_out_15  <= data_buf[4*14+out_idx];
data_out_16  <= data_buf[4*15+out_idx];
data_out_17  <= data_buf[4*16+out_idx];
data_out_18  <= data_buf[4*17+out_idx];
data_out_19  <= data_buf[4*18+out_idx];
data_out_20  <= data_buf[4*19+out_idx];
data_out_21  <= data_buf[4*20+out_idx];
data_out_22  <= data_buf[4*21+out_idx];
data_out_23  <= data_buf[4*22+out_idx];
data_out_24  <= data_buf[4*23+out_idx];
data_out_25  <= data_buf[4*24+out_idx];
data_out_26  <= data_buf[4*25+out_idx];
data_out_27  <= data_buf[4*26+out_idx];
data_out_28  <= data_buf[4*27+out_idx];
data_out_29  <= data_buf[4*28+out_idx];
data_out_30  <= data_buf[4*29+out_idx];
data_out_31  <= data_buf[4*30+out_idx];
data_out_32  <= data_buf[4*31+out_idx];
data_out_33  <= data_buf[4*32+out_idx];
data_out_34  <= data_buf[4*33+out_idx];
data_out_35  <= data_buf[4*34+out_idx];
data_out_36  <= data_buf[4*35+out_idx];
data_out_37  <= data_buf[4*36+out_idx];
data_out_38  <= data_buf[4*37+out_idx];
data_out_39  <= data_buf[4*38+out_idx];
data_out_40  <= data_buf[4*39+out_idx];
data_out_41  <= data_buf[4*40+out_idx];
data_out_42  <= data_buf[4*41+out_idx];
data_out_43  <= data_buf[4*42+out_idx];
data_out_44  <= data_buf[4*43+out_idx];
data_out_45  <= data_buf[4*44+out_idx];
data_out_46  <= data_buf[4*45+out_idx];
data_out_47  <= data_buf[4*46+out_idx];
data_out_48  <= data_buf[4*47+out_idx];
data_out_49  <= data_buf[4*48+out_idx];
data_out_50  <= data_buf[4*49+out_idx];
data_out_51  <= data_buf[4*50+out_idx];
data_out_52  <= data_buf[4*51+out_idx];
data_out_53  <= data_buf[4*52+out_idx];
data_out_54  <= data_buf[4*53+out_idx];
data_out_55  <= data_buf[4*54+out_idx];
data_out_56  <= data_buf[4*55+out_idx];
data_out_57  <= data_buf[4*56+out_idx];
data_out_58  <= data_buf[4*57+out_idx];
data_out_59  <= data_buf[4*58+out_idx];
data_out_60  <= data_buf[4*59+out_idx];
data_out_61  <= data_buf[4*60+out_idx];
data_out_62  <= data_buf[4*61+out_idx];
data_out_63  <= data_buf[4*62+out_idx];
data_out_64  <= data_buf[4*63+out_idx];
data_out_65  <= data_buf[4*64+out_idx];
data_out_66  <= data_buf[4*65+out_idx];
data_out_67  <= data_buf[4*66+out_idx];
data_out_68  <= data_buf[4*67+out_idx];
data_out_69  <= data_buf[4*68+out_idx];
data_out_70  <= data_buf[4*69+out_idx];
data_out_71  <= data_buf[4*70+out_idx];
data_out_72  <= data_buf[4*71+out_idx];
data_out_73  <= data_buf[4*72+out_idx];
data_out_74  <= data_buf[4*73+out_idx];
data_out_75  <= data_buf[4*74+out_idx];
data_out_76  <= data_buf[4*75+out_idx];
data_out_77  <= data_buf[4*76+out_idx];
data_out_78  <= data_buf[4*77+out_idx];
data_out_79  <= data_buf[4*78+out_idx];
data_out_80  <= data_buf[4*79+out_idx];
data_out_81  <= data_buf[4*80+out_idx];
data_out_82  <= data_buf[4*81+out_idx];
data_out_83  <= data_buf[4*82+out_idx];
data_out_84  <= data_buf[4*83+out_idx];
data_out_85  <= data_buf[4*84+out_idx];
data_out_86  <= data_buf[4*85+out_idx];
data_out_87  <= data_buf[4*86+out_idx];
data_out_88  <= data_buf[4*87+out_idx];
data_out_89  <= data_buf[4*88+out_idx];
data_out_90  <= data_buf[4*89+out_idx];
data_out_91  <= data_buf[4*90+out_idx];
data_out_92  <= data_buf[4*91+out_idx];
data_out_93  <= data_buf[4*92+out_idx];
data_out_94  <= data_buf[4*93+out_idx];
data_out_95  <= data_buf[4*94+out_idx];
data_out_96  <= data_buf[4*95+out_idx];
data_out_97  <= data_buf[4*96+out_idx];
data_out_98  <= data_buf[4*97+out_idx];
data_out_99  <= data_buf[4*98+out_idx];
data_out_100 <= data_buf[4*99+out_idx];
data_out_101 <= data_buf[4*100+out_idx];
data_out_102 <= data_buf[4*101+out_idx];
data_out_103 <= data_buf[4*102+out_idx];
data_out_104 <= data_buf[4*103+out_idx];
data_out_105 <= data_buf[4*104+out_idx];
data_out_106 <= data_buf[4*105+out_idx];
data_out_107 <= data_buf[4*106+out_idx];
data_out_108 <= data_buf[4*107+out_idx];
data_out_109 <= data_buf[4*108+out_idx];
data_out_110 <= data_buf[4*109+out_idx];
data_out_111 <= data_buf[4*110+out_idx];
data_out_112 <= data_buf[4*111+out_idx];
data_out_113 <= data_buf[4*112+out_idx];
data_out_114 <= data_buf[4*113+out_idx];
data_out_115 <= data_buf[4*114+out_idx];
data_out_116 <= data_buf[4*115+out_idx];
data_out_117 <= data_buf[4*116+out_idx];
data_out_118 <= data_buf[4*117+out_idx];
data_out_119 <= data_buf[4*118+out_idx];
data_out_120 <= data_buf[4*119+out_idx];
data_out_121 <= data_buf[4*120+out_idx];
data_out_122 <= data_buf[4*121+out_idx];
data_out_123 <= data_buf[4*122+out_idx];
data_out_124 <= data_buf[4*123+out_idx];
data_out_125 <= data_buf[4*124+out_idx];
data_out_126 <= data_buf[4*125+out_idx];
data_out_127 <= data_buf[4*126+out_idx];
data_out_128 <= data_buf[4*127+out_idx];

            out_idx <= out_idx + 1;
            valid_out <= 1;
            if(out_idx == 3) begin
                out_idx <= 0;
                delay <= 1;
                state <= 0;
            end
        end
        if(delay)begin
            valid_out <= 0;
            delay <= 0;
        end    
    end
end               
                
            


endmodule