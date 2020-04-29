import chisel3._

// instruction fetch stage of pipeline
class InstructionFetch(instructionMemory: InstructionMemory) extends Module {
  val io = IO(new Bundle {
    val instruction = Output(UInt(32.W))
  })

  val pc = RegInit(0.U(8.W)) // program counter starts at 0
  pc := pc + 4.U(8.W)        // increase by 4 each clock cycle (since instructions are 4 bytes)

  instructionMemory.io.rdAddr := pc                  // set memory read address to pc
  io.instruction := instructionMemory.io.rdData      // set instruction to be output of memory read
}