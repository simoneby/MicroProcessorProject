module Datapath( // @[:@99.2]
  input   clock, // @[:@100.4]
  input   reset, // @[:@101.4]
  output  io_led // @[:@102.4]
);
  reg [31:0] cntReg; // @[Datapath.scala 176:23:@241.4]
  reg [31:0] _RAND_0;
  reg  blkReg; // @[Datapath.scala 177:23:@242.4]
  reg [31:0] _RAND_1;
  wire [32:0] _T_110; // @[Datapath.scala 179:20:@243.4]
  wire [31:0] _T_111; // @[Datapath.scala 179:20:@244.4]
  wire  _T_112; // @[Datapath.scala 180:15:@246.4]
  wire  _T_114; // @[Datapath.scala 182:15:@249.6]
  wire [31:0] _GEN_78; // @[Datapath.scala 180:28:@247.4]
  wire  _GEN_79; // @[Datapath.scala 180:28:@247.4]
  assign _T_110 = cntReg + 32'h1; // @[Datapath.scala 179:20:@243.4]
  assign _T_111 = cntReg + 32'h1; // @[Datapath.scala 179:20:@244.4]
  assign _T_112 = cntReg == 32'h17d783f; // @[Datapath.scala 180:15:@246.4]
  assign _T_114 = ~ blkReg; // @[Datapath.scala 182:15:@249.6]
  assign _GEN_78 = _T_112 ? 32'h0 : _T_111; // @[Datapath.scala 180:28:@247.4]
  assign _GEN_79 = _T_112 ? _T_114 : blkReg; // @[Datapath.scala 180:28:@247.4]
  assign io_led = blkReg; // @[Datapath.scala 184:10:@252.4]
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
  cntReg = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  blkReg = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cntReg <= 32'h0;
    end else begin
      if (_T_112) begin
        cntReg <= 32'h0;
      end else begin
        cntReg <= _T_111;
      end
    end
    if (reset) begin
      blkReg <= 1'h0;
    end else begin
      if (_T_112) begin
        blkReg <= _T_114;
      end
    end
  end
endmodule
