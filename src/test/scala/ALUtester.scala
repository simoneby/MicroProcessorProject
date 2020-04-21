import chisel3.iotesters.PeekPokeTester
import org.scalatest.{FlatSpec, Matchers}

// TO RUN TESTS TYPE THIS IN TERMINAL "sbt test"

class ALUtest(alu: ALU) extends PeekPokeTester(alu){
  val a = 1
  val b = 2
  val sel = 0
  val opcodes = Vector(0,1,2,3,4,5,6,7,8)
  val results = Vector(1,2,0,3,-1,-2,0, 3, 3)
  var opcode = 0
  var res = 0
  poke(alu.io.a, a)
  poke(alu.io.b, b)
  for ( i <- 0 until 9){

    opcode = opcodes(i)
    res = results(i)

    poke(alu.io.select, sel)
    poke(alu.io.opcode, opcode)

    step(1)

    expect(alu.io.out, res)

  }

}

class ALUtester extends FlatSpec with Matchers{
  "ALU" should "pass" in {
    chisel3.iotesters.Driver(()=> new ALU) {c => new ALUtest((c))} should be (true)
  }
}