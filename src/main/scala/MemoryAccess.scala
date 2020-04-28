import chisel3._


class MemoryAccess extends Module {
  val io = IO(new Bundle{
    val memoryAddress      = Input(UInt(8.W))
    val writeData          = Input(UInt(32.W))
    val rd                 = Input(UInt(1.W))
    val wd                 = Input(UInt(1.W))

    val readData           = Output(UInt(8.W))

  })

  val dataMemory = new DataMemory
  when (io.rd === 1.U){
    dataMemory.io.rdAddr := io.memoryAddress
    io.readData := io.readData
  }

  when (io.wd === 1.U){
    dataMemory.io.wdAddr := io.memoryAddress
    dataMemory.io.wdData := io.writeData
  }



}
