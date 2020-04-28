import chisel3._



class InstructionDecode extends Module{
  val io = IO(new Bundle {
    val instruction = Input(UInt(32.W))

    val destAddr    = Output(UInt(4.W))                       // destination register address for instruction
    val a           = Output(UInt(32.W))                      // value retrieved from reg
    val b           = Output(UInt(32.W))                      // value retrieved from reg
    val imm         = Output(UInt(32.W))                      // padded value from instruction
    val opcode      = Output(UInt(5.W))                       // can be shortened
    val rd          = Output(UInt(1.W))
    val wd          = Output(UInt(1.W))
    val memoryDestAddr = Output(UInt(8.W))
  })

  val registerA = Reg(Vec(32, UInt(32.W)))
  val registerB = Reg(Vec(32, UInt(32.W)))
  val memoryRegister = Reg(Vec(32, UInt(8.W)))



  io.opcode := io.instruction(0,4)
  io.destAddr := io.instruction(8,11)                           // Same for all instruciton set formats

  val select = io.instruction(5,7)

  // THESE ARE THE ALU INSTRUCTIONS // ------------------------------------------------------------
  when(io.opcode(0) === 0.U(1.W)) {
    io.a := registerA(io.instruction(12,15))

    when(select === 0.U(3.W)){                                   // ALU Reg-Reg

      io.b := registerB(io.instruction(16, 19))

    } .elsewhen(select === 1.U(3.W)) {                           // ALU Reg-Imm

      io.b := io.instruction(16, 31)
    }




    // THESE ARE THE LOAD AND STORE INSTRUCTIONS // ------------------------------------------------------------
  } otherwise {
    when(io.opcode === 16.U(5.W)){                              // Mem Load


      // a = data @ reg = load mem addr
      // b = padded offset
      // opcode = addition
      // d = destination reg
      io.rd := 1.U

    } .elsewhen(io.opcode === 17.U(5.W)){                      // Mem Store

      // a = data @ reg = load mem addr

      io.a := registerA(io.instruction(12,15))
      io.memoryDestAddr := memoryRegister(io.instruction(16, 19))
      io.wd := 1.U
    }
  }
}
