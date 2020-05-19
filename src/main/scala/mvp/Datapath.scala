package mvp

import chisel3._
import chisel3.util._

class Datapath extends Module {
  val io = IO(new Bundle {




    val led = Output(UInt(1.W))

  })

  // ------------------------------ module instantiation ----------------------------

  // define instruction memory
  val iMem = Module(new InstructionMemory())
  //iMem.io.testSelect := io.testSelect

  // define data memory
  val dMem = Module(new DataMemory())  // TODO initial read to load in program data
  dMem.io.wrAddr := 0.U
  dMem.io.wrData := 0.U
  dMem.io.rdAddr := 0.U
  dMem.io.wr := true.B
  io.led := dMem.io.led

  // define register bank (10 32-bit registers)
  val rMem =  RegInit(VecInit(Seq.fill(10)(0.U(32.W))))

  // define ALU to be used
  val alu = Module(new ALU())

  // ------------------------------ pipeline registers ----------------------------

  // IF output buffer reg
  val instructionReg = Reg(UInt(32.W))

  // ID output buffer registers
  val opcodeReg = Reg(UInt(4.W))
  val memSelectReg1 = Reg(Bool())
  val bSelectReg = Reg(Bool())
  val isLoadReg1 = Reg(Bool())
  val aValReg = Reg(UInt(32.W))
  val bValReg1 = Reg(UInt(32.W))
  val immValReg = Reg(UInt(32.W))
  val wbrReg1 = Reg(UInt(4.W))

  // EX output buffer registers
  val resultReg = Reg(UInt(32.W))

  // MA output buffer registers
  val dataReg = Reg(UInt(32.W))

  // ------------------------------ START PIPELINE STAGES ----------------------------
  // ------------------------------ instruction fetch ----------------------------

  var pc = RegInit(0.U(8.W)) // program counter starts at 0
  pc := pc + 1.U(8.W)

  iMem.io.rdAddr := pc // set memory read address to pc
  instructionReg := iMem.io.rdData // set instruction to be output of memory read

  // ------------------------------ instruction decode ----------------------------

  val instruction = instructionReg

  memSelectReg1 := instruction(4) // MIGHT BE A BUG HERE WHEN CHANGING TYPE TO BOOL
  isLoadReg1 := ~instruction(0)
  aValReg := rMem(instruction(15, 12))

  when(instruction(4) === 0.U(1.W)) { // ---------- ALU Instructions ----------
    opcodeReg := instruction(3, 0)
    wbrReg1 := instruction(11, 8)

    switch(instruction(7, 5).asUInt()) {

      is(0.U) { // ---- Reg-Reg ----
        bValReg1 := rMem(instruction(19, 16))
        immValReg := 0.U(32.W)
        bSelectReg := true.B
      }

      is(1.U) { // ---- Reg-Imm ----
        bValReg1 := 0.U(32.W)
        immValReg := Cat(0.U(16.W), instruction(31, 16))
        bSelectReg := false.B
      }

      is(2.U) { // ---- Reg ----
        bValReg1 := 0.U(32.W)
        immValReg := 0.U(32.W)
        bSelectReg := false.B
      }
    }
  }.otherwise { // ---------- Memory Instructions ---------
    opcodeReg := 4.U(4.W)
    immValReg := Cat(0.U(24.W), instruction(27, 20))
    bSelectReg := false.B

    when(instruction(0) === 0.U(1.W)) { // ---- Load ----
      wbrReg1 := instruction(11, 8)
      bValReg1 := 0.U(32.W)

    }.otherwise { // ---- Store ----
      wbrReg1 := 0.U(4.W)
      bValReg1 := rMem(instruction(19, 16))
    }
  }

  // ------------------------------ execute ----------------------------

  val opcode = opcodeReg.asUInt()
  val bSelect = bSelectReg
  val aVal = aValReg.asUInt()
  val bVal = bValReg1.asUInt()
  val immVal = immValReg

  alu.io.opcode := opcode
  alu.io.a := aVal
  alu.io.b := 0.U
  when(bSelect === true.B) { // ALU must know to ignore second operand for 1-operand opcodes
    alu.io.b := bVal
  }
  .otherwise {
    alu.io.b := immVal
  }

  resultReg := alu.io.out.asUInt()

  when(memSelectReg1 === true.B){
    val result = resultReg(7,0) // memory addresses only go up to 8 bits so cut off excess //TODO don't use reg cause clk?
    when(isLoadReg1 === true.B){
      dMem.io.wr := false.B
      dMem.io.rdAddr := result
    }.otherwise{
      dMem.io.wr := true.B
      dMem.io.wrAddr := result
      dMem.io.wrData := bValReg1
    }
  }.otherwise{
    dMem.io.wr := false.B
  }

  val memSelectReg2 = RegNext(memSelectReg1) // pass through
  val isLoadReg2 = RegNext(isLoadReg1) // pass through
  val wbrReg2 = RegNext(wbrReg1) // pass through

  // ------------------------------ memory access ----------------------------

  val memSelect = memSelectReg2
  val isLoad = isLoadReg2

  when(memSelect === true.B) {
    when(isLoad === true.B) { // ----- Load -----
      dataReg := dMem.io.rdData
    }.otherwise {             // ----- Store -----
      dataReg := 0.U(32.W)
    }
  }.otherwise {
    dataReg := resultReg
  }

  val wbrReg3 = RegNext(wbrReg2) // pass through

  // ------------------------------ write back ----------------------------

  val data = dataReg
  val destination = wbrReg3

  when(destination =/= 0.U(4.W)) { // can't overwrite 0 in reg0
    rMem(destination) := data
  }

  // ------------------------------ testing outputs ----------------------------



}

object DatapathMain extends App {
  chisel3.Driver.execute(Array[String](), () => new Datapath())
}

