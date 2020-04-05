

import chisel3._
import chisel3.util.{is, switch}


class ALU extends Module {
  val io = IO(new Bundle{
    val a = Input(UInt(32.W))      // width of imput is 8
    val b = Input(UInt(32.W))
    val opcode = Input(UInt(5.W)) // dunno if there should be specific opcode for the ALU og if we use the whole
    val select = Input(UInt(3.W)) // Currently not in use
    val out = Output(UInt(32.W))   // output is as big as input
  })

  io.out := 0.U

  when (io.select === 1.U){
    io.a := io.b
    io.b := io.a
  }

  switch(io.opcode) {

    is(0.U) {
      io.out := io.a // Pass a
    }
    is(1.U) {
      io.out := io.a + 1.U // Increment a on opcode 00001
    }
    is(2.U) {
      io.out := io.a - 1.U // Decrement a on opcode 00010
    }
    is(3.U) {
      io.out := io.a + io.b // add a and b on opcode 00011
    }
    is(4.U) {
      io.out := io.a - io.b // subtract a and b on opcode 00100
    }
    is(5.U) {
      io.out := ~io.a // bitwise NOT on opcode 00101
    }
    is(6.U) {
      io.out := io.a & io.b // bitwise AND
    }
    is(7.U) {
      io.out := io.a | io.b // bitwise OR
    }
    is(8.U) {
      io.out := io.a ^ io.b // bitwise XOR
    }
  }

}