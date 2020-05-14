package mvp



import chisel3._
import chisel3.util._



class ALU extends Module {
  val io = IO(new Bundle{
    val a = Input(UInt(32.W))
    val b = Input(UInt(32.W))
    val opcode = Input(UInt(5.W))
    val out = Output(UInt(32.W))
  })

  io.out := 0.U

  switch(io.opcode){
    is(0.U) { io.out := 0.U }               // Bubble
    is(1.U) { io.out := io.a }              // Pass a
    is(2.U) { io.out := io.a + 1.U}         // Increment a on opcode 00001
    is(3.U) { io.out := io.a - 1.U}         // Decrement a on opcode 00010
    is(4.U) { io.out := io.a + io.b}        // add a and b on opcode 00011
    is(5.U) { io.out := io.a - io.b}        // subtract a and b on opcode 00100
    is(6.U) { io.out := ~io.a}              // bitwise NOT on opcode 00101
    is(7.U) {io.out := io.a & io.b}         // bitwise AND
    is(8.U) {io.out := io.a | io.b}         // bitwise OR
    is(9.U) {io.out := io.a ^ io.b }        // bitwise XOR
  }
}