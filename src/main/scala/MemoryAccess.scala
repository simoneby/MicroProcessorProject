import chisel3._


class MemoryAccess(dataMem : DataMemory) extends Module {
  val io = IO(new Bundle{
    val memSelect   = Input(UInt(1.W))
    val isLoad      = Input(UInt(1.W))
    val result      = Input(UInt(32.W))
    val writeData   = Input(UInt(32.W))

    val data        = Output(UInt(32.W))
  })

  when(io.memSelect === 1.U(1.W)) {
    when(io.isLoad === 1.U(1.W)){         // ----- Load -----
      dataMem.io.wr := 0.U(1.W)
      dataMem.io.rd := 1.U(1.W)
      dataMem.io.rdAddr := io.result
      io.data := dataMem.io.rdData
    } otherwise {                         // ----- Store -----
      dataMem.io.wr := 1.U(1.W)
      dataMem.io.rd := 0.U(1.W)
      dataMem.io.wrAddr := io.result
      dataMem.io.wrData := io.writeData
      io.data := 0.U(32.W)
    }
  } otherwise {
    dataMem.io.rd := 0.U(1.W)
    dataMem.io.wr := 0.U(1.W)
    io.data := io.result
  }

}
