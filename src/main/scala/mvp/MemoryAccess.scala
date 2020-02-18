package mvp

import chisel3._


class MemoryAccess(dataMem : DataMemory) extends Module {
  val io = IO(new Bundle{
    val memSelect   = Input(Bool())
    val isLoad      = Input(Bool())
    val result      = Input(UInt(32.W))
    val writeData   = Input(UInt(32.W))

    val data        = Output(UInt(32.W))
  })

  when(io.memSelect) {
    when(io.isLoad){         // ----- Load -----
      dataMem.io.wr := false.B
      dataMem.io.rd := true.B
      dataMem.io.rdAddr := io.result
      io.data := dataMem.io.rdData
    } otherwise {                         // ----- Store -----
      dataMem.io.wr := true.B
      dataMem.io.rd := false.B
      dataMem.io.wrAddr := io.result
      dataMem.io.wrData := io.writeData
      io.data := 0.U(32.W)
    }
  } otherwise {
    dataMem.io.rd := false.B
    dataMem.io.wr := false.B
    io.data := io.result
  }

}
