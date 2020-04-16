import chisel3.iotesters.PeekPokeTester
import org.scalatest.{FlatSpec, Matchers}


class ALUtest(alu: ALU) extends PeekPokeTester(alu){
  val a = 1
  val b = 1
  val sel = 0
  val opcode = 1
  val res = 2

  poke(alu.io.a, a)
  poke(alu.io.b, b)
  poke(alu.io.select, sel)
  poke(alu.io.opcode, opcode)

  step(1)

  expect(alu.io.out, res)

}

class ALUtester extends FlatSpec with Matchers{
  "ALU" should "pass" in {
    chisel3.iotesters.Driver(()=> new ALU) {c => new ALUtest((c))} should be (true)
  }
}