import chisel3._


class Execute extends Module{
  val io = IO(new Bundle{
    val opcode    = Input(UInt(4.W))
    val memSelect = Input(UInt(1.W))
    val aVal      = Input(UInt(32.W))
    val bVal      = Input(UInt(32.W))
    val immVal    = Input(UInt(32.W))

    val result    = Output(UInt(32.W))
  })

  // Go to Mem Access to read memory
  when (io.rd === 1.U){
    val memAccess = new MemoryAccess
    memAccess.io.memoryAddress := io.memoryDestAddr
    memAccess.io.rd := io.rd
    io.dataResult := memAccess.io.readData
  }
    // Go to Mem Access to write memory
  .elsewhen(io.wd === 1.U){
    val memAccess = new MemoryAccess
    memAccess.io.memoryAddress := io.memoryDestAddr
    memAccess.io.wd := io.wd
    memAccess.io.writeData := io.a
    io.dataResult := 0.U(32.W)

  }
  .otherwise {
    val alu = new ALU
    alu.io.a := io.a
    alu.io.b := io.b
    alu.io.opcode := io.opcode
    io.dataResult := alu.io.out

  }


}
