package mvp



import chisel3._
import chisel3.util._



class ALU extends Module {
  val io = IO(new Bundle{
    val a = Input(SInt(32.W))      // width of imput is 8
    val b = Input(SInt(32.W))
    val opcode = Input(UInt(5.W)) // dunno if there should be specific opcode for the ALU og if we use the whole
    //val select = Input(UInt(3.W)) // Currently not in use
    val out = Output(SInt(32.W))   // output is as big as input
  })

  io.out := 0.S

  switch(io.opcode){
    is(0.U) {
      io.out := io.a // Pass a
    }
    is(1.U) {
      io.out := io.a + 1.S // Increment a on opcode 00001
    }
    is(2.U) {
      io.out := io.a - 1.S // Decrement a on opcode 00010
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