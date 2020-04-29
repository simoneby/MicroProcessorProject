import chisel3._
import chisel3.util._

class Datapath {
  val iW = 32;  // 32 bit instructions
  val aW = 8;   // 8 bit addresses in instruction memory
  val rW = 4;   // 4 bit addresses for registers
  val vW = 32;  // 32 bit immediates

  // define instruction memory
  val iMem = new InstructionMemory()
  // TODO initial read to load in instruction data

  // define data memory
  val dMem = new DataMemory()
  // TODO initial read to load in program data

  // define register bank (10 32-bit registers)
  val rMem = Reg(Vec(10, UInt(32.W)))

  // --------- pipeline controls ---------

  val _IF = new InstructionFetch(iMem)
  // IF output into buffer reg
  val instructionReg = RegNext(_IF.io.instruction)

  val _ID = new InstructionDecode()
  // ID input from buffer reg
  _ID.io.instruction := instructionReg
  // ID ouput buffer registers
  val opcodeReg = RegNext(_ID.io.opcode)
  val memSelectReg1 = RegNext(_ID.io.memSelect)
  val isLoadReg1 = RegNext(_ID.io.isLoad)
  val aValReg = RegNext(_ID.io.aVal)
  val bValReg1 = RegNext(_ID.io.bVal)
  val immValReg = RegNext(_ID.io.immVal)
  val wbrReg1 = RegNext(_ID.io.writeBackReg)

  val _EX = new Execute()
  // EX input from buffer reg
  _EX.io.opcode := opcodeReg
  _EX.io.memSelect := memSelectReg1
  _EX.io.aVal := aValReg
  _EX.io.bVal := bValReg1
  _EX.io.immVal := immValReg
  // EX output buffer registers
  val memSelectReg2 = RegNext(memSelectReg1)  // pass through
  val isLoadReg2 = RegNext(isLoadReg1)  // pass through
  val resultReg = RegNext(_EX.io.result)
  val bValReg2 = RegNext(bValReg1)  // pass through
  val wbrReg2 = RegNext(wbrReg1)  // pass through

  val _MA = new MemoryAccess()
  // MA input from buffer reg
  _MA.io.memSelect := memSelectReg2
  _MA.io.isLoad := isLoadReg2
  _MA.io.memoryAddress := resultReg
  _MA.io.writeData := bValReg2
  // MA output buffer register
  val dataReg = RegNext(_MA.io.readData)
  val wbrReg3 = RegNext(wbrReg2)  // pass through

  val _WB = new WriteBack()
  // WB input from buffer reg
  _WB.io.data := dataReg
  _WB.io.destination := wbrReg3

}
