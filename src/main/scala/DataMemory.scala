import chisel3._


class DataMemory extends Module{
  val io = IO(new Bundle {
    val rdAddr  = Input(UInt(8.W))
    val rdData  = Output(UInt(32.W))
    val wrAddr = Input(UInt(8.W))
    val wrData = Input(UInt(8.W))
    val rd = Input(UInt(1.W))
    val wr = Input(UInt(1.W))
  })

  val mem = SyncReadMem((scala.math.pow(2,8)).toInt, UInt(32.W))

  when (io.rd === 1.U){
    io.rdData := mem(io.rdAddr)
  }

  when (io.wr === 1.U){
    mem(io.wrAddr) := io.wrData
  }


}