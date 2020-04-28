
import chisel3._
import chisel3.util._


class InstructionMemory extends Module {
  val io = IO(new Bundle {
    val rdAddr  = Input(UInt(8.W))
    val rdData  = Output(UInt(32.W))
  })

  val mem = SyncReadMem((scala.math.pow(2,8)).toInt, UInt(32.W))

  io.rdData := mem(io.rdAddr)
}
