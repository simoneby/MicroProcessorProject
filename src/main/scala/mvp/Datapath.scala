package mvp

import chisel3._
import chisel3.util._


//import chisel3.core.{Input, Output, RegInit, when}
//import chisel3.{Bool, Bundle, Module, Reg, UInt, Vec}
//import chisel3.util.{Cat, is, switch}



class Datapath extends Module{
  val io = IO(new Bundle{
    val a = Input(Bool()) // Dummy input
    val b = Output(Bool())
  })

  io.b := io.a


  class InstructionFetch() extends Module {
    val io = IO(new Bundle {
      val instruction = Output(UInt(32.W))
    })

    var pc = RegInit(0.U(8.W)) // program counter starts at 0
    pc := pc + 4.U(8.W)        // increase by 4 each clock cycle (since instructions are 4 bytes)

    val iMem = Module(new InstructionMemory())

    iMem.io.rdAddr := pc                 // set memory read address to pc
    io.instruction := iMem.io.rdData      // set instruction to be output of memory read
  }

  class InstructionDecode() extends Module{
    val io = IO(new Bundle {
      val instruction = Input(UInt(32.W))

      val writeBackEnable = Input(Bool())
      val writeBackRegAddress = Input(UInt(4.W))
      val writeBackData = Input(UInt(32.W))

      val opcode       = Output(UInt(4.W))
      val memSelect    = Output(Bool())
      val bSelect      = Output(Bool())
      val isLoad       = Output(Bool())
      val aVal         = Output(UInt(32.W))
      val bVal         = Output(UInt(32.W))
      val immVal       = Output(UInt(32.W))
      val writeBackReg = Output(UInt(4.W))
    })

    val rMem = Reg(Vec(10, UInt(32.W)))


    io.opcode := io.instruction(4,1)
    io.memSelect := io.instruction(0)                // MIGHT BE A BUG HERE WHEN CHANGING TYPE TO BOOL
    io.isLoad := ~io.instruction(4)                 // MIGHT BE A BUG HERE
    io.aVal := rMem(io.instruction(15,12))
    io.bVal := 0.U(32.W)
    io.immVal := 0.U(32.W)
    io.bSelect := false.B

    when(!io.memSelect) { // ---------- ALU Instructions ----------
      io.writeBackReg := io.instruction(11,8)

      switch(io.instruction(7,5)) {

        is(0.U) { // ---- Reg-Reg ----
          io.bVal := rMem(io.instruction(19,16))
          io.bSelect := true.B
        }

        is(1.U) { // ---- Reg-Imm ----
          io.immVal := Cat(0.U(16.W), io.instruction(31,16))
          io.bSelect := false.B
        }

        is(2.U) {} // ---- Reg ----  (don't need to do anything)
      }
    }
     .otherwise {                     // ---------- Memory Instructions ---------
      io.immVal := Cat(0.U(24.W), io.instruction(27,20))
      io.bSelect := false.B

      when(io.isLoad) {      // ---- Load ----
        io.writeBackReg := io.instruction(11,8)

      } .otherwise {                       // ---- Store ----
        io.writeBackReg := 0.U(4.W)
        io.bVal := rMem(io.instruction(19,16))
      }
    }

    when(io.writeBackEnable && !(io.writeBackRegAddress === 0.U)){
      rMem(io.writeBackRegAddress) := io.writeBackData
    }

  }



  class Execute() extends Module{
    val io = IO(new Bundle{
      val opcode    = Input(UInt(4.W))
      val bSelect   = Input(Bool())
      val aVal      = Input(UInt(32.W))
      val bVal      = Input(UInt(32.W))
      val immVal    = Input(UInt(32.W))

      val result    = Output(UInt(32.W))
    })

    val alu = Module(new ALU())

    alu.io.opcode := io.opcode
    alu.io.a := io.aVal.asSInt()
    when(io.bSelect === true.B) { // ALU must know to ignore second opearnd for 1-operand opcodes
      alu.io.b := io.bVal.asSInt()
    } otherwise {
      alu.io.b := io.immVal.asSInt()
    }

    io.result := alu.io.out.asUInt()
  }

  class MemoryAccess() extends Module {
    val io = IO(new Bundle{
      val memSelect   = Input(Bool())
      val isLoad      = Input(Bool())
      val result      = Input(UInt(32.W))
      val writeData   = Input(UInt(32.W))

      val data        = Output(UInt(32.W))
      val writeBackEnable = Output(Bool())
    })

    val dMem = Module(new DataMemory())
    dMem.io.wrAddr := 0.U(8.W)
    dMem.io.rdAddr := 0.U(8.W)
    dMem.io.wrData := 0.U(32.W)

    io.writeBackEnable := false.B

    when(io.memSelect) {
      when(io.isLoad){         // ----- Load -----
        dMem.io.wr := false.B
        dMem.io.rd := true.B
        dMem.io.rdAddr := io.result
        io.data := dMem.io.rdData
      } otherwise {                         // ----- Store -----
        dMem.io.wr := true.B
        dMem.io.rd := false.B
        dMem.io.wrAddr := io.result
        dMem.io.wrData := io.writeData
        io.data := 0.U(32.W)
      }
    } otherwise {
      dMem.io.rd := false.B
      dMem.io.wr := false.B
      io.data := io.result
      io.writeBackEnable := true.B
    }

  }

  class WriteBack() extends Module {
    val io = IO(new Bundle{
      val writeBackEnable = Input(Bool())
      val data              = Input(UInt(32.W))
      val destination       = Input(UInt(4.W))
      val dataOut           = Output(UInt(32.W))
      val destOut           = Output(UInt(4.W))
    })

    io.destOut := 0.U
    when (io.writeBackEnable){
      io.dataOut := io.data
      io.destOut := io.destination
    } .otherwise {
      io.dataOut := 0.U(32.W)
      io.destOut := 0.U(4.W)
    }


  }

  // ------------------------------ pipeline controls ----------------------------

  val _IF = Module(new InstructionFetch())

  // IF output into buffer reg
  val instructionReg = RegNext(_IF.io.instruction)


  val _ID = Module(new InstructionDecode())

  // ID input from buffer reg
  _ID.io.instruction := instructionReg

  // ID ouput buffer registers
  val opcodeReg = RegNext(_ID.io.opcode)
  val memSelectReg1 = RegNext(_ID.io.memSelect)
  val bSelectReg = RegNext(_ID.io.bSelect)
  val isLoadReg1 = RegNext(_ID.io.isLoad)
  val aValReg = RegNext(_ID.io.aVal)
  val bValReg1 = RegNext(_ID.io.bVal)
  val immValReg = RegNext(_ID.io.immVal)
  val wbrReg1 = RegNext(_ID.io.writeBackReg)


  val _EX = Module(new Execute())

  // EX input from buffer reg
  _EX.io.opcode := opcodeReg
  _EX.io.bSelect := bSelectReg
  _EX.io.aVal := aValReg
  _EX.io.bVal := bValReg1
  _EX.io.immVal := immValReg

  // EX output buffer registers
  val memSelectReg2 = RegNext(memSelectReg1)  // pass through
  val isLoadReg2 = RegNext(isLoadReg1)  // pass through
  val resultReg = RegNext(_EX.io.result)
  val bValReg2 = RegNext(bValReg1)  // pass through
  val wbrReg2 = RegNext(wbrReg1)  // pass through


  val _MA = Module(new MemoryAccess())

  // MA input from buffer reg
  _MA.io.memSelect := memSelectReg2
  _MA.io.isLoad := isLoadReg2
  _MA.io.result := resultReg
  _MA.io.writeData := bValReg2

  // MA output buffer register
  val dataReg = RegNext(_MA.io.data)
  val wbrReg3 = RegNext(wbrReg2)  // pass through


  val _WB = Module(new WriteBack())

  // WB input from buffer reg
  _WB.io.data := dataReg
  _WB.io.destination := wbrReg3
  _WB.io.writeBackEnable := _MA.io.writeBackEnable

  _ID.io.writeBackEnable := _WB.io.writeBackEnable
  _ID.io.writeBackRegAddress := _WB.io.destOut
  _ID.io.writeBackData := _WB.io.dataOut


}

object DatapathMain extends App {
  chisel3.Driver.execute(Array[String](), () => new Datapath())
}

