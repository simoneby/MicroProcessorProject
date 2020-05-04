package mvp

import chisel3._


class DataMemory extends Module{
  val io = IO(new Bundle {
    val rdAddr  = Input(UInt(8.W))
    val wrAddr = Input(UInt(8.W))
    val wrData = Input(UInt(8.W))
    val rdData  = Output(UInt(32.W))

    val rd = Input(Bool())
    val wr = Input(Bool())
  })

  val mem = SyncReadMem((scala.math.pow(2,8)).toInt, UInt(32.W))

  io.rdData := 0.U(32.W)

  when (io.rd){
    io.rdData := mem(io.rdAddr)
  }

  when (io.wr){
    mem(io.wrAddr) := io.wrData
  }


}