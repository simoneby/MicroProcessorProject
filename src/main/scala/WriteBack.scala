import chisel3._

class WriteBack extends Module {
  val io = IO(new Bundle{
    val data              = Input(UInt(32.W))
    val destination       = Input(UInt(4.W))     //Register address
  })


  val instructionDecode = new InstructionDecode


  instructionDecode.registerA(io.destination) := io.data


  // need to write back result into register according to address
}
