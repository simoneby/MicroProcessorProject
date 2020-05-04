package mvp

import chisel3._
import chisel3.util._

//import chisel3.core.{Input, Output, RegInit, when}
//import chisel3.{Bool, Bundle, Module, Reg, UInt, Vec}
//import chisel3.util.{Cat, is, switch}



class Datapath extends Module {
  val io = IO(new Bundle {
    val led = Output(UInt(1.W))
  })

  // ------------------------------ pipeline controls ----------------------------

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

  // ------------------------------ memory instantiation ----------------------------

  // define instruction memory
  val iMem = Module(new InstructionMemory())
  // TODO initial read to load in instruction data

  // define data memory
  val dMem = Module(new DataMemory())
  // TODO initial read to load in program data

  // define register bank (10 32-bit registers)
  val rMem = Reg(Vec(10, UInt(32.W)))

  // define ALU to be used
  val alu = Module(new ALU())

  // ------------------------------ START PIPELINE STAGES ----------------------------
  // ------------------------------ instruction fetch ----------------------------

  var pc = RegInit(0.U(8.W)) // program counter starts at 0
  pc := pc + 4.U(8.W) // increase by 4 each clock cycle (since instructions are 4 bytes)

  iMem.io.rdAddr := pc // set memory read address to pc
  instructionReg := iMem.io.rdData // set instruction to be output of memory read

  // ------------------------------ instruction decode ----------------------------

  val instruction = instructionReg

  opcodeReg := instruction(4, 1)
  memSelectReg1 := instruction(0) // MIGHT BE A BUG HERE WHEN CHANGING TYPE TO BOOL
  isLoadReg1 := ~instruction(4) // MIGHT BE A BUG HERE
  aValReg := rMem(instruction(15, 12))

  when(!memSelectReg1) { // ---------- ALU Instructions ----------
    wbrReg1 := instruction(11, 8)

    switch(instruction(7, 5)) {

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
    immValReg := Cat(0.U(24.W), instruction(27, 20))
    bSelectReg := false.B

    when(isLoadReg1) { // ---- Load ----
      wbrReg1 := instruction(11, 8)
      bValReg1 := 0.U(32.W)

    }.otherwise { // ---- Store ----
      wbrReg1 := 0.U(4.W)
      bValReg1 := rMem(instruction(19, 16))
    }
  }

  // ------------------------------ execute ----------------------------
  val opcode = opcodeReg
  val bSelect = bSelectReg
  val aVal = aValReg
  val bVal = bValReg1
  val immVal = immValReg

  alu.io.opcode := opcode
  alu.io.a := aVal.asSInt()
  when(bSelect === true.B) { // ALU must know to ignore second opearnd for 1-operand opcodes
    alu.io.b := bVal.asSInt()
  } otherwise {
    alu.io.b := immVal.asSInt()
  }

  resultReg := alu.io.out.asUInt()

  val memSelectReg2 = RegNext(memSelectReg1) // pass through
  val isLoadReg2 = RegNext(isLoadReg1) // pass through
  val bValReg2 = RegNext(bValReg1) // pass through
  val wbrReg2 = RegNext(wbrReg1) // pass through

  // ------------------------------ memory access ----------------------------

  val memSelect = memSelectReg2
  val isLoad = isLoadReg2
  val result = resultReg
  val writeData = bValReg2

  when(memSelect) {
    when(isLoad) { // ----- Load -----
      dMem.io.wr := false.B
      dMem.io.rd := true.B
      dMem.io.rdAddr := result
      dMem.io.wrAddr := 0.U(8.W)
      dMem.io.wrData := 0.U(32.W)
      dataReg := dMem.io.rdData
    } otherwise { // ----- Store -----
      dMem.io.wr := true.B
      dMem.io.rd := false.B
      dMem.io.rdAddr := 0.U(8.W)
      dMem.io.wrAddr := result
      dMem.io.wrData := writeData
      dataReg := 0.U(32.W)
    }
  } otherwise {
    dMem.io.rd := false.B
    dMem.io.wr := false.B
    dMem.io.rdAddr := 0.U(8.W)
    dMem.io.wrAddr := 0.U(8.W)
    dMem.io.wrData := 0.U(32.W)
    dataReg := result
  }

  val wbrReg3 = RegNext(wbrReg2) // pass through

  // ------------------------------ write back ----------------------------

  val data = dataReg
  val destination = wbrReg3

  when(destination =/= 0.U(4.W)) { // can't overwrite 0 in reg0, nice
    rMem(destination) := data
  }

  when(rMem(1) === 1.U(32.W)) {
    io.led := 1.U
  }
    .otherwise {
      io.led := 0.U
    }


}

object DatapathMain extends App {
  chisel3.Driver.execute(Array[String](), () => new Datapath())
}

