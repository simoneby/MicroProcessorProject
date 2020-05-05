module DataMemory( // @[:@26.2]
  input         clock, // @[:@27.4]
  input  [7:0]  io_rdAddr, // @[:@29.4]
  input  [7:0]  io_wrAddr, // @[:@29.4]
  input  [7:0]  io_wrData, // @[:@29.4]
  output [31:0] io_rdData, // @[:@29.4]
  input         io_rd, // @[:@29.4]
  input         io_wr // @[:@29.4]
);
  reg [31:0] mem [0:255]; // @[DataMemory.scala 17:24:@31.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_20_data; // @[DataMemory.scala 17:24:@31.4]
  wire [7:0] mem__T_20_addr; // @[DataMemory.scala 17:24:@31.4]
  wire [31:0] mem__T_21_data; // @[DataMemory.scala 17:24:@31.4]
  wire [7:0] mem__T_21_addr; // @[DataMemory.scala 17:24:@31.4]
  wire  mem__T_21_mask; // @[DataMemory.scala 17:24:@31.4]
  wire  mem__T_21_en; // @[DataMemory.scala 17:24:@31.4]
  wire  _GEN_2; // @[DataMemory.scala 21:15:@33.4]
  reg [7:0] mem__T_20_addr_pipe_0;
  reg [31:0] _RAND_1;
  assign mem__T_20_addr = mem__T_20_addr_pipe_0;
  assign mem__T_20_data = mem[mem__T_20_addr]; // @[DataMemory.scala 17:24:@31.4]
  assign mem__T_21_data = {{24'd0}, io_wrData};
  assign mem__T_21_addr = io_wrAddr;
  assign mem__T_21_mask = 1'h1;
  assign mem__T_21_en = io_wr;
  assign _GEN_2 = io_rd; // @[DataMemory.scala 21:15:@33.4]
  assign io_rdData = io_rd ? mem__T_20_data : 32'h0; // @[DataMemory.scala 19:13:@32.4 DataMemory.scala 22:15:@35.6]
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
  mem__T_20_addr_pipe_0 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_21_en & mem__T_21_mask) begin
      mem[mem__T_21_addr] <= mem__T_21_data; // @[DataMemory.scala 17:24:@31.4]
    end
    if (_GEN_2) begin
      mem__T_20_addr_pipe_0 <= io_rdAddr;
    end
  end
endmodule
module ALU( // @[:@42.2]
  input  [31:0] io_a, // @[:@45.4]
  input  [31:0] io_b, // @[:@45.4]
  input  [4:0]  io_opcode, // @[:@45.4]
  output [31:0] io_out // @[:@45.4]
);
  wire  _T_15; // @[Conditional.scala 37:30:@48.4]
  wire  _T_17; // @[Conditional.scala 37:30:@53.6]
  wire [32:0] _T_19; // @[ALU.scala 22:30:@55.8]
  wire [31:0] _T_20; // @[ALU.scala 22:30:@56.8]
  wire  _T_22; // @[Conditional.scala 37:30:@60.8]
  wire [32:0] _T_24; // @[ALU.scala 23:30:@62.10]
  wire [32:0] _T_25; // @[ALU.scala 23:30:@63.10]
  wire [31:0] _T_26; // @[ALU.scala 23:30:@64.10]
  wire  _T_28; // @[Conditional.scala 37:30:@68.10]
  wire [32:0] _T_29; // @[ALU.scala 24:30:@70.12]
  wire [31:0] _T_30; // @[ALU.scala 24:30:@71.12]
  wire  _T_32; // @[Conditional.scala 37:30:@75.12]
  wire [32:0] _T_33; // @[ALU.scala 25:30:@77.14]
  wire [32:0] _T_34; // @[ALU.scala 25:30:@78.14]
  wire [31:0] _T_35; // @[ALU.scala 25:30:@79.14]
  wire  _T_37; // @[Conditional.scala 37:30:@83.14]
  wire [31:0] _T_38; // @[ALU.scala 26:25:@85.16]
  wire  _T_40; // @[Conditional.scala 37:30:@89.16]
  wire [31:0] _T_41; // @[ALU.scala 27:29:@91.18]
  wire  _T_43; // @[Conditional.scala 37:30:@95.18]
  wire [31:0] _T_44; // @[ALU.scala 28:29:@97.20]
  wire  _T_46; // @[Conditional.scala 37:30:@101.20]
  wire [31:0] _T_47; // @[ALU.scala 29:29:@103.22]
  wire [31:0] _GEN_0; // @[Conditional.scala 39:67:@102.20]
  wire [31:0] _GEN_1; // @[Conditional.scala 39:67:@96.18]
  wire [31:0] _GEN_2; // @[Conditional.scala 39:67:@90.16]
  wire [31:0] _GEN_3; // @[Conditional.scala 39:67:@84.14]
  wire [31:0] _GEN_4; // @[Conditional.scala 39:67:@76.12]
  wire [31:0] _GEN_5; // @[Conditional.scala 39:67:@69.10]
  wire [31:0] _GEN_6; // @[Conditional.scala 39:67:@61.8]
  wire [31:0] _GEN_7; // @[Conditional.scala 39:67:@54.6]
  assign _T_15 = 5'h0 == io_opcode; // @[Conditional.scala 37:30:@48.4]
  assign _T_17 = 5'h1 == io_opcode; // @[Conditional.scala 37:30:@53.6]
  assign _T_19 = io_a + 32'h1; // @[ALU.scala 22:30:@55.8]
  assign _T_20 = io_a + 32'h1; // @[ALU.scala 22:30:@56.8]
  assign _T_22 = 5'h2 == io_opcode; // @[Conditional.scala 37:30:@60.8]
  assign _T_24 = io_a - 32'h1; // @[ALU.scala 23:30:@62.10]
  assign _T_25 = $unsigned(_T_24); // @[ALU.scala 23:30:@63.10]
  assign _T_26 = _T_25[31:0]; // @[ALU.scala 23:30:@64.10]
  assign _T_28 = 5'h3 == io_opcode; // @[Conditional.scala 37:30:@68.10]
  assign _T_29 = io_a + io_b; // @[ALU.scala 24:30:@70.12]
  assign _T_30 = io_a + io_b; // @[ALU.scala 24:30:@71.12]
  assign _T_32 = 5'h4 == io_opcode; // @[Conditional.scala 37:30:@75.12]
  assign _T_33 = io_a - io_b; // @[ALU.scala 25:30:@77.14]
  assign _T_34 = $unsigned(_T_33); // @[ALU.scala 25:30:@78.14]
  assign _T_35 = _T_34[31:0]; // @[ALU.scala 25:30:@79.14]
  assign _T_37 = 5'h5 == io_opcode; // @[Conditional.scala 37:30:@83.14]
  assign _T_38 = ~ io_a; // @[ALU.scala 26:25:@85.16]
  assign _T_40 = 5'h6 == io_opcode; // @[Conditional.scala 37:30:@89.16]
  assign _T_41 = io_a & io_b; // @[ALU.scala 27:29:@91.18]
  assign _T_43 = 5'h7 == io_opcode; // @[Conditional.scala 37:30:@95.18]
  assign _T_44 = io_a | io_b; // @[ALU.scala 28:29:@97.20]
  assign _T_46 = 5'h8 == io_opcode; // @[Conditional.scala 37:30:@101.20]
  assign _T_47 = io_a ^ io_b; // @[ALU.scala 29:29:@103.22]
  assign _GEN_0 = _T_46 ? _T_47 : 32'h0; // @[Conditional.scala 39:67:@102.20]
  assign _GEN_1 = _T_43 ? _T_44 : _GEN_0; // @[Conditional.scala 39:67:@96.18]
  assign _GEN_2 = _T_40 ? _T_41 : _GEN_1; // @[Conditional.scala 39:67:@90.16]
  assign _GEN_3 = _T_37 ? _T_38 : _GEN_2; // @[Conditional.scala 39:67:@84.14]
  assign _GEN_4 = _T_32 ? _T_35 : _GEN_3; // @[Conditional.scala 39:67:@76.12]
  assign _GEN_5 = _T_28 ? _T_30 : _GEN_4; // @[Conditional.scala 39:67:@69.10]
  assign _GEN_6 = _T_22 ? _T_26 : _GEN_5; // @[Conditional.scala 39:67:@61.8]
  assign _GEN_7 = _T_17 ? _T_20 : _GEN_6; // @[Conditional.scala 39:67:@54.6]
  assign io_out = _T_15 ? io_a : _GEN_7; // @[ALU.scala 18:10:@47.4 ALU.scala 21:22:@50.6 ALU.scala 22:22:@57.8 ALU.scala 23:22:@65.10 ALU.scala 24:22:@72.12 ALU.scala 25:22:@80.14 ALU.scala 26:22:@86.16 ALU.scala 27:21:@92.18 ALU.scala 28:21:@98.20 ALU.scala 29:21:@104.22]
endmodule
module Datapath( // @[:@107.2]
  input         clock, // @[:@108.4]
  input         reset, // @[:@109.4]
  input  [31:0] io_inst, // @[:@110.4]
  output [4:0]  io_opcode, // @[:@110.4]
  output [2:0]  io_select, // @[:@110.4]
  output [3:0]  io_regA, // @[:@110.4]
  output [3:0]  io_regB, // @[:@110.4]
  output [15:0] io_immediate, // @[:@110.4]
  output [3:0]  io_destReg, // @[:@110.4]
  output [31:0] io_regAvalue, // @[:@110.4]
  output [31:0] io_result // @[:@110.4]
);
  wire  dMem_clock; // @[Datapath.scala 58:20:@126.4]
  wire [7:0] dMem_io_rdAddr; // @[Datapath.scala 58:20:@126.4]
  wire [7:0] dMem_io_wrAddr; // @[Datapath.scala 58:20:@126.4]
  wire [7:0] dMem_io_wrData; // @[Datapath.scala 58:20:@126.4]
  wire [31:0] dMem_io_rdData; // @[Datapath.scala 58:20:@126.4]
  wire  dMem_io_rd; // @[Datapath.scala 58:20:@126.4]
  wire  dMem_io_wr; // @[Datapath.scala 58:20:@126.4]
  wire [31:0] alu_io_a; // @[Datapath.scala 65:19:@130.4]
  wire [31:0] alu_io_b; // @[Datapath.scala 65:19:@130.4]
  wire [4:0] alu_io_opcode; // @[Datapath.scala 65:19:@130.4]
  wire [31:0] alu_io_out; // @[Datapath.scala 65:19:@130.4]
  reg [3:0] opcode; // @[Datapath.scala 36:22:@113.4]
  reg [31:0] _RAND_0;
  reg  memSelectReg1; // @[Datapath.scala 37:26:@114.4]
  reg [31:0] _RAND_1;
  reg  bSelect; // @[Datapath.scala 38:23:@115.4]
  reg [31:0] _RAND_2;
  reg  isLoadReg1; // @[Datapath.scala 39:23:@116.4]
  reg [31:0] _RAND_3;
  reg [31:0] aVal; // @[Datapath.scala 40:20:@117.4]
  reg [31:0] _RAND_4;
  reg [31:0] bVal; // @[Datapath.scala 41:21:@118.4]
  reg [31:0] _RAND_5;
  reg [31:0] immVal; // @[Datapath.scala 42:22:@119.4]
  reg [31:0] _RAND_6;
  reg [3:0] wbrReg1; // @[Datapath.scala 43:20:@120.4]
  reg [31:0] _RAND_7;
  reg [31:0] result; // @[Datapath.scala 46:22:@121.4]
  reg [31:0] _RAND_8;
  reg [31:0] data; // @[Datapath.scala 49:20:@122.4]
  reg [31:0] _RAND_9;
  reg [31:0] rMem_0; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_10;
  reg [31:0] rMem_1; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_11;
  reg [31:0] rMem_2; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_12;
  reg [31:0] rMem_3; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_13;
  reg [31:0] rMem_4; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_14;
  reg [31:0] rMem_5; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_15;
  reg [31:0] rMem_6; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_16;
  reg [31:0] rMem_7; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_17;
  reg [31:0] rMem_8; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_18;
  reg [31:0] rMem_9; // @[Datapath.scala 62:17:@129.4]
  reg [31:0] _RAND_19;
  wire [3:0] _T_54; // @[Datapath.scala 82:27:@139.4]
  wire  _T_56; // @[Datapath.scala 84:29:@143.4]
  wire [3:0] _T_58; // @[Datapath.scala 85:30:@146.4]
  wire [31:0] _GEN_1; // @[Datapath.scala 85:11:@147.4]
  wire [31:0] _GEN_2; // @[Datapath.scala 85:11:@147.4]
  wire [31:0] _GEN_3; // @[Datapath.scala 85:11:@147.4]
  wire [31:0] _GEN_4; // @[Datapath.scala 85:11:@147.4]
  wire [31:0] _GEN_5; // @[Datapath.scala 85:11:@147.4]
  wire [31:0] _GEN_6; // @[Datapath.scala 85:11:@147.4]
  wire [31:0] _GEN_7; // @[Datapath.scala 85:11:@147.4]
  wire [31:0] _GEN_8; // @[Datapath.scala 85:11:@147.4]
  wire [2:0] _T_64; // @[Datapath.scala 93:113:@154.4]
  wire [3:0] _T_65; // @[Datapath.scala 94:114:@156.4]
  wire  _T_67; // @[Datapath.scala 99:22:@159.4]
  wire  _T_71; // @[Conditional.scala 37:30:@164.6]
  wire [3:0] _T_72; // @[Datapath.scala 105:37:@166.8]
  wire [31:0] _GEN_11; // @[Datapath.scala 105:18:@167.8]
  wire [31:0] _GEN_12; // @[Datapath.scala 105:18:@167.8]
  wire [31:0] _GEN_13; // @[Datapath.scala 105:18:@167.8]
  wire [31:0] _GEN_14; // @[Datapath.scala 105:18:@167.8]
  wire [31:0] _GEN_15; // @[Datapath.scala 105:18:@167.8]
  wire [31:0] _GEN_16; // @[Datapath.scala 105:18:@167.8]
  wire [31:0] _GEN_17; // @[Datapath.scala 105:18:@167.8]
  wire [31:0] _GEN_18; // @[Datapath.scala 105:18:@167.8]
  wire [31:0] _GEN_19; // @[Datapath.scala 105:18:@167.8]
  wire  _T_78; // @[Conditional.scala 37:30:@174.8]
  wire [15:0] _T_81; // @[Datapath.scala 113:48:@177.10]
  wire [31:0] _T_82; // @[Cat.scala 30:58:@178.10]
  wire  _T_85; // @[Conditional.scala 37:30:@184.10]
  wire [31:0] _GEN_20; // @[Conditional.scala 39:67:@185.10]
  wire [31:0] _GEN_21; // @[Conditional.scala 39:67:@185.10]
  wire  _GEN_22; // @[Conditional.scala 39:67:@185.10]
  wire [31:0] _GEN_23; // @[Conditional.scala 39:67:@175.8]
  wire [31:0] _GEN_24; // @[Conditional.scala 39:67:@175.8]
  wire  _GEN_25; // @[Conditional.scala 39:67:@175.8]
  wire [31:0] _GEN_26; // @[Conditional.scala 39:67:@175.8]
  wire [31:0] _GEN_27; // @[Conditional.scala 40:58:@165.6]
  wire [31:0] _GEN_28; // @[Conditional.scala 40:58:@165.6]
  wire  _GEN_29; // @[Conditional.scala 40:58:@165.6]
  wire [3:0] _GEN_30; // @[Conditional.scala 40:58:@165.6]
  wire [31:0] _GEN_31; // @[Conditional.scala 40:58:@165.6]
  wire [7:0] _T_90; // @[Datapath.scala 125:44:@192.6]
  wire [31:0] _T_91; // @[Cat.scala 30:58:@193.6]
  wire [3:0] _GEN_42; // @[Datapath.scala 128:22:@196.6]
  wire [31:0] _GEN_43; // @[Datapath.scala 128:22:@196.6]
  wire [31:0] _GEN_49; // @[Datapath.scala 99:31:@160.4]
  reg  memSelect; // @[Datapath.scala 158:30:@219.4]
  reg [31:0] _RAND_20;
  reg  isLoad; // @[Datapath.scala 159:27:@221.4]
  reg [31:0] _RAND_21;
  reg [31:0] bValReg2; // @[Datapath.scala 160:25:@223.4]
  reg [31:0] _RAND_22;
  reg [3:0] wbrReg2; // @[Datapath.scala 161:24:@225.4]
  reg [31:0] _RAND_23;
  wire  _GEN_51; // @[Datapath.scala 171:18:@228.6]
  wire [31:0] _GEN_53; // @[Datapath.scala 171:18:@228.6]
  wire [31:0] _GEN_54; // @[Datapath.scala 171:18:@228.6]
  wire [31:0] _GEN_55; // @[Datapath.scala 171:18:@228.6]
  wire [31:0] _GEN_56; // @[Datapath.scala 171:18:@228.6]
  wire [31:0] _GEN_59; // @[Datapath.scala 170:19:@227.4]
  wire [31:0] _GEN_60; // @[Datapath.scala 170:19:@227.4]
  wire [31:0] _GEN_61; // @[Datapath.scala 170:19:@227.4]
  reg [3:0] destination; // @[Datapath.scala 196:24:@253.4]
  reg [31:0] _RAND_24;
  wire  _T_120; // @[Datapath.scala 203:20:@255.4]
  wire [31:0] _GEN_63; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_64; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_65; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_66; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_67; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_68; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_69; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_70; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_71; // @[Datapath.scala 204:23:@259.6]
  wire [31:0] _GEN_72; // @[Datapath.scala 204:23:@259.6]
  DataMemory dMem ( // @[Datapath.scala 58:20:@126.4]
    .clock(dMem_clock),
    .io_rdAddr(dMem_io_rdAddr),
    .io_wrAddr(dMem_io_wrAddr),
    .io_wrData(dMem_io_wrData),
    .io_rdData(dMem_io_rdData),
    .io_rd(dMem_io_rd),
    .io_wr(dMem_io_wr)
  );
  ALU alu ( // @[Datapath.scala 65:19:@130.4]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_opcode(alu_io_opcode),
    .io_out(alu_io_out)
  );
  assign _T_54 = io_inst[4:1]; // @[Datapath.scala 82:27:@139.4]
  assign _T_56 = io_inst[4]; // @[Datapath.scala 84:29:@143.4]
  assign _T_58 = io_inst[15:12]; // @[Datapath.scala 85:30:@146.4]
  assign _GEN_1 = 4'h1 == _T_58 ? rMem_1 : rMem_0; // @[Datapath.scala 85:11:@147.4]
  assign _GEN_2 = 4'h2 == _T_58 ? rMem_2 : _GEN_1; // @[Datapath.scala 85:11:@147.4]
  assign _GEN_3 = 4'h3 == _T_58 ? rMem_3 : _GEN_2; // @[Datapath.scala 85:11:@147.4]
  assign _GEN_4 = 4'h4 == _T_58 ? rMem_4 : _GEN_3; // @[Datapath.scala 85:11:@147.4]
  assign _GEN_5 = 4'h5 == _T_58 ? rMem_5 : _GEN_4; // @[Datapath.scala 85:11:@147.4]
  assign _GEN_6 = 4'h6 == _T_58 ? rMem_6 : _GEN_5; // @[Datapath.scala 85:11:@147.4]
  assign _GEN_7 = 4'h7 == _T_58 ? rMem_7 : _GEN_6; // @[Datapath.scala 85:11:@147.4]
  assign _GEN_8 = 4'h8 == _T_58 ? rMem_8 : _GEN_7; // @[Datapath.scala 85:11:@147.4]
  assign _T_64 = io_inst[7:5]; // @[Datapath.scala 93:113:@154.4]
  assign _T_65 = io_inst[11:8]; // @[Datapath.scala 94:114:@156.4]
  assign _T_67 = memSelectReg1 == 1'h0; // @[Datapath.scala 99:22:@159.4]
  assign _T_71 = 3'h0 == _T_64; // @[Conditional.scala 37:30:@164.6]
  assign _T_72 = io_inst[19:16]; // @[Datapath.scala 105:37:@166.8]
  assign _GEN_11 = 4'h1 == _T_72 ? rMem_1 : rMem_0; // @[Datapath.scala 105:18:@167.8]
  assign _GEN_12 = 4'h2 == _T_72 ? rMem_2 : _GEN_11; // @[Datapath.scala 105:18:@167.8]
  assign _GEN_13 = 4'h3 == _T_72 ? rMem_3 : _GEN_12; // @[Datapath.scala 105:18:@167.8]
  assign _GEN_14 = 4'h4 == _T_72 ? rMem_4 : _GEN_13; // @[Datapath.scala 105:18:@167.8]
  assign _GEN_15 = 4'h5 == _T_72 ? rMem_5 : _GEN_14; // @[Datapath.scala 105:18:@167.8]
  assign _GEN_16 = 4'h6 == _T_72 ? rMem_6 : _GEN_15; // @[Datapath.scala 105:18:@167.8]
  assign _GEN_17 = 4'h7 == _T_72 ? rMem_7 : _GEN_16; // @[Datapath.scala 105:18:@167.8]
  assign _GEN_18 = 4'h8 == _T_72 ? rMem_8 : _GEN_17; // @[Datapath.scala 105:18:@167.8]
  assign _GEN_19 = 4'h9 == _T_72 ? rMem_9 : _GEN_18; // @[Datapath.scala 105:18:@167.8]
  assign _T_78 = 3'h1 == _T_64; // @[Conditional.scala 37:30:@174.8]
  assign _T_81 = io_inst[31:16]; // @[Datapath.scala 113:48:@177.10]
  assign _T_82 = {16'h0,_T_81}; // @[Cat.scala 30:58:@178.10]
  assign _T_85 = 3'h2 == _T_64; // @[Conditional.scala 37:30:@184.10]
  assign _GEN_20 = _T_85 ? 32'h0 : bVal; // @[Conditional.scala 39:67:@185.10]
  assign _GEN_21 = _T_85 ? 32'h0 : immVal; // @[Conditional.scala 39:67:@185.10]
  assign _GEN_22 = _T_85 ? 1'h0 : bSelect; // @[Conditional.scala 39:67:@185.10]
  assign _GEN_23 = _T_78 ? 32'h0 : _GEN_20; // @[Conditional.scala 39:67:@175.8]
  assign _GEN_24 = _T_78 ? _T_82 : _GEN_21; // @[Conditional.scala 39:67:@175.8]
  assign _GEN_25 = _T_78 ? 1'h0 : _GEN_22; // @[Conditional.scala 39:67:@175.8]
  assign _GEN_26 = _T_78 ? immVal : 32'h0; // @[Conditional.scala 39:67:@175.8]
  assign _GEN_27 = _T_71 ? _GEN_19 : _GEN_23; // @[Conditional.scala 40:58:@165.6]
  assign _GEN_28 = _T_71 ? 32'h0 : _GEN_24; // @[Conditional.scala 40:58:@165.6]
  assign _GEN_29 = _T_71 ? 1'h1 : _GEN_25; // @[Conditional.scala 40:58:@165.6]
  assign _GEN_30 = _T_71 ? _T_72 : 4'h0; // @[Conditional.scala 40:58:@165.6]
  assign _GEN_31 = _T_71 ? 32'h0 : _GEN_26; // @[Conditional.scala 40:58:@165.6]
  assign _T_90 = io_inst[27:20]; // @[Datapath.scala 125:44:@192.6]
  assign _T_91 = {24'h0,_T_90}; // @[Cat.scala 30:58:@193.6]
  assign _GEN_42 = isLoadReg1 ? _T_65 : 4'h0; // @[Datapath.scala 128:22:@196.6]
  assign _GEN_43 = isLoadReg1 ? 32'h0 : _GEN_19; // @[Datapath.scala 128:22:@196.6]
  assign _GEN_49 = _T_67 ? _GEN_31 : 32'h0; // @[Datapath.scala 99:31:@160.4]
  assign _GEN_51 = isLoad ? 1'h0 : 1'h1; // @[Datapath.scala 171:18:@228.6]
  assign _GEN_53 = isLoad ? result : 32'h0; // @[Datapath.scala 171:18:@228.6]
  assign _GEN_54 = isLoad ? 32'h0 : result; // @[Datapath.scala 171:18:@228.6]
  assign _GEN_55 = isLoad ? 32'h0 : bValReg2; // @[Datapath.scala 171:18:@228.6]
  assign _GEN_56 = isLoad ? dMem_io_rdData : 32'h0; // @[Datapath.scala 171:18:@228.6]
  assign _GEN_59 = memSelect ? _GEN_53 : 32'h0; // @[Datapath.scala 170:19:@227.4]
  assign _GEN_60 = memSelect ? _GEN_54 : 32'h0; // @[Datapath.scala 170:19:@227.4]
  assign _GEN_61 = memSelect ? _GEN_55 : 32'h0; // @[Datapath.scala 170:19:@227.4]
  assign _T_120 = destination != 4'h0; // @[Datapath.scala 203:20:@255.4]
  assign _GEN_63 = 4'h0 == destination ? data : rMem_0; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_64 = 4'h1 == destination ? data : rMem_1; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_65 = 4'h2 == destination ? data : rMem_2; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_66 = 4'h3 == destination ? data : rMem_3; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_67 = 4'h4 == destination ? data : rMem_4; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_68 = 4'h5 == destination ? data : rMem_5; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_69 = 4'h6 == destination ? data : rMem_6; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_70 = 4'h7 == destination ? data : rMem_7; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_71 = 4'h8 == destination ? data : rMem_8; // @[Datapath.scala 204:23:@259.6]
  assign _GEN_72 = 4'h9 == destination ? data : rMem_9; // @[Datapath.scala 204:23:@259.6]
  assign io_opcode = {{1'd0}, _T_54}; // @[Datapath.scala 89:99:@149.4]
  assign io_select = io_inst[7:5]; // @[Datapath.scala 93:99:@155.4]
  assign io_regA = io_inst[15:12]; // @[Datapath.scala 90:97:@151.4]
  assign io_regB = _T_67 ? _GEN_30 : 4'h0; // @[Datapath.scala 91:97:@152.4 Datapath.scala 108:17:@171.8]
  assign io_immediate = _GEN_49[15:0]; // @[Datapath.scala 92:102:@153.4 Datapath.scala 115:22:@181.10]
  assign io_destReg = io_inst[11:8]; // @[Datapath.scala 94:100:@157.4]
  assign io_regAvalue = aVal; // @[Datapath.scala 96:102:@158.4]
  assign io_result = result; // @[Datapath.scala 156:13:@218.4]
  assign dMem_clock = clock; // @[:@127.4]
  assign dMem_io_rdAddr = _GEN_59[7:0]; // @[Datapath.scala 174:22:@231.8 Datapath.scala 181:22:@239.8 Datapath.scala 189:20:@248.6]
  assign dMem_io_wrAddr = _GEN_60[7:0]; // @[Datapath.scala 175:22:@232.8 Datapath.scala 182:22:@240.8 Datapath.scala 190:20:@249.6]
  assign dMem_io_wrData = _GEN_61[7:0]; // @[Datapath.scala 176:22:@233.8 Datapath.scala 183:22:@241.8 Datapath.scala 191:20:@250.6]
  assign dMem_io_rd = memSelect ? isLoad : 1'h0; // @[Datapath.scala 173:18:@230.8 Datapath.scala 180:18:@238.8 Datapath.scala 187:16:@246.6]
  assign dMem_io_wr = memSelect ? _GEN_51 : 1'h0; // @[Datapath.scala 172:18:@229.8 Datapath.scala 179:18:@237.8 Datapath.scala 188:16:@247.6]
  assign alu_io_a = aVal; // @[Datapath.scala 146:12:@208.4]
  assign alu_io_b = bSelect ? bVal : immVal; // @[Datapath.scala 147:12:@209.4 Datapath.scala 149:14:@212.6 Datapath.scala 152:12:@215.6]
  assign alu_io_opcode = {{1'd0}, opcode}; // @[Datapath.scala 145:17:@207.4]
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
  opcode = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  memSelectReg1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  bSelect = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  isLoadReg1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  aVal = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  bVal = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  immVal = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  wbrReg1 = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  result = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  data = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  rMem_0 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  rMem_1 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  rMem_2 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  rMem_3 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  rMem_4 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  rMem_5 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  rMem_6 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  rMem_7 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  rMem_8 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  rMem_9 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  memSelect = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  isLoad = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  bValReg2 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  wbrReg2 = _RAND_23[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  destination = _RAND_24[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    opcode <= io_inst[4:1];
    memSelectReg1 <= io_inst[0];
    if (_T_67) begin
      if (_T_71) begin
        bSelect <= 1'h1;
      end else begin
        if (_T_78) begin
          bSelect <= 1'h0;
        end else begin
          if (_T_85) begin
            bSelect <= 1'h0;
          end
        end
      end
    end else begin
      bSelect <= 1'h0;
    end
    isLoadReg1 <= ~ _T_56;
    if (4'h9 == _T_58) begin
      aVal <= rMem_9;
    end else begin
      if (4'h8 == _T_58) begin
        aVal <= rMem_8;
      end else begin
        if (4'h7 == _T_58) begin
          aVal <= rMem_7;
        end else begin
          if (4'h6 == _T_58) begin
            aVal <= rMem_6;
          end else begin
            if (4'h5 == _T_58) begin
              aVal <= rMem_5;
            end else begin
              if (4'h4 == _T_58) begin
                aVal <= rMem_4;
              end else begin
                if (4'h3 == _T_58) begin
                  aVal <= rMem_3;
                end else begin
                  if (4'h2 == _T_58) begin
                    aVal <= rMem_2;
                  end else begin
                    if (4'h1 == _T_58) begin
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
    if (_T_67) begin
      if (_T_71) begin
        if (4'h9 == _T_72) begin
          bVal <= rMem_9;
        end else begin
          if (4'h8 == _T_72) begin
            bVal <= rMem_8;
          end else begin
            if (4'h7 == _T_72) begin
              bVal <= rMem_7;
            end else begin
              if (4'h6 == _T_72) begin
                bVal <= rMem_6;
              end else begin
                if (4'h5 == _T_72) begin
                  bVal <= rMem_5;
                end else begin
                  if (4'h4 == _T_72) begin
                    bVal <= rMem_4;
                  end else begin
                    if (4'h3 == _T_72) begin
                      bVal <= rMem_3;
                    end else begin
                      if (4'h2 == _T_72) begin
                        bVal <= rMem_2;
                      end else begin
                        if (4'h1 == _T_72) begin
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
        if (_T_78) begin
          bVal <= 32'h0;
        end else begin
          if (_T_85) begin
            bVal <= 32'h0;
          end
        end
      end
    end else begin
      if (isLoadReg1) begin
        bVal <= 32'h0;
      end else begin
        if (4'h9 == _T_72) begin
          bVal <= rMem_9;
        end else begin
          if (4'h8 == _T_72) begin
            bVal <= rMem_8;
          end else begin
            if (4'h7 == _T_72) begin
              bVal <= rMem_7;
            end else begin
              if (4'h6 == _T_72) begin
                bVal <= rMem_6;
              end else begin
                if (4'h5 == _T_72) begin
                  bVal <= rMem_5;
                end else begin
                  if (4'h4 == _T_72) begin
                    bVal <= rMem_4;
                  end else begin
                    if (4'h3 == _T_72) begin
                      bVal <= rMem_3;
                    end else begin
                      if (4'h2 == _T_72) begin
                        bVal <= rMem_2;
                      end else begin
                        if (4'h1 == _T_72) begin
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
    if (_T_67) begin
      if (_T_71) begin
        immVal <= 32'h0;
      end else begin
        if (_T_78) begin
          immVal <= _T_82;
        end else begin
          if (_T_85) begin
            immVal <= 32'h0;
          end
        end
      end
    end else begin
      immVal <= _T_91;
    end
    if (_T_67) begin
      wbrReg1 <= _T_65;
    end else begin
      if (isLoadReg1) begin
        wbrReg1 <= _T_65;
      end else begin
        wbrReg1 <= 4'h0;
      end
    end
    result <= alu_io_out;
    if (memSelect) begin
      if (isLoad) begin
        data <= dMem_io_rdData;
      end else begin
        data <= 32'h0;
      end
    end else begin
      data <= result;
    end
    if (_T_120) begin
      if (4'h0 == destination) begin
        rMem_0 <= data;
      end
    end
    if (_T_120) begin
      if (4'h1 == destination) begin
        rMem_1 <= data;
      end
    end
    if (_T_120) begin
      if (4'h2 == destination) begin
        rMem_2 <= data;
      end
    end
    if (_T_120) begin
      if (4'h3 == destination) begin
        rMem_3 <= data;
      end
    end
    if (_T_120) begin
      if (4'h4 == destination) begin
        rMem_4 <= data;
      end
    end
    if (_T_120) begin
      if (4'h5 == destination) begin
        rMem_5 <= data;
      end
    end
    if (_T_120) begin
      if (4'h6 == destination) begin
        rMem_6 <= data;
      end
    end
    if (_T_120) begin
      if (4'h7 == destination) begin
        rMem_7 <= data;
      end
    end
    if (_T_120) begin
      if (4'h8 == destination) begin
        rMem_8 <= data;
      end
    end
    if (_T_120) begin
      if (4'h9 == destination) begin
        rMem_9 <= data;
      end
    end
    memSelect <= memSelectReg1;
    isLoad <= isLoadReg1;
    bValReg2 <= bVal;
    wbrReg2 <= wbrReg1;
    destination <= wbrReg2;
  end
endmodule
