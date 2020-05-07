package mvp

import chisel3._
import chisel3.util._

class InstructionMemory() extends Module {
  val io = IO(new Bundle {
    val testSelect = Input(UInt(3.W))
    val rdAddr     = Input(UInt(8.W))
    val rdData     = Output(UInt(32.W))
  })

  val mem = Wire(Vec(100, UInt(32.W)));
  for( i <- 0 to 99){
    mem(i) := 0.U(32.W)
  }
  io.rdData := mem(io.rdAddr)

  switch(io.testSelect){
    // ----- Test 0 : Single ALU Instruction -----
    is(0.U(3.W)){
      mem(0) := "b0000000000001000_0000_0001_001_0_0011".U
    }
    // ----- Test 1 : Basic ALU Pipeline Test -----
    is(1.U(3.W)){
      mem(0) := "b0000000000000101_0000_0001_001_0_0011".U
      mem(1) := "b0000000000000011_0000_0010_001_0_0011".U
      mem(2) := "b0000000000000111_0000_0011_001_0_0011".U
      mem(3) := "b0000000000000100_0000_0100_001_0_0011".U
      mem(4) := "b0000000000000000_0001_0100_010_0_0001".U
      mem(5) := "b000000000000_0010_0001_0011_000_0_0011".U
      mem(6) := "b0000000000000000_0010_0001_010_0_0010".U
      mem(7) := "b0000000000000001_0000_0000_001_0_0011".U
      mem(8) := "b000000000000_0100_0010_0011_000_0_0011".U
    }
    // ----- Test 2 : Single Memory Instruction -----
    is(2.U(3.W)){
      // TODO
    }
    // ----- Test 3 : Basic Program -----
    is(3.U(3.W)){
      // TODO
    }
  }


  /*
  val mem = SyncReadMem((scala.math.pow(2,8)).toInt, UInt(32.W))
  mem.write(io.wrAddr , io.wrData)

  mem.write(0.U(8.W), "b00011001000100000000000000000101".U)
  mem.write(4.U(8.W), "b00011001001000010000000000000111".U)
  mem.write(8.U(8.W), "b00100000001100100001000000000000".U)
  mem.write(12.U(8.W),"b10001000000000010011000000000000".U)
  mem.write(16.U(8.W),"b10001000000000010011000000000000".U)
  mem.write(20.U(8.W),"b10000000010000010000000000000000".U)
  mem.write(24.U(8.W),"b00001010010001000000000000000000".U)
  */

}
