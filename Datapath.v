module InstructionMemory( // @[:@3.2]
  input  [7:0]  io_rdAddr, // @[:@6.4]
  output [31:0] io_rdData // @[:@6.4]
);
  wire [6:0] _T_217; // @[:@109.4]
  wire [31:0] _GEN_1; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_2; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_3; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_4; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_5; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_6; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_7; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_8; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_9; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_10; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_11; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_12; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_13; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_14; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_15; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_16; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_17; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_18; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_19; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_20; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_21; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_22; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_23; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_24; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_25; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_26; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_27; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_28; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_29; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_30; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_31; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_32; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_33; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_34; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_35; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_36; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_37; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_38; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_39; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_40; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_41; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_42; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_43; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_44; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_45; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_46; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_47; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_48; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_49; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_50; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_51; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_52; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_53; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_54; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_55; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_56; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_57; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_58; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_59; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_60; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_61; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_62; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_63; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_64; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_65; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_66; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_67; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_68; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_69; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_70; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_71; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_72; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_73; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_74; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_75; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_76; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_77; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_78; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_79; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_80; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_81; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_82; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_83; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_84; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_85; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_86; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_87; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_88; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_89; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_90; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_91; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_92; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_93; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_94; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_95; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_96; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_97; // @[InstructionMemory.scala 17:13:@110.4]
  wire [31:0] _GEN_98; // @[InstructionMemory.scala 17:13:@110.4]
  assign _T_217 = io_rdAddr[6:0]; // @[:@109.4]
  assign _GEN_1 = 7'h1 == _T_217 ? 32'h10224 : 32'hd0124; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_2 = 7'h2 == _T_217 ? 32'h0 : _GEN_1; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_3 = 7'h3 == _T_217 ? 32'h0 : _GEN_2; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_4 = 7'h4 == _T_217 ? 32'h10011 : _GEN_3; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_5 = 7'h5 == _T_217 ? 32'h0 : _GEN_4; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_6 = 7'h6 == _T_217 ? 32'h0 : _GEN_5; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_7 = 7'h7 == _T_217 ? 32'h310 : _GEN_6; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_8 = 7'h8 == _T_217 ? 32'h0 : _GEN_7; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_9 = 7'h9 == _T_217 ? 32'h0 : _GEN_8; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_10 = 7'ha == _T_217 ? 32'h0 : _GEN_9; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_11 = 7'hb == _T_217 ? 32'h0 : _GEN_10; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_12 = 7'hc == _T_217 ? 32'h0 : _GEN_11; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_13 = 7'hd == _T_217 ? 32'h0 : _GEN_12; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_14 = 7'he == _T_217 ? 32'h0 : _GEN_13; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_15 = 7'hf == _T_217 ? 32'h0 : _GEN_14; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_16 = 7'h10 == _T_217 ? 32'h0 : _GEN_15; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_17 = 7'h11 == _T_217 ? 32'h0 : _GEN_16; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_18 = 7'h12 == _T_217 ? 32'h0 : _GEN_17; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_19 = 7'h13 == _T_217 ? 32'h0 : _GEN_18; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_20 = 7'h14 == _T_217 ? 32'h0 : _GEN_19; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_21 = 7'h15 == _T_217 ? 32'h0 : _GEN_20; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_22 = 7'h16 == _T_217 ? 32'h0 : _GEN_21; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_23 = 7'h17 == _T_217 ? 32'h0 : _GEN_22; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_24 = 7'h18 == _T_217 ? 32'h0 : _GEN_23; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_25 = 7'h19 == _T_217 ? 32'h0 : _GEN_24; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_26 = 7'h1a == _T_217 ? 32'h0 : _GEN_25; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_27 = 7'h1b == _T_217 ? 32'h0 : _GEN_26; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_28 = 7'h1c == _T_217 ? 32'h0 : _GEN_27; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_29 = 7'h1d == _T_217 ? 32'h0 : _GEN_28; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_30 = 7'h1e == _T_217 ? 32'h0 : _GEN_29; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_31 = 7'h1f == _T_217 ? 32'h0 : _GEN_30; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_32 = 7'h20 == _T_217 ? 32'h0 : _GEN_31; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_33 = 7'h21 == _T_217 ? 32'h0 : _GEN_32; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_34 = 7'h22 == _T_217 ? 32'h0 : _GEN_33; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_35 = 7'h23 == _T_217 ? 32'h0 : _GEN_34; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_36 = 7'h24 == _T_217 ? 32'h0 : _GEN_35; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_37 = 7'h25 == _T_217 ? 32'h0 : _GEN_36; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_38 = 7'h26 == _T_217 ? 32'h0 : _GEN_37; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_39 = 7'h27 == _T_217 ? 32'h0 : _GEN_38; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_40 = 7'h28 == _T_217 ? 32'h0 : _GEN_39; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_41 = 7'h29 == _T_217 ? 32'h0 : _GEN_40; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_42 = 7'h2a == _T_217 ? 32'h0 : _GEN_41; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_43 = 7'h2b == _T_217 ? 32'h0 : _GEN_42; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_44 = 7'h2c == _T_217 ? 32'h0 : _GEN_43; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_45 = 7'h2d == _T_217 ? 32'h0 : _GEN_44; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_46 = 7'h2e == _T_217 ? 32'h0 : _GEN_45; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_47 = 7'h2f == _T_217 ? 32'h0 : _GEN_46; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_48 = 7'h30 == _T_217 ? 32'h0 : _GEN_47; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_49 = 7'h31 == _T_217 ? 32'h0 : _GEN_48; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_50 = 7'h32 == _T_217 ? 32'h0 : _GEN_49; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_51 = 7'h33 == _T_217 ? 32'h0 : _GEN_50; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_52 = 7'h34 == _T_217 ? 32'h0 : _GEN_51; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_53 = 7'h35 == _T_217 ? 32'h0 : _GEN_52; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_54 = 7'h36 == _T_217 ? 32'h0 : _GEN_53; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_55 = 7'h37 == _T_217 ? 32'h0 : _GEN_54; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_56 = 7'h38 == _T_217 ? 32'h0 : _GEN_55; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_57 = 7'h39 == _T_217 ? 32'h0 : _GEN_56; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_58 = 7'h3a == _T_217 ? 32'h0 : _GEN_57; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_59 = 7'h3b == _T_217 ? 32'h0 : _GEN_58; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_60 = 7'h3c == _T_217 ? 32'h0 : _GEN_59; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_61 = 7'h3d == _T_217 ? 32'h0 : _GEN_60; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_62 = 7'h3e == _T_217 ? 32'h0 : _GEN_61; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_63 = 7'h3f == _T_217 ? 32'h0 : _GEN_62; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_64 = 7'h40 == _T_217 ? 32'h0 : _GEN_63; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_65 = 7'h41 == _T_217 ? 32'h0 : _GEN_64; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_66 = 7'h42 == _T_217 ? 32'h0 : _GEN_65; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_67 = 7'h43 == _T_217 ? 32'h0 : _GEN_66; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_68 = 7'h44 == _T_217 ? 32'h0 : _GEN_67; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_69 = 7'h45 == _T_217 ? 32'h0 : _GEN_68; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_70 = 7'h46 == _T_217 ? 32'h0 : _GEN_69; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_71 = 7'h47 == _T_217 ? 32'h0 : _GEN_70; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_72 = 7'h48 == _T_217 ? 32'h0 : _GEN_71; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_73 = 7'h49 == _T_217 ? 32'h0 : _GEN_72; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_74 = 7'h4a == _T_217 ? 32'h0 : _GEN_73; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_75 = 7'h4b == _T_217 ? 32'h0 : _GEN_74; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_76 = 7'h4c == _T_217 ? 32'h0 : _GEN_75; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_77 = 7'h4d == _T_217 ? 32'h0 : _GEN_76; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_78 = 7'h4e == _T_217 ? 32'h0 : _GEN_77; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_79 = 7'h4f == _T_217 ? 32'h0 : _GEN_78; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_80 = 7'h50 == _T_217 ? 32'h0 : _GEN_79; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_81 = 7'h51 == _T_217 ? 32'h0 : _GEN_80; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_82 = 7'h52 == _T_217 ? 32'h0 : _GEN_81; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_83 = 7'h53 == _T_217 ? 32'h0 : _GEN_82; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_84 = 7'h54 == _T_217 ? 32'h0 : _GEN_83; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_85 = 7'h55 == _T_217 ? 32'h0 : _GEN_84; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_86 = 7'h56 == _T_217 ? 32'h0 : _GEN_85; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_87 = 7'h57 == _T_217 ? 32'h0 : _GEN_86; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_88 = 7'h58 == _T_217 ? 32'h0 : _GEN_87; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_89 = 7'h59 == _T_217 ? 32'h0 : _GEN_88; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_90 = 7'h5a == _T_217 ? 32'h0 : _GEN_89; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_91 = 7'h5b == _T_217 ? 32'h0 : _GEN_90; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_92 = 7'h5c == _T_217 ? 32'h0 : _GEN_91; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_93 = 7'h5d == _T_217 ? 32'h0 : _GEN_92; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_94 = 7'h5e == _T_217 ? 32'h0 : _GEN_93; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_95 = 7'h5f == _T_217 ? 32'h0 : _GEN_94; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_96 = 7'h60 == _T_217 ? 32'h0 : _GEN_95; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_97 = 7'h61 == _T_217 ? 32'h0 : _GEN_96; // @[InstructionMemory.scala 17:13:@110.4]
  assign _GEN_98 = 7'h62 == _T_217 ? 32'h0 : _GEN_97; // @[InstructionMemory.scala 17:13:@110.4]
  assign io_rdData = 7'h63 == _T_217 ? 32'h0 : _GEN_98; // @[InstructionMemory.scala 17:13:@110.4]
endmodule
module DataMemory( // @[:@128.2]
  input         clock, // @[:@129.4]
  input         reset, // @[:@130.4]
  input  [7:0]  io_rdAddr, // @[:@131.4]
  input  [7:0]  io_wrAddr, // @[:@131.4]
  input  [31:0] io_wrData, // @[:@131.4]
  output [31:0] io_rdData, // @[:@131.4]
  input         io_wr, // @[:@131.4]
  output        io_led // @[:@131.4]
);
  reg [31:0] mem [0:255]; // @[DataMemory.scala 17:24:@133.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_24_data; // @[DataMemory.scala 17:24:@133.4]
  wire [7:0] mem__T_24_addr; // @[DataMemory.scala 17:24:@133.4]
  wire [31:0] mem__T_25_data; // @[DataMemory.scala 17:24:@133.4]
  wire [7:0] mem__T_25_addr; // @[DataMemory.scala 17:24:@133.4]
  wire  mem__T_25_mask; // @[DataMemory.scala 17:24:@133.4]
  wire  mem__T_25_en; // @[DataMemory.scala 17:24:@133.4]
  reg [31:0] regLed; // @[DataMemory.scala 20:23:@134.4]
  reg [31:0] _RAND_1;
  wire  _T_22; // @[DataMemory.scala 23:19:@136.4]
  wire  _T_23; // @[DataMemory.scala 23:27:@137.4]
  wire [31:0] _GEN_0; // @[DataMemory.scala 23:36:@138.4]
  wire  _GEN_4; // @[DataMemory.scala 30:15:@143.4]
  reg [7:0] mem__T_24_addr_pipe_0;
  reg [31:0] _RAND_2;
  assign mem__T_24_addr = mem__T_24_addr_pipe_0;
  assign mem__T_24_data = mem[mem__T_24_addr]; // @[DataMemory.scala 17:24:@133.4]
  assign mem__T_25_data = io_wrData;
  assign mem__T_25_addr = io_wrAddr;
  assign mem__T_25_mask = 1'h1;
  assign mem__T_25_en = io_wr;
  assign _T_22 = io_wrAddr == 8'h0; // @[DataMemory.scala 23:19:@136.4]
  assign _T_23 = _T_22 & io_wr; // @[DataMemory.scala 23:27:@137.4]
  assign _GEN_0 = _T_23 ? io_wrData : regLed; // @[DataMemory.scala 23:36:@138.4]
  assign _GEN_4 = 1'h1; // @[DataMemory.scala 30:15:@143.4]
  assign io_rdData = mem__T_24_data; // @[DataMemory.scala 28:13:@142.4]
  assign io_led = regLed[0]; // @[DataMemory.scala 21:10:@135.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  regLed = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem__T_24_addr_pipe_0 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_25_en & mem__T_25_mask) begin
      mem[mem__T_25_addr] <= mem__T_25_data; // @[DataMemory.scala 17:24:@133.4]
    end
    if (reset) begin
      regLed <= 32'h0;
    end else begin
      if (_T_23) begin
        regLed <= io_wrData;
      end
    end
    if (_GEN_4) begin
      mem__T_24_addr_pipe_0 <= io_rdAddr;
    end
  end
endmodule
module ALU( // @[:@148.2]
  input  [31:0] io_a, // @[:@151.4]
  input  [31:0] io_b, // @[:@151.4]
  input  [4:0]  io_opcode, // @[:@151.4]
  output [31:0] io_out // @[:@151.4]
);
  wire  _T_15; // @[Conditional.scala 37:30:@154.4]
  wire  _T_18; // @[Conditional.scala 37:30:@159.6]
  wire  _T_20; // @[Conditional.scala 37:30:@164.8]
  wire [32:0] _T_22; // @[ALU.scala 23:30:@166.10]
  wire [31:0] _T_23; // @[ALU.scala 23:30:@167.10]
  wire  _T_25; // @[Conditional.scala 37:30:@171.10]
  wire [32:0] _T_27; // @[ALU.scala 24:30:@173.12]
  wire [32:0] _T_28; // @[ALU.scala 24:30:@174.12]
  wire [31:0] _T_29; // @[ALU.scala 24:30:@175.12]
  wire  _T_31; // @[Conditional.scala 37:30:@179.12]
  wire [32:0] _T_32; // @[ALU.scala 25:30:@181.14]
  wire [31:0] _T_33; // @[ALU.scala 25:30:@182.14]
  wire  _T_35; // @[Conditional.scala 37:30:@186.14]
  wire [32:0] _T_36; // @[ALU.scala 26:30:@188.16]
  wire [32:0] _T_37; // @[ALU.scala 26:30:@189.16]
  wire [31:0] _T_38; // @[ALU.scala 26:30:@190.16]
  wire  _T_40; // @[Conditional.scala 37:30:@194.16]
  wire [31:0] _T_41; // @[ALU.scala 27:25:@196.18]
  wire  _T_43; // @[Conditional.scala 37:30:@200.18]
  wire [31:0] _T_44; // @[ALU.scala 28:29:@202.20]
  wire  _T_46; // @[Conditional.scala 37:30:@206.20]
  wire [31:0] _T_47; // @[ALU.scala 29:29:@208.22]
  wire  _T_49; // @[Conditional.scala 37:30:@212.22]
  wire [31:0] _T_50; // @[ALU.scala 30:29:@214.24]
  wire [31:0] _GEN_0; // @[Conditional.scala 39:67:@213.22]
  wire [31:0] _GEN_1; // @[Conditional.scala 39:67:@207.20]
  wire [31:0] _GEN_2; // @[Conditional.scala 39:67:@201.18]
  wire [31:0] _GEN_3; // @[Conditional.scala 39:67:@195.16]
  wire [31:0] _GEN_4; // @[Conditional.scala 39:67:@187.14]
  wire [31:0] _GEN_5; // @[Conditional.scala 39:67:@180.12]
  wire [31:0] _GEN_6; // @[Conditional.scala 39:67:@172.10]
  wire [31:0] _GEN_7; // @[Conditional.scala 39:67:@165.8]
  wire [31:0] _GEN_8; // @[Conditional.scala 39:67:@160.6]
  assign _T_15 = 5'h0 == io_opcode; // @[Conditional.scala 37:30:@154.4]
  assign _T_18 = 5'h1 == io_opcode; // @[Conditional.scala 37:30:@159.6]
  assign _T_20 = 5'h2 == io_opcode; // @[Conditional.scala 37:30:@164.8]
  assign _T_22 = io_a + 32'h1; // @[ALU.scala 23:30:@166.10]
  assign _T_23 = io_a + 32'h1; // @[ALU.scala 23:30:@167.10]
  assign _T_25 = 5'h3 == io_opcode; // @[Conditional.scala 37:30:@171.10]
  assign _T_27 = io_a - 32'h1; // @[ALU.scala 24:30:@173.12]
  assign _T_28 = $unsigned(_T_27); // @[ALU.scala 24:30:@174.12]
  assign _T_29 = _T_28[31:0]; // @[ALU.scala 24:30:@175.12]
  assign _T_31 = 5'h4 == io_opcode; // @[Conditional.scala 37:30:@179.12]
  assign _T_32 = io_a + io_b; // @[ALU.scala 25:30:@181.14]
  assign _T_33 = io_a + io_b; // @[ALU.scala 25:30:@182.14]
  assign _T_35 = 5'h5 == io_opcode; // @[Conditional.scala 37:30:@186.14]
  assign _T_36 = io_a - io_b; // @[ALU.scala 26:30:@188.16]
  assign _T_37 = $unsigned(_T_36); // @[ALU.scala 26:30:@189.16]
  assign _T_38 = _T_37[31:0]; // @[ALU.scala 26:30:@190.16]
  assign _T_40 = 5'h6 == io_opcode; // @[Conditional.scala 37:30:@194.16]
  assign _T_41 = ~ io_a; // @[ALU.scala 27:25:@196.18]
  assign _T_43 = 5'h7 == io_opcode; // @[Conditional.scala 37:30:@200.18]
  assign _T_44 = io_a & io_b; // @[ALU.scala 28:29:@202.20]
  assign _T_46 = 5'h8 == io_opcode; // @[Conditional.scala 37:30:@206.20]
  assign _T_47 = io_a | io_b; // @[ALU.scala 29:29:@208.22]
  assign _T_49 = 5'h9 == io_opcode; // @[Conditional.scala 37:30:@212.22]
  assign _T_50 = io_a ^ io_b; // @[ALU.scala 30:29:@214.24]
  assign _GEN_0 = _T_49 ? _T_50 : 32'h0; // @[Conditional.scala 39:67:@213.22]
  assign _GEN_1 = _T_46 ? _T_47 : _GEN_0; // @[Conditional.scala 39:67:@207.20]
  assign _GEN_2 = _T_43 ? _T_44 : _GEN_1; // @[Conditional.scala 39:67:@201.18]
  assign _GEN_3 = _T_40 ? _T_41 : _GEN_2; // @[Conditional.scala 39:67:@195.16]
  assign _GEN_4 = _T_35 ? _T_38 : _GEN_3; // @[Conditional.scala 39:67:@187.14]
  assign _GEN_5 = _T_31 ? _T_33 : _GEN_4; // @[Conditional.scala 39:67:@180.12]
  assign _GEN_6 = _T_25 ? _T_29 : _GEN_5; // @[Conditional.scala 39:67:@172.10]
  assign _GEN_7 = _T_20 ? _T_23 : _GEN_6; // @[Conditional.scala 39:67:@165.8]
  assign _GEN_8 = _T_18 ? io_a : _GEN_7; // @[Conditional.scala 39:67:@160.6]
  assign io_out = _T_15 ? 32'h0 : _GEN_8; // @[ALU.scala 18:10:@153.4 ALU.scala 21:22:@156.6 ALU.scala 22:22:@161.8 ALU.scala 23:22:@168.10 ALU.scala 24:22:@176.12 ALU.scala 25:22:@183.14 ALU.scala 26:22:@191.16 ALU.scala 27:22:@197.18 ALU.scala 28:21:@203.20 ALU.scala 29:21:@209.22 ALU.scala 30:21:@215.24]
endmodule
module Datapath( // @[:@218.2]
  input         clock, // @[:@219.4]
  input         reset, // @[:@220.4]
  input  [2:0]  io_testSelect, // @[:@221.4]
  output [31:0] io_inst, // @[:@221.4]
  output [4:0]  io_opcode, // @[:@221.4]
  output        io_memSelect, // @[:@221.4]
  output        io_bSelect, // @[:@221.4]
  output        io_isLoad, // @[:@221.4]
  output [3:0]  io_regA, // @[:@221.4]
  output [3:0]  io_regB, // @[:@221.4]
  output [15:0] io_immediate, // @[:@221.4]
  output [31:0] io_result, // @[:@221.4]
  output [3:0]  io_destReg, // @[:@221.4]
  output [31:0] io_WBvalue, // @[:@221.4]
  output [31:0] io_reg0, // @[:@221.4]
  output [31:0] io_reg1, // @[:@221.4]
  output [31:0] io_reg2, // @[:@221.4]
  output [31:0] io_reg3, // @[:@221.4]
  output [31:0] io_reg4, // @[:@221.4]
  output [31:0] io_memData, // @[:@221.4]
  output        io_led // @[:@221.4]
);
  wire [7:0] iMem_io_rdAddr; // @[Datapath.scala 38:20:@223.4]
  wire [31:0] iMem_io_rdData; // @[Datapath.scala 38:20:@223.4]
  wire  dMem_clock; // @[Datapath.scala 42:20:@227.4]
  wire  dMem_reset; // @[Datapath.scala 42:20:@227.4]
  wire [7:0] dMem_io_rdAddr; // @[Datapath.scala 42:20:@227.4]
  wire [7:0] dMem_io_wrAddr; // @[Datapath.scala 42:20:@227.4]
  wire [31:0] dMem_io_wrData; // @[Datapath.scala 42:20:@227.4]
  wire [31:0] dMem_io_rdData; // @[Datapath.scala 42:20:@227.4]
  wire  dMem_io_wr; // @[Datapath.scala 42:20:@227.4]
  wire  dMem_io_led; // @[Datapath.scala 42:20:@227.4]
  wire [31:0] alu_io_a; // @[Datapath.scala 53:19:@247.4]
  wire [31:0] alu_io_b; // @[Datapath.scala 53:19:@247.4]
  wire [4:0] alu_io_opcode; // @[Datapath.scala 53:19:@247.4]
  wire [31:0] alu_io_out; // @[Datapath.scala 53:19:@247.4]
  reg [31:0] rMem_0; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_0;
  reg [31:0] rMem_1; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_1;
  reg [31:0] rMem_2; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_2;
  reg [31:0] rMem_3; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_3;
  reg [31:0] rMem_4; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_4;
  reg [31:0] rMem_5; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_5;
  reg [31:0] rMem_6; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_6;
  reg [31:0] rMem_7; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_7;
  reg [31:0] rMem_8; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_8;
  reg [31:0] rMem_9; // @[Datapath.scala 50:22:@246.4]
  reg [31:0] _RAND_9;
  reg [31:0] instruction; // @[Datapath.scala 58:27:@250.4]
  reg [31:0] _RAND_10;
  reg [3:0] opcode; // @[Datapath.scala 61:22:@251.4]
  reg [31:0] _RAND_11;
  reg  memSelectReg1; // @[Datapath.scala 62:26:@252.4]
  reg [31:0] _RAND_12;
  reg  bSelect; // @[Datapath.scala 63:23:@253.4]
  reg [31:0] _RAND_13;
  reg  isLoadReg1; // @[Datapath.scala 64:23:@254.4]
  reg [31:0] _RAND_14;
  reg [31:0] aVal; // @[Datapath.scala 65:20:@255.4]
  reg [31:0] _RAND_15;
  reg [31:0] bVal; // @[Datapath.scala 66:21:@256.4]
  reg [31:0] _RAND_16;
  reg [31:0] immVal; // @[Datapath.scala 67:22:@257.4]
  reg [31:0] _RAND_17;
  reg [3:0] wbrReg1; // @[Datapath.scala 68:20:@258.4]
  reg [31:0] _RAND_18;
  reg [31:0] resultReg; // @[Datapath.scala 71:22:@259.4]
  reg [31:0] _RAND_19;
  reg [31:0] data; // @[Datapath.scala 74:20:@260.4]
  reg [31:0] _RAND_20;
  reg [7:0] pc; // @[Datapath.scala 79:19:@261.4]
  reg [31:0] _RAND_21;
  wire [8:0] _T_145; // @[Datapath.scala 80:12:@262.4]
  wire [7:0] _T_146; // @[Datapath.scala 80:12:@263.4]
  wire  _T_147; // @[Datapath.scala 89:31:@267.4]
  wire  _T_148; // @[Datapath.scala 90:29:@269.4]
  wire [3:0] _T_150; // @[Datapath.scala 91:30:@272.4]
  wire [31:0] _GEN_1; // @[Datapath.scala 91:11:@273.4]
  wire [31:0] _GEN_2; // @[Datapath.scala 91:11:@273.4]
  wire [31:0] _GEN_3; // @[Datapath.scala 91:11:@273.4]
  wire [31:0] _GEN_4; // @[Datapath.scala 91:11:@273.4]
  wire [31:0] _GEN_5; // @[Datapath.scala 91:11:@273.4]
  wire [31:0] _GEN_6; // @[Datapath.scala 91:11:@273.4]
  wire [31:0] _GEN_7; // @[Datapath.scala 91:11:@273.4]
  wire [31:0] _GEN_8; // @[Datapath.scala 91:11:@273.4]
  wire  _T_156; // @[Datapath.scala 93:23:@275.4]
  wire [3:0] _T_157; // @[Datapath.scala 94:29:@277.6]
  wire [3:0] _T_158; // @[Datapath.scala 95:27:@279.6]
  wire [2:0] _T_159; // @[Datapath.scala 97:23:@281.6]
  wire  _T_161; // @[Conditional.scala 37:30:@282.6]
  wire [3:0] _T_162; // @[Datapath.scala 100:37:@284.8]
  wire [31:0] _GEN_11; // @[Datapath.scala 100:18:@285.8]
  wire [31:0] _GEN_12; // @[Datapath.scala 100:18:@285.8]
  wire [31:0] _GEN_13; // @[Datapath.scala 100:18:@285.8]
  wire [31:0] _GEN_14; // @[Datapath.scala 100:18:@285.8]
  wire [31:0] _GEN_15; // @[Datapath.scala 100:18:@285.8]
  wire [31:0] _GEN_16; // @[Datapath.scala 100:18:@285.8]
  wire [31:0] _GEN_17; // @[Datapath.scala 100:18:@285.8]
  wire [31:0] _GEN_18; // @[Datapath.scala 100:18:@285.8]
  wire [31:0] _GEN_19; // @[Datapath.scala 100:18:@285.8]
  wire  _T_169; // @[Conditional.scala 37:30:@290.8]
  wire [15:0] _T_172; // @[Datapath.scala 107:48:@293.10]
  wire [31:0] _T_173; // @[Cat.scala 30:58:@294.10]
  wire  _T_176; // @[Conditional.scala 37:30:@299.10]
  wire [31:0] _GEN_20; // @[Conditional.scala 39:67:@300.10]
  wire [31:0] _GEN_21; // @[Conditional.scala 39:67:@300.10]
  wire  _GEN_22; // @[Conditional.scala 39:67:@300.10]
  wire [31:0] _GEN_23; // @[Conditional.scala 39:67:@291.8]
  wire [31:0] _GEN_24; // @[Conditional.scala 39:67:@291.8]
  wire  _GEN_25; // @[Conditional.scala 39:67:@291.8]
  wire [31:0] _GEN_26; // @[Conditional.scala 40:58:@283.6]
  wire [31:0] _GEN_27; // @[Conditional.scala 40:58:@283.6]
  wire  _GEN_28; // @[Conditional.scala 40:58:@283.6]
  wire [7:0] _T_182; // @[Datapath.scala 119:44:@308.6]
  wire [31:0] _T_183; // @[Cat.scala 30:58:@309.6]
  wire  _T_187; // @[Datapath.scala 122:25:@313.6]
  wire [3:0] _GEN_39; // @[Datapath.scala 122:39:@314.6]
  wire [31:0] _GEN_40; // @[Datapath.scala 122:39:@314.6]
  wire [7:0] _T_200; // @[Datapath.scala 153:27:@338.6]
  wire  _GEN_47; // @[Datapath.scala 154:32:@340.6]
  wire [7:0] _GEN_48; // @[Datapath.scala 154:32:@340.6]
  wire [7:0] _GEN_49; // @[Datapath.scala 154:32:@340.6]
  wire [31:0] _GEN_50; // @[Datapath.scala 154:32:@340.6]
  reg  memSelect; // @[Datapath.scala 166:30:@353.4]
  reg [31:0] _RAND_22;
  reg  isLoad; // @[Datapath.scala 167:27:@355.4]
  reg [31:0] _RAND_23;
  reg [3:0] wbrReg2; // @[Datapath.scala 168:24:@357.4]
  reg [31:0] _RAND_24;
  wire [31:0] _GEN_55; // @[Datapath.scala 176:29:@362.6]
  reg [3:0] destination; // @[Datapath.scala 185:24:@372.4]
  reg [31:0] _RAND_25;
  wire  _T_216; // @[Datapath.scala 192:20:@374.4]
  wire [31:0] _GEN_57; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_58; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_59; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_60; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_61; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_62; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_63; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_64; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_65; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_66; // @[Datapath.scala 193:23:@378.6]
  wire [31:0] _GEN_67; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_68; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_69; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_70; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_71; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_72; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_73; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_74; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_75; // @[Datapath.scala 192:34:@375.4]
  wire [31:0] _GEN_76; // @[Datapath.scala 192:34:@375.4]
  reg [3:0] prevWB; // @[Datapath.scala 209:23:@390.4]
  reg [31:0] _RAND_26;
  wire [31:0] _GEN_78; // @[Datapath.scala 210:14:@394.4]
  wire [31:0] _GEN_79; // @[Datapath.scala 210:14:@394.4]
  wire [31:0] _GEN_80; // @[Datapath.scala 210:14:@394.4]
  wire [31:0] _GEN_81; // @[Datapath.scala 210:14:@394.4]
  wire [31:0] _GEN_82; // @[Datapath.scala 210:14:@394.4]
  wire [31:0] _GEN_83; // @[Datapath.scala 210:14:@394.4]
  wire [31:0] _GEN_84; // @[Datapath.scala 210:14:@394.4]
  wire [31:0] _GEN_85; // @[Datapath.scala 210:14:@394.4]
  InstructionMemory iMem ( // @[Datapath.scala 38:20:@223.4]
    .io_rdAddr(iMem_io_rdAddr),
    .io_rdData(iMem_io_rdData)
  );
  DataMemory dMem ( // @[Datapath.scala 42:20:@227.4]
    .clock(dMem_clock),
    .reset(dMem_reset),
    .io_rdAddr(dMem_io_rdAddr),
    .io_wrAddr(dMem_io_wrAddr),
    .io_wrData(dMem_io_wrData),
    .io_rdData(dMem_io_rdData),
    .io_wr(dMem_io_wr),
    .io_led(dMem_io_led)
  );
  ALU alu ( // @[Datapath.scala 53:19:@247.4]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_opcode(alu_io_opcode),
    .io_out(alu_io_out)
  );
  assign _T_145 = pc + 8'h1; // @[Datapath.scala 80:12:@262.4]
  assign _T_146 = pc + 8'h1; // @[Datapath.scala 80:12:@263.4]
  assign _T_147 = instruction[4]; // @[Datapath.scala 89:31:@267.4]
  assign _T_148 = instruction[0]; // @[Datapath.scala 90:29:@269.4]
  assign _T_150 = instruction[15:12]; // @[Datapath.scala 91:30:@272.4]
  assign _GEN_1 = 4'h1 == _T_150 ? rMem_1 : rMem_0; // @[Datapath.scala 91:11:@273.4]
  assign _GEN_2 = 4'h2 == _T_150 ? rMem_2 : _GEN_1; // @[Datapath.scala 91:11:@273.4]
  assign _GEN_3 = 4'h3 == _T_150 ? rMem_3 : _GEN_2; // @[Datapath.scala 91:11:@273.4]
  assign _GEN_4 = 4'h4 == _T_150 ? rMem_4 : _GEN_3; // @[Datapath.scala 91:11:@273.4]
  assign _GEN_5 = 4'h5 == _T_150 ? rMem_5 : _GEN_4; // @[Datapath.scala 91:11:@273.4]
  assign _GEN_6 = 4'h6 == _T_150 ? rMem_6 : _GEN_5; // @[Datapath.scala 91:11:@273.4]
  assign _GEN_7 = 4'h7 == _T_150 ? rMem_7 : _GEN_6; // @[Datapath.scala 91:11:@273.4]
  assign _GEN_8 = 4'h8 == _T_150 ? rMem_8 : _GEN_7; // @[Datapath.scala 91:11:@273.4]
  assign _T_156 = _T_147 == 1'h0; // @[Datapath.scala 93:23:@275.4]
  assign _T_157 = instruction[3:0]; // @[Datapath.scala 94:29:@277.6]
  assign _T_158 = instruction[11:8]; // @[Datapath.scala 95:27:@279.6]
  assign _T_159 = instruction[7:5]; // @[Datapath.scala 97:23:@281.6]
  assign _T_161 = 3'h0 == _T_159; // @[Conditional.scala 37:30:@282.6]
  assign _T_162 = instruction[19:16]; // @[Datapath.scala 100:37:@284.8]
  assign _GEN_11 = 4'h1 == _T_162 ? rMem_1 : rMem_0; // @[Datapath.scala 100:18:@285.8]
  assign _GEN_12 = 4'h2 == _T_162 ? rMem_2 : _GEN_11; // @[Datapath.scala 100:18:@285.8]
  assign _GEN_13 = 4'h3 == _T_162 ? rMem_3 : _GEN_12; // @[Datapath.scala 100:18:@285.8]
  assign _GEN_14 = 4'h4 == _T_162 ? rMem_4 : _GEN_13; // @[Datapath.scala 100:18:@285.8]
  assign _GEN_15 = 4'h5 == _T_162 ? rMem_5 : _GEN_14; // @[Datapath.scala 100:18:@285.8]
  assign _GEN_16 = 4'h6 == _T_162 ? rMem_6 : _GEN_15; // @[Datapath.scala 100:18:@285.8]
  assign _GEN_17 = 4'h7 == _T_162 ? rMem_7 : _GEN_16; // @[Datapath.scala 100:18:@285.8]
  assign _GEN_18 = 4'h8 == _T_162 ? rMem_8 : _GEN_17; // @[Datapath.scala 100:18:@285.8]
  assign _GEN_19 = 4'h9 == _T_162 ? rMem_9 : _GEN_18; // @[Datapath.scala 100:18:@285.8]
  assign _T_169 = 3'h1 == _T_159; // @[Conditional.scala 37:30:@290.8]
  assign _T_172 = instruction[31:16]; // @[Datapath.scala 107:48:@293.10]
  assign _T_173 = {16'h0,_T_172}; // @[Cat.scala 30:58:@294.10]
  assign _T_176 = 3'h2 == _T_159; // @[Conditional.scala 37:30:@299.10]
  assign _GEN_20 = _T_176 ? 32'h0 : bVal; // @[Conditional.scala 39:67:@300.10]
  assign _GEN_21 = _T_176 ? 32'h0 : immVal; // @[Conditional.scala 39:67:@300.10]
  assign _GEN_22 = _T_176 ? 1'h0 : bSelect; // @[Conditional.scala 39:67:@300.10]
  assign _GEN_23 = _T_169 ? 32'h0 : _GEN_20; // @[Conditional.scala 39:67:@291.8]
  assign _GEN_24 = _T_169 ? _T_173 : _GEN_21; // @[Conditional.scala 39:67:@291.8]
  assign _GEN_25 = _T_169 ? 1'h0 : _GEN_22; // @[Conditional.scala 39:67:@291.8]
  assign _GEN_26 = _T_161 ? _GEN_19 : _GEN_23; // @[Conditional.scala 40:58:@283.6]
  assign _GEN_27 = _T_161 ? 32'h0 : _GEN_24; // @[Conditional.scala 40:58:@283.6]
  assign _GEN_28 = _T_161 ? 1'h1 : _GEN_25; // @[Conditional.scala 40:58:@283.6]
  assign _T_182 = instruction[27:20]; // @[Datapath.scala 119:44:@308.6]
  assign _T_183 = {24'h0,_T_182}; // @[Cat.scala 30:58:@309.6]
  assign _T_187 = _T_148 == 1'h0; // @[Datapath.scala 122:25:@313.6]
  assign _GEN_39 = _T_187 ? _T_158 : 4'h0; // @[Datapath.scala 122:39:@314.6]
  assign _GEN_40 = _T_187 ? 32'h0 : _GEN_19; // @[Datapath.scala 122:39:@314.6]
  assign _T_200 = resultReg[7:0]; // @[Datapath.scala 153:27:@338.6]
  assign _GEN_47 = isLoadReg1 ? 1'h0 : 1'h1; // @[Datapath.scala 154:32:@340.6]
  assign _GEN_48 = isLoadReg1 ? _T_200 : 8'h0; // @[Datapath.scala 154:32:@340.6]
  assign _GEN_49 = isLoadReg1 ? 8'h0 : _T_200; // @[Datapath.scala 154:32:@340.6]
  assign _GEN_50 = isLoadReg1 ? 32'h0 : bVal; // @[Datapath.scala 154:32:@340.6]
  assign _GEN_55 = isLoad ? dMem_io_rdData : 32'h0; // @[Datapath.scala 176:29:@362.6]
  assign _T_216 = destination != 4'h0; // @[Datapath.scala 192:20:@374.4]
  assign _GEN_57 = 4'h0 == destination ? data : rMem_0; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_58 = 4'h1 == destination ? data : rMem_1; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_59 = 4'h2 == destination ? data : rMem_2; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_60 = 4'h3 == destination ? data : rMem_3; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_61 = 4'h4 == destination ? data : rMem_4; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_62 = 4'h5 == destination ? data : rMem_5; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_63 = 4'h6 == destination ? data : rMem_6; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_64 = 4'h7 == destination ? data : rMem_7; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_65 = 4'h8 == destination ? data : rMem_8; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_66 = 4'h9 == destination ? data : rMem_9; // @[Datapath.scala 193:23:@378.6]
  assign _GEN_67 = _T_216 ? _GEN_57 : rMem_0; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_68 = _T_216 ? _GEN_58 : rMem_1; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_69 = _T_216 ? _GEN_59 : rMem_2; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_70 = _T_216 ? _GEN_60 : rMem_3; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_71 = _T_216 ? _GEN_61 : rMem_4; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_72 = _T_216 ? _GEN_62 : rMem_5; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_73 = _T_216 ? _GEN_63 : rMem_6; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_74 = _T_216 ? _GEN_64 : rMem_7; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_75 = _T_216 ? _GEN_65 : rMem_8; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_76 = _T_216 ? _GEN_66 : rMem_9; // @[Datapath.scala 192:34:@375.4]
  assign _GEN_78 = 4'h1 == prevWB ? rMem_1 : rMem_0; // @[Datapath.scala 210:14:@394.4]
  assign _GEN_79 = 4'h2 == prevWB ? rMem_2 : _GEN_78; // @[Datapath.scala 210:14:@394.4]
  assign _GEN_80 = 4'h3 == prevWB ? rMem_3 : _GEN_79; // @[Datapath.scala 210:14:@394.4]
  assign _GEN_81 = 4'h4 == prevWB ? rMem_4 : _GEN_80; // @[Datapath.scala 210:14:@394.4]
  assign _GEN_82 = 4'h5 == prevWB ? rMem_5 : _GEN_81; // @[Datapath.scala 210:14:@394.4]
  assign _GEN_83 = 4'h6 == prevWB ? rMem_6 : _GEN_82; // @[Datapath.scala 210:14:@394.4]
  assign _GEN_84 = 4'h7 == prevWB ? rMem_7 : _GEN_83; // @[Datapath.scala 210:14:@394.4]
  assign _GEN_85 = 4'h8 == prevWB ? rMem_8 : _GEN_84; // @[Datapath.scala 210:14:@394.4]
  assign io_inst = instruction; // @[Datapath.scala 199:11:@380.4]
  assign io_opcode = {{1'd0}, opcode}; // @[Datapath.scala 200:13:@381.4]
  assign io_memSelect = memSelectReg1; // @[Datapath.scala 201:16:@382.4]
  assign io_bSelect = bSelect; // @[Datapath.scala 202:14:@383.4]
  assign io_isLoad = isLoadReg1; // @[Datapath.scala 203:13:@384.4]
  assign io_regA = aVal[3:0]; // @[Datapath.scala 204:11:@385.4]
  assign io_regB = bVal[3:0]; // @[Datapath.scala 205:11:@386.4]
  assign io_immediate = immVal[15:0]; // @[Datapath.scala 206:16:@387.4]
  assign io_result = resultReg; // @[Datapath.scala 208:13:@389.4]
  assign io_destReg = wbrReg1; // @[Datapath.scala 207:14:@388.4]
  assign io_WBvalue = 4'h9 == prevWB ? rMem_9 : _GEN_85; // @[Datapath.scala 210:14:@394.4]
  assign io_reg0 = rMem_0; // @[Datapath.scala 213:11:@395.4]
  assign io_reg1 = rMem_1; // @[Datapath.scala 214:11:@396.4]
  assign io_reg2 = rMem_2; // @[Datapath.scala 215:11:@397.4]
  assign io_reg3 = rMem_3; // @[Datapath.scala 216:11:@398.4]
  assign io_reg4 = rMem_4; // @[Datapath.scala 217:11:@399.4]
  assign io_memData = data; // @[Datapath.scala 220:14:@400.4]
  assign io_led = dMem_io_led; // @[Datapath.scala 47:10:@234.4]
  assign iMem_io_rdAddr = pc; // @[Datapath.scala 82:18:@265.4]
  assign dMem_clock = clock; // @[:@228.4]
  assign dMem_reset = reset; // @[:@229.4]
  assign dMem_io_rdAddr = memSelectReg1 ? _GEN_48 : 8'h0; // @[Datapath.scala 45:18:@232.4 Datapath.scala 156:22:@342.8]
  assign dMem_io_wrAddr = memSelectReg1 ? _GEN_49 : 8'h0; // @[Datapath.scala 43:18:@230.4 Datapath.scala 159:22:@346.8]
  assign dMem_io_wrData = memSelectReg1 ? _GEN_50 : 32'h0; // @[Datapath.scala 44:18:@231.4 Datapath.scala 160:22:@347.8]
  assign dMem_io_wr = memSelectReg1 ? _GEN_47 : 1'h0; // @[Datapath.scala 46:14:@233.4 Datapath.scala 155:18:@341.8 Datapath.scala 158:18:@345.8 Datapath.scala 163:16:@351.6]
  assign alu_io_a = aVal; // @[Datapath.scala 141:12:@326.4]
  assign alu_io_b = bSelect ? bVal : immVal; // @[Datapath.scala 142:12:@327.4 Datapath.scala 144:14:@330.6 Datapath.scala 147:14:@333.6]
  assign alu_io_opcode = {{1'd0}, opcode}; // @[Datapath.scala 140:17:@325.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rMem_0 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  rMem_1 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  rMem_2 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  rMem_3 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  rMem_4 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  rMem_5 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  rMem_6 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  rMem_7 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  rMem_8 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  rMem_9 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  instruction = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  opcode = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  memSelectReg1 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  bSelect = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  isLoadReg1 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  aVal = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  bVal = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  immVal = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  wbrReg1 = _RAND_18[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  resultReg = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  data = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  pc = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  memSelect = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  isLoad = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  wbrReg2 = _RAND_24[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  destination = _RAND_25[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  prevWB = _RAND_26[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      rMem_0 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h0 == destination) begin
          rMem_0 <= data;
        end
      end
    end
    if (reset) begin
      rMem_1 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h1 == destination) begin
          rMem_1 <= data;
        end
      end
    end
    if (reset) begin
      rMem_2 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h2 == destination) begin
          rMem_2 <= data;
        end
      end
    end
    if (reset) begin
      rMem_3 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h3 == destination) begin
          rMem_3 <= data;
        end
      end
    end
    if (reset) begin
      rMem_4 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h4 == destination) begin
          rMem_4 <= data;
        end
      end
    end
    if (reset) begin
      rMem_5 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h5 == destination) begin
          rMem_5 <= data;
        end
      end
    end
    if (reset) begin
      rMem_6 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h6 == destination) begin
          rMem_6 <= data;
        end
      end
    end
    if (reset) begin
      rMem_7 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h7 == destination) begin
          rMem_7 <= data;
        end
      end
    end
    if (reset) begin
      rMem_8 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h8 == destination) begin
          rMem_8 <= data;
        end
      end
    end
    if (reset) begin
      rMem_9 <= 32'h0;
    end else begin
      if (_T_216) begin
        if (4'h9 == destination) begin
          rMem_9 <= data;
        end
      end
    end
    instruction <= iMem_io_rdData;
    if (_T_156) begin
      opcode <= _T_157;
    end else begin
      opcode <= 4'h4;
    end
    memSelectReg1 <= instruction[4];
    if (_T_156) begin
      if (_T_161) begin
        bSelect <= 1'h1;
      end else begin
        if (_T_169) begin
          bSelect <= 1'h0;
        end else begin
          if (_T_176) begin
            bSelect <= 1'h0;
          end
        end
      end
    end else begin
      bSelect <= 1'h0;
    end
    isLoadReg1 <= ~ _T_148;
    if (4'h9 == _T_150) begin
      aVal <= rMem_9;
    end else begin
      if (4'h8 == _T_150) begin
        aVal <= rMem_8;
      end else begin
        if (4'h7 == _T_150) begin
          aVal <= rMem_7;
        end else begin
          if (4'h6 == _T_150) begin
            aVal <= rMem_6;
          end else begin
            if (4'h5 == _T_150) begin
              aVal <= rMem_5;
            end else begin
              if (4'h4 == _T_150) begin
                aVal <= rMem_4;
              end else begin
                if (4'h3 == _T_150) begin
                  aVal <= rMem_3;
                end else begin
                  if (4'h2 == _T_150) begin
                    aVal <= rMem_2;
                  end else begin
                    if (4'h1 == _T_150) begin
                      aVal <= rMem_1;
                    end else begin
                      aVal <= rMem_0;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_156) begin
      if (_T_161) begin
        if (4'h9 == _T_162) begin
          bVal <= rMem_9;
        end else begin
          if (4'h8 == _T_162) begin
            bVal <= rMem_8;
          end else begin
            if (4'h7 == _T_162) begin
              bVal <= rMem_7;
            end else begin
              if (4'h6 == _T_162) begin
                bVal <= rMem_6;
              end else begin
                if (4'h5 == _T_162) begin
                  bVal <= rMem_5;
                end else begin
                  if (4'h4 == _T_162) begin
                    bVal <= rMem_4;
                  end else begin
                    if (4'h3 == _T_162) begin
                      bVal <= rMem_3;
                    end else begin
                      if (4'h2 == _T_162) begin
                        bVal <= rMem_2;
                      end else begin
                        if (4'h1 == _T_162) begin
                          bVal <= rMem_1;
                        end else begin
                          bVal <= rMem_0;
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end else begin
        if (_T_169) begin
          bVal <= 32'h0;
        end else begin
          if (_T_176) begin
            bVal <= 32'h0;
          end
        end
      end
    end else begin
      if (_T_187) begin
        bVal <= 32'h0;
      end else begin
        if (4'h9 == _T_162) begin
          bVal <= rMem_9;
        end else begin
          if (4'h8 == _T_162) begin
            bVal <= rMem_8;
          end else begin
            if (4'h7 == _T_162) begin
              bVal <= rMem_7;
            end else begin
              if (4'h6 == _T_162) begin
                bVal <= rMem_6;
              end else begin
                if (4'h5 == _T_162) begin
                  bVal <= rMem_5;
                end else begin
                  if (4'h4 == _T_162) begin
                    bVal <= rMem_4;
                  end else begin
                    if (4'h3 == _T_162) begin
                      bVal <= rMem_3;
                    end else begin
                      if (4'h2 == _T_162) begin
                        bVal <= rMem_2;
                      end else begin
                        if (4'h1 == _T_162) begin
                          bVal <= rMem_1;
                        end else begin
                          bVal <= rMem_0;
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_156) begin
      if (_T_161) begin
        immVal <= 32'h0;
      end else begin
        if (_T_169) begin
          immVal <= _T_173;
        end else begin
          if (_T_176) begin
            immVal <= 32'h0;
          end
        end
      end
    end else begin
      immVal <= _T_183;
    end
    if (_T_156) begin
      wbrReg1 <= _T_158;
    end else begin
      if (_T_187) begin
        wbrReg1 <= _T_158;
      end else begin
        wbrReg1 <= 4'h0;
      end
    end
    resultReg <= alu_io_out;
    if (memSelect) begin
      if (isLoad) begin
        data <= dMem_io_rdData;
      end else begin
        data <= 32'h0;
      end
    end else begin
      data <= resultReg;
    end
    if (reset) begin
      pc <= 8'h0;
    end else begin
      pc <= _T_146;
    end
    memSelect <= memSelectReg1;
    isLoad <= isLoadReg1;
    wbrReg2 <= wbrReg1;
    destination <= wbrReg2;
    prevWB <= destination;
  end
endmodule
