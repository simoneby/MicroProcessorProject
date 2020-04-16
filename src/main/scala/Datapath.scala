import chisel3._

class Datapath {
  val iW = 32;  // 32 bit instructions
  val aW = 8;   // 8 bit addresses in instruction memory
  val vW = 32;  // 32 bit immediates

  // read-only instruction memory
  class InstructionMem extends Module {
    val io = IO(new Bundle {
      val rdAddr  = Input(UInt(aW.W))
      val rdData  = Output(UInt(iW.W))
    })

    val mem = SyncReadMem((scala.math.pow(2,aW)).toInt, UInt(iW.W))

    io.rdData := mem(io.rdAddr)
  }

  // instruction fetch stage of pipeline
  class instruction_fetch extends Module {
    val io = IO(new Bundle {
      val instruction = Output(UInt(iW.W))
    })

    val pc = RegInit(0.U(aW.W)) // program counter starts at 0
    pc := pc + 4.U(aW.W)        // increase by 4 each clock cycle (since instructions are 4 bytes)

    val iMem = Module(new InstructionMem) // create instance of instruction memory
    iMem.io.rdAddr := pc                  // set memory read address to pc
    io.instruction := iMem.io.rdData      // set instruction to be output of memory read
  }

  class instruction_decode extends Module {
    val io = IO(new Bundle {
      val instruction = Input(UInt(iW.W))
      val a           = Output(UInt(vW.W))
      val b           = Output(UInt(vW.W))
      val imm         = Output(UInt(vW.W))
    })

    // parse opcode
    // switch statement on opcode
        // parse & extend immediate if necessary
        // read values of a and b from register memory
  }

  // create a class for register memory?
}
