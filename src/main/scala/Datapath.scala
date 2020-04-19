import chisel3._
import chisel3.util._

class Datapath {
  val iW = 32;  // 32 bit instructions
  val aW = 8;   // 8 bit addresses in instruction memory
  val rW = 4;   // 4 bit addresses for registers
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

    val iMem = Module(new InstructionMem) // create instance of instruction memory - should already exist?
    iMem.io.rdAddr := pc                  // set memory read address to pc
    io.instruction := iMem.io.rdData      // set instruction to be output of memory read
  }

  class instruction_decode extends Module {
    val io = IO(new Bundle {
      val instruction = Input(UInt(iW.W))
      val dest        = Output(UInt(rW.W))  // destination register address for instruction
      val a           = Output(UInt(vW.W))  // value retrieved from reg
      val b           = Output(UInt(vW.W))  // value retrieved from reg
      val imm         = Output(UInt(vW.W))  // padded value from instruction
      val opcode      = Output(UInt(5.W))
      val select      = Output(UInt(1.W))   // for the MUX between imm and b
    })

    // parse components of instruction
    io.opcode := io.instruction(0,4)    // opcode is first 5 bits of instruction
    switch(io.opcode(0)){               // first digit of opcode determines instruction type

      is(0.U(1.W)){     // ALU instruction

        val scode = io.instruction(5,7)        // select code
        val dest = io.instruction(8,11)        // destination register
        val a_addr = io.instruction(12,15)     // source register a

        when(scode === 0.U(3.W)){           // a + b reg used
          val b_addr = io.instruction(16,19)
        } .elsewhen(scode === 1.U(3.W)){    // a reg + imm used
          io.imm := Cat(0.U(16.W), io.instruction(16,31)) // pad immediate to 32 bits
        }
      }

      is(1.U(1.W)){     // memory instruction

      }
    }
        // parse & extend immediate if necessary
        // read values of a and b from register memory
  }

  // create a class for register memory?



  class Mux extends Module {
    val io = IO(new Bundle {
      val select = Input(UInt(1.W))
      val b = Input(UInt(32.W))
      val immediate = Input(UInt(32.W))
      val out = Output(UInt(32.W))
    })
    when (io.select === 0.U){
      io.out := io.immediate
    }
      .otherwise {
        io.out := io.b
      }
  }

  class DataMemory extends Module{
    val io = IO(new Bundle{
      val address = Input(UInt(aW.W)) // The memory address to access the dm
      val value = Input(UInt(32.W)) // the output from the ALU
      val opcode = Input(UInt(5.W))
      val loadedValue = Output(UInt(32.W))
    })

    when (io.opcode === 16.U){
      val memo = new Memo()
      memo.io.ren := 1.U
      memo.io.rdAddr := io.address
      io.loadedValue := memo.io.rdData
    }
    when (io.opcode === 17.U){
      val memo = new Memo()
      memo.io.wen := 1.U
      memo.io.wrAddr := io.address
      memo.io.wrData := io.value
    }

  }


  class Memo extends Module {
    val io = IO(new Bundle {
      val wen     = Input(UInt(1.W))
      val wrAddr  = Input(UInt(aW.W))
      val wrData  = Input(UInt(32.W))
      val ren     = Input(UInt(1.W))
      val rdAddr  = Input(UInt(aW.W))
      val rdData  = Output(UInt(32.W))
    })

    val mem = SyncReadMem((scala.math.pow(2,aW)).toInt, UInt(aW.W))

    // write
    when (io.wen === 1.U) { mem(io.wrAddr) := io.wrData }

    // read
    io.rdData := 0.U
    when (io.ren === 1.U) { io.rdData := mem(io.rdAddr) }

  }



}
