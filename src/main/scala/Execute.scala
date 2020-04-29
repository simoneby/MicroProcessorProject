import chisel3._


class Execute(alu : ALU) extends Module{
  val io = IO(new Bundle{
    val opcode    = Input(UInt(4.W))
    val bSelect   = Input(UInt(1.W))
    val aVal      = Input(UInt(32.W))
    val bVal      = Input(UInt(32.W))
    val immVal    = Input(UInt(32.W))

    val result    = Output(UInt(32.W))
  })

  alu.io.opcode := io.opcode
  alu.io.a := io.aVal
  when(io.bSelect === 1.U(1.W)) { // ALU must know to ignore second opearnd for 1-operand opcodes
    alu.io.b := io.bVal
  } otherwise {
    alu.io.b := io.immVal
  }

  io.result := alu.io.out
}
