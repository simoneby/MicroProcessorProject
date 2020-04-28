import chisel3._


class DataMemory extends Module{
  val io = IO(new Bundle {
    val rdAddr  = Input(UInt(8.W))
    val rdData  = Output(UInt(32.W))
    val wdAddr = Input(UInt(8.W))
    val wdData = Input(UInt(8.W))
    val rd = Input(UInt(1.W))
    val wd = Input(UInt(1.W))
  })

  val mem = SyncReadMem((scala.math.pow(2,8)).toInt, UInt(32.W))

  when (io.rd === 1.U){
    io.rdData := mem(io.rdAddr)
  }

  when (io.wd === 1.U){
    mem(io.wdAddr) := io.wdData
  }


}