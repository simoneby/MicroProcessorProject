module Datapath( // @[:@250.2]
  input   clock, // @[:@251.4]
  input   reset, // @[:@252.4]
  input   io_a, // @[:@253.4]
  output  io_b // @[:@253.4]
);
  assign io_b = io_a; // @[Datapath.scala 18:8:@255.4]
endmodule
