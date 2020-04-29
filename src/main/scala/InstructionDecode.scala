import chisel3._
import chisel3.util._

class InstructionDecode(registerMem: Vec[UInt]) extends Module{
  val io = IO(new Bundle {
    val instruction = Input(UInt(32.W))

    val opcode       = Output(UInt(4.W))
    val memSelect    = Output(UInt(1.W))
    val bSelect      = Output(UInt(1.W))
    val isLoad       = Output(UInt(1.W))
    val aVal         = Output(UInt(32.W))
    val bVal         = Output(UInt(32.W))
    val immVal       = Output(UInt(32.W))
    val writeBackReg = Output(UInt(4.W))
  })

  io.opcode := io.instruction(1,4)
  io.memSelect := io.instruction(0)
  io.isLoad := ~(io.instruction(4))
  io.aVal := registerMem(io.instruction(12,15))

  val select = io.instruction(5,7)

  when(io.memSelect === 0.U(1.W)) { // ---------- ALU Instructions ----------
    io.writeBackReg := io.instruction(8,11)
    switch(select){
      is(0.U(3.W)) {            // ---- Reg-Reg ----
        io.bVal := registerMem(io.instruction(16,19))
        io.bSelect := 1.U(0.W)
      }
      is(1.U(3.W)) {           // ---- Reg-Imm ----
        io.immVal := Cat(0.U(16.W), io.instruction(16,31))
        io.bSelect := 0.U(0.W)
      }
      is(2.U(3.W)) { }         // ---- Reg ----  (don't need to do anything)
    }
  } otherwise {                     // ---------- Memory Instructions ---------
    io.immVal := Cat(0.U(24.W), io.instruction(20,27))
    io.bSelect := 0.U(1.W)
    when(io.isLoad === 1.U(1.W)) {      // ---- Load ----
      io.writeBackReg := io.instruction(8,11)
    } otherwise {                       // ---- Store ----
      io.writeBackReg := 0.U(4.W)
      io.bVal := registerMem(io.instruction(16,19))
    }
  }
