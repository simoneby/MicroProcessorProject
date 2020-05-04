module InstructionMemory( // @[:@3.2]
  input         clock, // @[:@4.4]
  input  [7:0]  io_rdAddr, // @[:@6.4]
  output [31:0] io_rdData // @[:@6.4]
);
  reg [31:0] mem [0:255]; // @[InstructionMemory.scala 13:24:@8.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_11_data; // @[InstructionMemory.scala 13:24:@8.4]
  wire [7:0] mem__T_11_addr; // @[InstructionMemory.scala 13:24:@8.4]
  wire [31:0] mem__T_14_data; // @[InstructionMemory.scala 13:24:@8.4]
  wire [7:0] mem__T_14_addr; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_14_mask; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_14_en; // @[InstructionMemory.scala 13:24:@8.4]
  wire [31:0] mem__T_17_data; // @[InstructionMemory.scala 13:24:@8.4]
  wire [7:0] mem__T_17_addr; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_17_mask; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_17_en; // @[InstructionMemory.scala 13:24:@8.4]
  wire [31:0] mem__T_20_data; // @[InstructionMemory.scala 13:24:@8.4]
  wire [7:0] mem__T_20_addr; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_20_mask; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_20_en; // @[InstructionMemory.scala 13:24:@8.4]
  wire [31:0] mem__T_23_data; // @[InstructionMemory.scala 13:24:@8.4]
  wire [7:0] mem__T_23_addr; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_23_mask; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_23_en; // @[InstructionMemory.scala 13:24:@8.4]
  wire [31:0] mem__T_26_data; // @[InstructionMemory.scala 13:24:@8.4]
  wire [7:0] mem__T_26_addr; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_26_mask; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_26_en; // @[InstructionMemory.scala 13:24:@8.4]
  wire [31:0] mem__T_29_data; // @[InstructionMemory.scala 13:24:@8.4]
  wire [7:0] mem__T_29_addr; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_29_mask; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_29_en; // @[InstructionMemory.scala 13:24:@8.4]
  wire [31:0] mem__T_32_data; // @[InstructionMemory.scala 13:24:@8.4]
  wire [7:0] mem__T_32_addr; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_32_mask; // @[InstructionMemory.scala 13:24:@8.4]
  wire  mem__T_32_en; // @[InstructionMemory.scala 13:24:@8.4]
  wire  _GEN_0;
  reg [7:0] mem__T_11_addr_pipe_0;
  reg [31:0] _RAND_1;
  assign mem__T_11_addr = mem__T_11_addr_pipe_0;
  assign mem__T_11_data = mem[mem__T_11_addr]; // @[InstructionMemory.scala 13:24:@8.4]
  assign mem__T_14_data = 32'h19100005;
  assign mem__T_14_addr = 8'h0;
  assign mem__T_14_mask = 1'h1;
  assign mem__T_14_en = 1'h1;
  assign mem__T_17_data = 32'h19210007;
  assign mem__T_17_addr = 8'h4;
  assign mem__T_17_mask = 1'h1;
  assign mem__T_17_en = 1'h1;
  assign mem__T_20_data = 32'h20321000;
  assign mem__T_20_addr = 8'h8;
  assign mem__T_20_mask = 1'h1;
  assign mem__T_20_en = 1'h1;
  assign mem__T_23_data = 32'h88013000;
  assign mem__T_23_addr = 8'hc;
  assign mem__T_23_mask = 1'h1;
  assign mem__T_23_en = 1'h1;
  assign mem__T_26_data = 32'h88013000;
  assign mem__T_26_addr = 8'h10;
  assign mem__T_26_mask = 1'h1;
  assign mem__T_26_en = 1'h1;
  assign mem__T_29_data = 32'h80410000;
  assign mem__T_29_addr = 8'h14;
  assign mem__T_29_mask = 1'h1;
  assign mem__T_29_en = 1'h1;
  assign mem__T_32_data = 32'ha440000;
  assign mem__T_32_addr = 8'h18;
  assign mem__T_32_mask = 1'h1;
  assign mem__T_32_en = 1'h1;
  assign io_rdData = mem__T_11_data; // @[InstructionMemory.scala 15:13:@10.4]
  assign _GEN_0 = 1'h1;
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
  mem__T_11_addr_pipe_0 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_14_en & mem__T_14_mask) begin
      mem[mem__T_14_addr] <= mem__T_14_data; // @[InstructionMemory.scala 13:24:@8.4]
    end
    if(mem__T_17_en & mem__T_17_mask) begin
      mem[mem__T_17_addr] <= mem__T_17_data; // @[InstructionMemory.scala 13:24:@8.4]
    end
    if(mem__T_20_en & mem__T_20_mask) begin
      mem[mem__T_20_addr] <= mem__T_20_data; // @[InstructionMemory.scala 13:24:@8.4]
    end
    if(mem__T_23_en & mem__T_23_mask) begin
      mem[mem__T_23_addr] <= mem__T_23_data; // @[InstructionMemory.scala 13:24:@8.4]
    end
    if(mem__T_26_en & mem__T_26_mask) begin
      mem[mem__T_26_addr] <= mem__T_26_data; // @[InstructionMemory.scala 13:24:@8.4]
    end
    if(mem__T_29_en & mem__T_29_mask) begin
      mem[mem__T_29_addr] <= mem__T_29_data; // @[InstructionMemory.scala 13:24:@8.4]
    end
    if(mem__T_32_en & mem__T_32_mask) begin
      mem[mem__T_32_addr] <= mem__T_32_data; // @[InstructionMemory.scala 13:24:@8.4]
    end
    if (_GEN_0) begin
      mem__T_11_addr_pipe_0 <= io_rdAddr;
    end
  end
endmodule
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
  wire [32:0] _T_19; // @[ALU.scala 26:22:@55.8]
  wire [31:0] _T_20; // @[ALU.scala 26:22:@56.8]
  wire [31:0] _T_21; // @[ALU.scala 26:22:@57.8]
  wire  _T_23; // @[Conditional.scala 37:30:@61.8]
  wire [32:0] _T_25; // @[ALU.scala 29:22:@63.10]
  wire [31:0] _T_26; // @[ALU.scala 29:22:@64.10]
  wire [31:0] _T_27; // @[ALU.scala 29:22:@65.10]
  wire  _T_29; // @[Conditional.scala 37:30:@69.10]
  wire [32:0] _T_30; // @[ALU.scala 32:22:@71.12]
  wire [31:0] _T_31; // @[ALU.scala 32:22:@72.12]
  wire [31:0] _T_32; // @[ALU.scala 32:22:@73.12]
  wire  _T_34; // @[Conditional.scala 37:30:@77.12]
  wire [32:0] _T_35; // @[ALU.scala 35:22:@79.14]
  wire [31:0] _T_36; // @[ALU.scala 35:22:@80.14]
  wire [31:0] _T_37; // @[ALU.scala 35:22:@81.14]
  wire  _T_39; // @[Conditional.scala 37:30:@85.14]
  wire [31:0] _T_40; // @[ALU.scala 38:17:@87.16]
  wire [31:0] _T_41; // @[ALU.scala 38:17:@88.16]
  wire  _T_43; // @[Conditional.scala 37:30:@92.16]
  wire [31:0] _T_44; // @[ALU.scala 41:22:@94.18]
  wire [31:0] _T_45; // @[ALU.scala 41:22:@95.18]
  wire  _T_47; // @[Conditional.scala 37:30:@99.18]
  wire [31:0] _T_48; // @[ALU.scala 44:22:@101.20]
  wire [31:0] _T_49; // @[ALU.scala 44:22:@102.20]
  wire  _T_51; // @[Conditional.scala 37:30:@106.20]
  wire [31:0] _T_52; // @[ALU.scala 47:22:@108.22]
  wire [31:0] _T_53; // @[ALU.scala 47:22:@109.22]
  wire [31:0] _GEN_0; // @[Conditional.scala 39:67:@107.20]
  wire [31:0] _GEN_1; // @[Conditional.scala 39:67:@100.18]
  wire [31:0] _GEN_2; // @[Conditional.scala 39:67:@93.16]
  wire [31:0] _GEN_3; // @[Conditional.scala 39:67:@86.14]
  wire [31:0] _GEN_4; // @[Conditional.scala 39:67:@78.12]
  wire [31:0] _GEN_5; // @[Conditional.scala 39:67:@70.10]
  wire [31:0] _GEN_6; // @[Conditional.scala 39:67:@62.8]
  wire [31:0] _GEN_7; // @[Conditional.scala 39:67:@54.6]
  assign _T_15 = 5'h0 == io_opcode; // @[Conditional.scala 37:30:@48.4]
  assign _T_17 = 5'h1 == io_opcode; // @[Conditional.scala 37:30:@53.6]
  assign _T_19 = $signed(io_a) + $signed(32'sh1); // @[ALU.scala 26:22:@55.8]
  assign _T_20 = $signed(io_a) + $signed(32'sh1); // @[ALU.scala 26:22:@56.8]
  assign _T_21 = $signed(_T_20); // @[ALU.scala 26:22:@57.8]
  assign _T_23 = 5'h2 == io_opcode; // @[Conditional.scala 37:30:@61.8]
  assign _T_25 = $signed(io_a) - $signed(32'sh1); // @[ALU.scala 29:22:@63.10]
  assign _T_26 = $signed(io_a) - $signed(32'sh1); // @[ALU.scala 29:22:@64.10]
  assign _T_27 = $signed(_T_26); // @[ALU.scala 29:22:@65.10]
  assign _T_29 = 5'h3 == io_opcode; // @[Conditional.scala 37:30:@69.10]
  assign _T_30 = $signed(io_a) + $signed(io_b); // @[ALU.scala 32:22:@71.12]
  assign _T_31 = $signed(io_a) + $signed(io_b); // @[ALU.scala 32:22:@72.12]
  assign _T_32 = $signed(_T_31); // @[ALU.scala 32:22:@73.12]
  assign _T_34 = 5'h4 == io_opcode; // @[Conditional.scala 37:30:@77.12]
  assign _T_35 = $signed(io_a) - $signed(io_b); // @[ALU.scala 35:22:@79.14]
  assign _T_36 = $signed(io_a) - $signed(io_b); // @[ALU.scala 35:22:@80.14]
  assign _T_37 = $signed(_T_36); // @[ALU.scala 35:22:@81.14]
  assign _T_39 = 5'h5 == io_opcode; // @[Conditional.scala 37:30:@85.14]
  assign _T_40 = ~ io_a; // @[ALU.scala 38:17:@87.16]
  assign _T_41 = $signed(_T_40); // @[ALU.scala 38:17:@88.16]
  assign _T_43 = 5'h6 == io_opcode; // @[Conditional.scala 37:30:@92.16]
  assign _T_44 = $signed(io_a) & $signed(io_b); // @[ALU.scala 41:22:@94.18]
  assign _T_45 = $signed(_T_44); // @[ALU.scala 41:22:@95.18]
  assign _T_47 = 5'h7 == io_opcode; // @[Conditional.scala 37:30:@99.18]
  assign _T_48 = $signed(io_a) | $signed(io_b); // @[ALU.scala 44:22:@101.20]
  assign _T_49 = $signed(_T_48); // @[ALU.scala 44:22:@102.20]
  assign _T_51 = 5'h8 == io_opcode; // @[Conditional.scala 37:30:@106.20]
  assign _T_52 = $signed(io_a) ^ $signed(io_b); // @[ALU.scala 47:22:@108.22]
  assign _T_53 = $signed(_T_52); // @[ALU.scala 47:22:@109.22]
  assign _GEN_0 = _T_51 ? $signed(_T_53) : $signed(32'sh0); // @[Conditional.scala 39:67:@107.20]
  assign _GEN_1 = _T_47 ? $signed(_T_49) : $signed(_GEN_0); // @[Conditional.scala 39:67:@100.18]
  assign _GEN_2 = _T_43 ? $signed(_T_45) : $signed(_GEN_1); // @[Conditional.scala 39:67:@93.16]
  assign _GEN_3 = _T_39 ? $signed(_T_41) : $signed(_GEN_2); // @[Conditional.scala 39:67:@86.14]
  assign _GEN_4 = _T_34 ? $signed(_T_37) : $signed(_GEN_3); // @[Conditional.scala 39:67:@78.12]
  assign _GEN_5 = _T_29 ? $signed(_T_32) : $signed(_GEN_4); // @[Conditional.scala 39:67:@70.10]
  assign _GEN_6 = _T_23 ? $signed(_T_27) : $signed(_GEN_5); // @[Conditional.scala 39:67:@62.8]
  assign _GEN_7 = _T_17 ? $signed(_T_21) : $signed(_GEN_6); // @[Conditional.scala 39:67:@54.6]
  assign io_out = _T_15 ? $signed(io_a) : $signed(_GEN_7); // @[ALU.scala 19:10:@47.4 ALU.scala 23:14:@50.6 ALU.scala 26:14:@58.8 ALU.scala 29:14:@66.10 ALU.scala 32:14:@74.12 ALU.scala 35:14:@82.14 ALU.scala 38:14:@89.16 ALU.scala 41:14:@96.18 ALU.scala 44:14:@103.20 ALU.scala 47:14:@110.22]
endmodule
module Datapath( // @[:@113.2]
  input   clock, // @[:@114.4]
  input   reset, // @[:@115.4]
  output  io_led // @[:@116.4]
);
  wire  iMem_clock; // @[Datapath.scala 41:20:@129.4]
  wire [7:0] iMem_io_rdAddr; // @[Datapath.scala 41:20:@129.4]
  wire [31:0] iMem_io_rdData; // @[Datapath.scala 41:20:@129.4]
  wire  dMem_clock; // @[Datapath.scala 45:20:@132.4]
  wire [7:0] dMem_io_rdAddr; // @[Datapath.scala 45:20:@132.4]
  wire [7:0] dMem_io_wrAddr; // @[Datapath.scala 45:20:@132.4]
  wire [7:0] dMem_io_wrData; // @[Datapath.scala 45:20:@132.4]
  wire [31:0] dMem_io_rdData; // @[Datapath.scala 45:20:@132.4]
  wire  dMem_io_rd; // @[Datapath.scala 45:20:@132.4]
  wire  dMem_io_wr; // @[Datapath.scala 45:20:@132.4]
  wire [31:0] alu_io_a; // @[Datapath.scala 52:19:@136.4]
  wire [31:0] alu_io_b; // @[Datapath.scala 52:19:@136.4]
  wire [4:0] alu_io_opcode; // @[Datapath.scala 52:19:@136.4]
  wire [31:0] alu_io_out; // @[Datapath.scala 52:19:@136.4]
  reg [31:0] instruction; // @[Datapath.scala 20:27:@118.4]
  reg [31:0] _RAND_0;
  reg [3:0] opcode; // @[Datapath.scala 23:22:@119.4]
  reg [31:0] _RAND_1;
  reg  memSelectReg1; // @[Datapath.scala 24:26:@120.4]
  reg [31:0] _RAND_2;
  reg  bSelect; // @[Datapath.scala 25:23:@121.4]
  reg [31:0] _RAND_3;
  reg  isLoadReg1; // @[Datapath.scala 26:23:@122.4]
  reg [31:0] _RAND_4;
  reg [31:0] aVal; // @[Datapath.scala 27:20:@123.4]
  reg [31:0] _RAND_5;
  reg [31:0] bVal; // @[Datapath.scala 28:21:@124.4]
  reg [31:0] _RAND_6;
  reg [31:0] immVal; // @[Datapath.scala 29:22:@125.4]
  reg [31:0] _RAND_7;
  reg [3:0] wbrReg1; // @[Datapath.scala 30:20:@126.4]
  reg [31:0] _RAND_8;
  reg [31:0] result; // @[Datapath.scala 33:22:@127.4]
  reg [31:0] _RAND_9;
  reg [31:0] data; // @[Datapath.scala 36:20:@128.4]
  reg [31:0] _RAND_10;
  reg [31:0] rMem_0; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_11;
  reg [31:0] rMem_1; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_12;
  reg [31:0] rMem_2; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_13;
  reg [31:0] rMem_3; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_14;
  reg [31:0] rMem_4; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_15;
  reg [31:0] rMem_5; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_16;
  reg [31:0] rMem_6; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_17;
  reg [31:0] rMem_7; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_18;
  reg [31:0] rMem_8; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_19;
  reg [31:0] rMem_9; // @[Datapath.scala 49:17:@135.4]
  reg [31:0] _RAND_20;
  reg [7:0] pc; // @[Datapath.scala 57:19:@139.4]
  reg [31:0] _RAND_21;
  wire [8:0] _T_36; // @[Datapath.scala 58:12:@140.4]
  wire [7:0] _T_37; // @[Datapath.scala 58:12:@141.4]
  wire  _T_40; // @[Datapath.scala 69:29:@149.4]
  wire [3:0] _T_42; // @[Datapath.scala 70:30:@152.4]
  wire [31:0] _GEN_1; // @[Datapath.scala 70:11:@153.4]
  wire [31:0] _GEN_2; // @[Datapath.scala 70:11:@153.4]
  wire [31:0] _GEN_3; // @[Datapath.scala 70:11:@153.4]
  wire [31:0] _GEN_4; // @[Datapath.scala 70:11:@153.4]
  wire [31:0] _GEN_5; // @[Datapath.scala 70:11:@153.4]
  wire [31:0] _GEN_6; // @[Datapath.scala 70:11:@153.4]
  wire [31:0] _GEN_7; // @[Datapath.scala 70:11:@153.4]
  wire [31:0] _GEN_8; // @[Datapath.scala 70:11:@153.4]
  wire  _T_45; // @[Datapath.scala 72:8:@154.4]
  wire [3:0] _T_46; // @[Datapath.scala 73:27:@156.6]
  wire [2:0] _T_47; // @[Datapath.scala 75:23:@158.6]
  wire  _T_49; // @[Conditional.scala 37:30:@159.6]
  wire [3:0] _T_50; // @[Datapath.scala 78:37:@161.8]
  wire [31:0] _GEN_11; // @[Datapath.scala 78:18:@162.8]
  wire [31:0] _GEN_12; // @[Datapath.scala 78:18:@162.8]
  wire [31:0] _GEN_13; // @[Datapath.scala 78:18:@162.8]
  wire [31:0] _GEN_14; // @[Datapath.scala 78:18:@162.8]
  wire [31:0] _GEN_15; // @[Datapath.scala 78:18:@162.8]
  wire [31:0] _GEN_16; // @[Datapath.scala 78:18:@162.8]
  wire [31:0] _GEN_17; // @[Datapath.scala 78:18:@162.8]
  wire [31:0] _GEN_18; // @[Datapath.scala 78:18:@162.8]
  wire [31:0] _GEN_19; // @[Datapath.scala 78:18:@162.8]
  wire  _T_55; // @[Conditional.scala 37:30:@167.8]
  wire [15:0] _T_58; // @[Datapath.scala 85:48:@170.10]
  wire [31:0] _T_59; // @[Cat.scala 30:58:@171.10]
  wire  _T_62; // @[Conditional.scala 37:30:@176.10]
  wire [31:0] _GEN_20; // @[Conditional.scala 39:67:@177.10]
  wire [31:0] _GEN_21; // @[Conditional.scala 39:67:@177.10]
  wire  _GEN_22; // @[Conditional.scala 39:67:@177.10]
  wire [31:0] _GEN_23; // @[Conditional.scala 39:67:@168.8]
  wire [31:0] _GEN_24; // @[Conditional.scala 39:67:@168.8]
  wire  _GEN_25; // @[Conditional.scala 39:67:@168.8]
  wire [31:0] _GEN_26; // @[Conditional.scala 40:58:@160.6]
  wire [31:0] _GEN_27; // @[Conditional.scala 40:58:@160.6]
  wire  _GEN_28; // @[Conditional.scala 40:58:@160.6]
  wire [7:0] _T_67; // @[Datapath.scala 96:44:@184.6]
  wire [31:0] _T_68; // @[Cat.scala 30:58:@185.6]
  wire [3:0] _GEN_39; // @[Datapath.scala 99:22:@188.6]
  wire [31:0] _GEN_40; // @[Datapath.scala 99:22:@188.6]
  wire [31:0] _T_78; // @[Datapath.scala 119:28:@204.6]
  wire [31:0] _T_79; // @[Datapath.scala 121:30:@208.6]
  reg  memSelect; // @[Datapath.scala 126:30:@213.4]
  reg [31:0] _RAND_22;
  reg  isLoad; // @[Datapath.scala 127:27:@215.4]
  reg [31:0] _RAND_23;
  reg [31:0] bValReg2; // @[Datapath.scala 128:25:@217.4]
  reg [31:0] _RAND_24;
  reg [3:0] wbrReg2; // @[Datapath.scala 129:24:@219.4]
  reg [31:0] _RAND_25;
  wire  _GEN_46; // @[Datapath.scala 139:18:@222.6]
  wire [31:0] _GEN_48; // @[Datapath.scala 139:18:@222.6]
  wire [31:0] _GEN_49; // @[Datapath.scala 139:18:@222.6]
  wire [31:0] _GEN_50; // @[Datapath.scala 139:18:@222.6]
  wire [31:0] _GEN_51; // @[Datapath.scala 139:18:@222.6]
  wire [31:0] _GEN_54; // @[Datapath.scala 138:19:@221.4]
  wire [31:0] _GEN_55; // @[Datapath.scala 138:19:@221.4]
  wire [31:0] _GEN_56; // @[Datapath.scala 138:19:@221.4]
  reg [3:0] destination; // @[Datapath.scala 163:24:@247.4]
  reg [31:0] _RAND_26;
  wire  _T_100; // @[Datapath.scala 170:20:@249.4]
  wire [31:0] _GEN_58; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_59; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_60; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_61; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_62; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_63; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_64; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_65; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_66; // @[Datapath.scala 171:23:@253.6]
  wire [31:0] _GEN_67; // @[Datapath.scala 171:23:@253.6]
  InstructionMemory iMem ( // @[Datapath.scala 41:20:@129.4]
    .clock(iMem_clock),
    .io_rdAddr(iMem_io_rdAddr),
    .io_rdData(iMem_io_rdData)
  );
  DataMemory dMem ( // @[Datapath.scala 45:20:@132.4]
    .clock(dMem_clock),
    .io_rdAddr(dMem_io_rdAddr),
    .io_wrAddr(dMem_io_wrAddr),
    .io_wrData(dMem_io_wrData),
    .io_rdData(dMem_io_rdData),
    .io_rd(dMem_io_rd),
    .io_wr(dMem_io_wr)
  );
  ALU alu ( // @[Datapath.scala 52:19:@136.4]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_opcode(alu_io_opcode),
    .io_out(alu_io_out)
  );
  assign _T_36 = pc + 8'h4; // @[Datapath.scala 58:12:@140.4]
  assign _T_37 = pc + 8'h4; // @[Datapath.scala 58:12:@141.4]
  assign _T_40 = instruction[4]; // @[Datapath.scala 69:29:@149.4]
  assign _T_42 = instruction[15:12]; // @[Datapath.scala 70:30:@152.4]
  assign _GEN_1 = 4'h1 == _T_42 ? rMem_1 : rMem_0; // @[Datapath.scala 70:11:@153.4]
  assign _GEN_2 = 4'h2 == _T_42 ? rMem_2 : _GEN_1; // @[Datapath.scala 70:11:@153.4]
  assign _GEN_3 = 4'h3 == _T_42 ? rMem_3 : _GEN_2; // @[Datapath.scala 70:11:@153.4]
  assign _GEN_4 = 4'h4 == _T_42 ? rMem_4 : _GEN_3; // @[Datapath.scala 70:11:@153.4]
  assign _GEN_5 = 4'h5 == _T_42 ? rMem_5 : _GEN_4; // @[Datapath.scala 70:11:@153.4]
  assign _GEN_6 = 4'h6 == _T_42 ? rMem_6 : _GEN_5; // @[Datapath.scala 70:11:@153.4]
  assign _GEN_7 = 4'h7 == _T_42 ? rMem_7 : _GEN_6; // @[Datapath.scala 70:11:@153.4]
  assign _GEN_8 = 4'h8 == _T_42 ? rMem_8 : _GEN_7; // @[Datapath.scala 70:11:@153.4]
  assign _T_45 = memSelectReg1 == 1'h0; // @[Datapath.scala 72:8:@154.4]
  assign _T_46 = instruction[11:8]; // @[Datapath.scala 73:27:@156.6]
  assign _T_47 = instruction[7:5]; // @[Datapath.scala 75:23:@158.6]
  assign _T_49 = 3'h0 == _T_47; // @[Conditional.scala 37:30:@159.6]
  assign _T_50 = instruction[19:16]; // @[Datapath.scala 78:37:@161.8]
  assign _GEN_11 = 4'h1 == _T_50 ? rMem_1 : rMem_0; // @[Datapath.scala 78:18:@162.8]
  assign _GEN_12 = 4'h2 == _T_50 ? rMem_2 : _GEN_11; // @[Datapath.scala 78:18:@162.8]
  assign _GEN_13 = 4'h3 == _T_50 ? rMem_3 : _GEN_12; // @[Datapath.scala 78:18:@162.8]
  assign _GEN_14 = 4'h4 == _T_50 ? rMem_4 : _GEN_13; // @[Datapath.scala 78:18:@162.8]
  assign _GEN_15 = 4'h5 == _T_50 ? rMem_5 : _GEN_14; // @[Datapath.scala 78:18:@162.8]
  assign _GEN_16 = 4'h6 == _T_50 ? rMem_6 : _GEN_15; // @[Datapath.scala 78:18:@162.8]
  assign _GEN_17 = 4'h7 == _T_50 ? rMem_7 : _GEN_16; // @[Datapath.scala 78:18:@162.8]
  assign _GEN_18 = 4'h8 == _T_50 ? rMem_8 : _GEN_17; // @[Datapath.scala 78:18:@162.8]
  assign _GEN_19 = 4'h9 == _T_50 ? rMem_9 : _GEN_18; // @[Datapath.scala 78:18:@162.8]
  assign _T_55 = 3'h1 == _T_47; // @[Conditional.scala 37:30:@167.8]
  assign _T_58 = instruction[31:16]; // @[Datapath.scala 85:48:@170.10]
  assign _T_59 = {16'h0,_T_58}; // @[Cat.scala 30:58:@171.10]
  assign _T_62 = 3'h2 == _T_47; // @[Conditional.scala 37:30:@176.10]
  assign _GEN_20 = _T_62 ? 32'h0 : bVal; // @[Conditional.scala 39:67:@177.10]
  assign _GEN_21 = _T_62 ? 32'h0 : immVal; // @[Conditional.scala 39:67:@177.10]
  assign _GEN_22 = _T_62 ? 1'h0 : bSelect; // @[Conditional.scala 39:67:@177.10]
  assign _GEN_23 = _T_55 ? 32'h0 : _GEN_20; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_24 = _T_55 ? _T_59 : _GEN_21; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_25 = _T_55 ? 1'h0 : _GEN_22; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_26 = _T_49 ? _GEN_19 : _GEN_23; // @[Conditional.scala 40:58:@160.6]
  assign _GEN_27 = _T_49 ? 32'h0 : _GEN_24; // @[Conditional.scala 40:58:@160.6]
  assign _GEN_28 = _T_49 ? 1'h1 : _GEN_25; // @[Conditional.scala 40:58:@160.6]
  assign _T_67 = instruction[27:20]; // @[Datapath.scala 96:44:@184.6]
  assign _T_68 = {24'h0,_T_67}; // @[Cat.scala 30:58:@185.6]
  assign _GEN_39 = isLoadReg1 ? _T_46 : 4'h0; // @[Datapath.scala 99:22:@188.6]
  assign _GEN_40 = isLoadReg1 ? 32'h0 : _GEN_19; // @[Datapath.scala 99:22:@188.6]
  assign _T_78 = $signed(bVal); // @[Datapath.scala 119:28:@204.6]
  assign _T_79 = $signed(immVal); // @[Datapath.scala 121:30:@208.6]
  assign _GEN_46 = isLoad ? 1'h0 : 1'h1; // @[Datapath.scala 139:18:@222.6]
  assign _GEN_48 = isLoad ? result : 32'h0; // @[Datapath.scala 139:18:@222.6]
  assign _GEN_49 = isLoad ? 32'h0 : result; // @[Datapath.scala 139:18:@222.6]
  assign _GEN_50 = isLoad ? 32'h0 : bValReg2; // @[Datapath.scala 139:18:@222.6]
  assign _GEN_51 = isLoad ? dMem_io_rdData : 32'h0; // @[Datapath.scala 139:18:@222.6]
  assign _GEN_54 = memSelect ? _GEN_48 : 32'h0; // @[Datapath.scala 138:19:@221.4]
  assign _GEN_55 = memSelect ? _GEN_49 : 32'h0; // @[Datapath.scala 138:19:@221.4]
  assign _GEN_56 = memSelect ? _GEN_50 : 32'h0; // @[Datapath.scala 138:19:@221.4]
  assign _T_100 = destination != 4'h0; // @[Datapath.scala 170:20:@249.4]
  assign _GEN_58 = 4'h0 == destination ? data : rMem_0; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_59 = 4'h1 == destination ? data : rMem_1; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_60 = 4'h2 == destination ? data : rMem_2; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_61 = 4'h3 == destination ? data : rMem_3; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_62 = 4'h4 == destination ? data : rMem_4; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_63 = 4'h5 == destination ? data : rMem_5; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_64 = 4'h6 == destination ? data : rMem_6; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_65 = 4'h7 == destination ? data : rMem_7; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_66 = 4'h8 == destination ? data : rMem_8; // @[Datapath.scala 171:23:@253.6]
  assign _GEN_67 = 4'h9 == destination ? data : rMem_9; // @[Datapath.scala 171:23:@253.6]
  assign io_led = rMem_1 == 32'h1; // @[Datapath.scala 175:12:@257.6 Datapath.scala 178:14:@260.6]
  assign iMem_clock = clock; // @[:@130.4]
  assign iMem_io_rdAddr = pc; // @[Datapath.scala 60:18:@143.4]
  assign dMem_clock = clock; // @[:@133.4]
  assign dMem_io_rdAddr = _GEN_54[7:0]; // @[Datapath.scala 142:22:@225.8 Datapath.scala 149:22:@233.8 Datapath.scala 157:20:@242.6]
  assign dMem_io_wrAddr = _GEN_55[7:0]; // @[Datapath.scala 143:22:@226.8 Datapath.scala 150:22:@234.8 Datapath.scala 158:20:@243.6]
  assign dMem_io_wrData = _GEN_56[7:0]; // @[Datapath.scala 144:22:@227.8 Datapath.scala 151:22:@235.8 Datapath.scala 159:20:@244.6]
  assign dMem_io_rd = memSelect ? isLoad : 1'h0; // @[Datapath.scala 141:18:@224.8 Datapath.scala 148:18:@232.8 Datapath.scala 155:16:@240.6]
  assign dMem_io_wr = memSelect ? _GEN_46 : 1'h0; // @[Datapath.scala 140:18:@223.8 Datapath.scala 147:18:@231.8 Datapath.scala 156:16:@241.6]
  assign alu_io_a = $signed(aVal); // @[Datapath.scala 117:12:@201.4]
  assign alu_io_b = bSelect ? $signed(_T_78) : $signed(_T_79); // @[Datapath.scala 119:14:@205.6 Datapath.scala 121:14:@209.6]
  assign alu_io_opcode = {{1'd0}, opcode}; // @[Datapath.scala 116:17:@199.4]
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
  instruction = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  opcode = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  memSelectReg1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  bSelect = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  isLoadReg1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  aVal = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  bVal = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  immVal = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  wbrReg1 = _RAND_8[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  result = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  data = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  rMem_0 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  rMem_1 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  rMem_2 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  rMem_3 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  rMem_4 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  rMem_5 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  rMem_6 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  rMem_7 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  rMem_8 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  rMem_9 = _RAND_20[31:0];
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
  bValReg2 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  wbrReg2 = _RAND_25[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  destination = _RAND_26[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    instruction <= iMem_io_rdData;
    opcode <= instruction[4:1];
    memSelectReg1 <= instruction[0];
    if (_T_45) begin
      if (_T_49) begin
        bSelect <= 1'h1;
      end else begin
        if (_T_55) begin
          bSelect <= 1'h0;
        end else begin
          if (_T_62) begin
            bSelect <= 1'h0;
          end
        end
      end
    end else begin
      bSelect <= 1'h0;
    end
    isLoadReg1 <= ~ _T_40;
    if (4'h9 == _T_42) begin
      aVal <= rMem_9;
    end else begin
      if (4'h8 == _T_42) begin
        aVal <= rMem_8;
      end else begin
        if (4'h7 == _T_42) begin
          aVal <= rMem_7;
        end else begin
          if (4'h6 == _T_42) begin
            aVal <= rMem_6;
          end else begin
            if (4'h5 == _T_42) begin
              aVal <= rMem_5;
            end else begin
              if (4'h4 == _T_42) begin
                aVal <= rMem_4;
              end else begin
                if (4'h3 == _T_42) begin
                  aVal <= rMem_3;
                end else begin
                  if (4'h2 == _T_42) begin
                    aVal <= rMem_2;
                  end else begin
                    if (4'h1 == _T_42) begin
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
    if (_T_45) begin
      if (_T_49) begin
        if (4'h9 == _T_50) begin
          bVal <= rMem_9;
        end else begin
          if (4'h8 == _T_50) begin
            bVal <= rMem_8;
          end else begin
            if (4'h7 == _T_50) begin
              bVal <= rMem_7;
            end else begin
              if (4'h6 == _T_50) begin
                bVal <= rMem_6;
              end else begin
                if (4'h5 == _T_50) begin
                  bVal <= rMem_5;
                end else begin
                  if (4'h4 == _T_50) begin
                    bVal <= rMem_4;
                  end else begin
                    if (4'h3 == _T_50) begin
                      bVal <= rMem_3;
                    end else begin
                      if (4'h2 == _T_50) begin
                        bVal <= rMem_2;
                      end else begin
                        if (4'h1 == _T_50) begin
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
        if (_T_55) begin
          bVal <= 32'h0;
        end else begin
          if (_T_62) begin
            bVal <= 32'h0;
          end
        end
      end
    end else begin
      if (isLoadReg1) begin
        bVal <= 32'h0;
      end else begin
        if (4'h9 == _T_50) begin
          bVal <= rMem_9;
        end else begin
          if (4'h8 == _T_50) begin
            bVal <= rMem_8;
          end else begin
            if (4'h7 == _T_50) begin
              bVal <= rMem_7;
            end else begin
              if (4'h6 == _T_50) begin
                bVal <= rMem_6;
              end else begin
                if (4'h5 == _T_50) begin
                  bVal <= rMem_5;
                end else begin
                  if (4'h4 == _T_50) begin
                    bVal <= rMem_4;
                  end else begin
                    if (4'h3 == _T_50) begin
                      bVal <= rMem_3;
                    end else begin
                      if (4'h2 == _T_50) begin
                        bVal <= rMem_2;
                      end else begin
                        if (4'h1 == _T_50) begin
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
    if (_T_45) begin
      if (_T_49) begin
        immVal <= 32'h0;
      end else begin
        if (_T_55) begin
          immVal <= _T_59;
        end else begin
          if (_T_62) begin
            immVal <= 32'h0;
          end
        end
      end
    end else begin
      immVal <= _T_68;
    end
    if (_T_45) begin
      wbrReg1 <= _T_46;
    end else begin
      if (isLoadReg1) begin
        wbrReg1 <= _T_46;
      end else begin
        wbrReg1 <= 4'h0;
      end
    end
    result <= $unsigned(alu_io_out);
    if (memSelect) begin
      if (isLoad) begin
        data <= dMem_io_rdData;
      end else begin
        data <= 32'h0;
      end
    end else begin
      data <= result;
    end
    if (_T_100) begin
      if (4'h0 == destination) begin
        rMem_0 <= data;
      end
    end
    if (_T_100) begin
      if (4'h1 == destination) begin
        rMem_1 <= data;
      end
    end
    if (_T_100) begin
      if (4'h2 == destination) begin
        rMem_2 <= data;
      end
    end
    if (_T_100) begin
      if (4'h3 == destination) begin
        rMem_3 <= data;
      end
    end
    if (_T_100) begin
      if (4'h4 == destination) begin
        rMem_4 <= data;
      end
    end
    if (_T_100) begin
      if (4'h5 == destination) begin
        rMem_5 <= data;
      end
    end
    if (_T_100) begin
      if (4'h6 == destination) begin
        rMem_6 <= data;
      end
    end
    if (_T_100) begin
      if (4'h7 == destination) begin
        rMem_7 <= data;
      end
    end
    if (_T_100) begin
      if (4'h8 == destination) begin
        rMem_8 <= data;
      end
    end
    if (_T_100) begin
      if (4'h9 == destination) begin
        rMem_9 <= data;
      end
    end
    if (reset) begin
      pc <= 8'h0;
    end else begin
      pc <= _T_37;
    end
    memSelect <= memSelectReg1;
    isLoad <= isLoadReg1;
    bValReg2 <= bVal;
    wbrReg2 <= wbrReg1;
    destination <= wbrReg2;
  end
endmodule
