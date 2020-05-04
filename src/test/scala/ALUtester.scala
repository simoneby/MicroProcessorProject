import chisel3.iotesters.PeekPokeTester
import mvp.{ALU, Datapath}
import org.scalatest.{FlatSpec, Matchers}

// TO RUN TESTS TYPE THIS IN TERMINAL "sbt test"

class ALUtest(datapath: Datapath) extends PeekPokeTester(datapath){
//  var a = 0
//  var b = 0
//  //val sel = 0
//
//  def pass(a: Int, b: Int): Int = {a}
//  def inc(a: Int, b: Int): Int = {a + 1}
//  def dec(a: Int, b: Int): Int = {a - 1}
//  def add(a: Int, b: Int): Int = {a + b}
//  def sub(a: Int, b: Int): Int = {a - b}
//  def not(a: Int, b: Int): Int = {~a}
//  def and(a: Int, b:Int): Int = {a & b}
//  def or (a: Int, b:Int): Int = {a | b}
//  def xor(a: Int, b:Int): Int = {a ^ b}
//
//  for (j <- 0 until 10) {
//
//    a = j
//    poke(alu.io.a, a)
//
//    for (k <- 0 until 10) {
//
//      b = k
//      poke(alu.io.b, b)
//      val functions = Vector(pass(a,b), inc(a,b), dec(a,b), add(a,b), sub(a,b), not(a,b), and(a,b), or(a,b), xor(a,b))
//
//      for (i <- 0 until 9) {
//
//        //poke(alu.io.select, sel)
//        poke(alu.io.opcode, i)
//
//        expect(alu.io.out, functions(index = i))
//        step(1)
//
//      }
//    }
//  }

  poke(datapath.io.inst,420478981)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)
  step(1)
  expect(datapath.io.result, 5)


}

class ALUtester extends FlatSpec with Matchers{
  "ALU" should "pass" in {
    chisel3.iotesters.Driver(()=> new Datapath) {c => new ALUtest((c))} should be (true)
  }
}