package mvp

import chisel3._


class DataMemory() extends Module{
  val io = IO(new Bundle {
    val rdAddr  = Input(UInt(8.W))
    val wrAddr = Input(UInt(8.W))
    val wrData = Input(UInt(32.W))
    val rdData  = Output(UInt(32.W))
    val wr = Input(Bool())

    val led = Output(UInt(1.W))
  })

  val mem = SyncReadMem((scala.math.pow(2,8)).toInt, UInt(32.W))


  val regLed = RegInit(0.U)
  io.led := regLed

  when (io.wrAddr === 0.U && io.wr){
    regLed := io.wrData
  }


  io.rdData := mem.read(io.rdAddr)

  when (io.wr){
    mem.write(io.wrAddr, io.wrData)
  }


}