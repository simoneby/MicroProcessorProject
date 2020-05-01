
import chisel3._
import chisel3.util._


class InstructionMemory extends Module {
  val io = IO(new Bundle {
    val rdAddr  = Input(UInt(8.W))
    val rdData  = Output(UInt(32.W))
  })

  val mem = SyncReadMem((scala.math.pow(2,8)).toInt, UInt(32.W))

  io.rdData := mem(io.rdAddr)



  //mem.write(io.wrAddr , io.wrData)

  mem.write(0.U(8.W), "b00011001000100000000000000000101".U)
  mem.write(4.U(8.W), "b00011001001000010000000000000111".U)
  mem.write(8.U(8.W), "b00100000001100100001000000000000".U)
  mem.write(12.U(8.W),"b10001000000000010011000000000000".U)
  mem.write(16.U(8.W),"b10001000000000010011000000000000".U)
  mem.write(20.U(8.W),"b10000000010000010000000000000000".U)
  mem.write(24.U(8.W),"b00001010010001000000000000000000".U)

}
