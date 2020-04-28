import chisel3._


class Execute extends Module{
  val io = IO(new Bundle{
    val destAddr    = Input(UInt(4.W))   // destination register address for instruction
    val a           = Input(UInt(32.W))  // value retrieved from reg
    val b           = Input(UInt(32.W))  // value retrieved from reg or immediate
    val opcode      = Input(UInt(5.W))   // This can be made shorter
    val rd          = Input(UInt(1.W))
    val wd          = Input(UInt(1.W))
    val memoryDestAddr = Input(UInt(8.W))

    val dataResult = Output(UInt(32.W))
    val writeBackReg = Output(UInt(4.W))

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
