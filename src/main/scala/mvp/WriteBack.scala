package mvp

import chisel3._

class WriteBack(registerMem : Vec[UInt]) extends Module {
  val io = IO(new Bundle{
    val data              = Input(UInt(32.W))
    val destination       = Input(UInt(4.W))
  })

  when(io.destination =/= 0.U(4.W)){  // can't overwrite 0 in reg0, nice
    registerMem(io.destination) := io.data
  }

}
