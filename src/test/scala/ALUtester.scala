import java.math.BigInteger

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
//    poke(datapath.alu.io.a, a)
//
//    for (k <- 0 until 10) {
//
//      b = k
//      poke(datapath.alu.io.b, b)
//      val functions = Vector(pass(a,b), inc(a,b), dec(a,b), add(a,b), sub(a,b), not(a,b), and(a,b), or(a,b), xor(a,b))
//
//      for (i <- 0 until 9) {
//
//        //poke(alu.io.select, sel)
//        poke(datapath.alu.io.opcode, i)
//
//        expect(datapath.alu.io.out, functions(index = i))
//        step(1)
//
//      }
//    }
//  }

//    val instruction1 = "00011001000100000000000000000101"
//    val instruction1 = "0000 0000000001010000 00010011000"
//    val instruction1 = "0000000000000101 0000 0001 001 0011 0"

    val memselect = "0"
    val opcode = "0011"
    val sel = "001"
    val destAdr = "0001"
    val regA = "0000"
    val immediate = "0000000000001000"


    val instruction1 = immediate + regA + destAdr + sel + opcode + memselect
    var instruction = BigInt(instruction1, 2)

  poke(datapath.io.inst, instruction)
  step(1) // ID
  expect(datapath.io.opcode, 3)
  expect(datapath.io.select, 1)
  expect(datapath.io.regA, 0)
  expect(datapath.io.regB, 0)
  expect(datapath.io.immediate, 8)
  expect(datapath.io.destReg, 1)
  //expect(datapath.io.regAvalue, )
  expect(datapath.io.result, 8)







  //  step(1) // EX
//  step(1) // MA
//  expect(datapath.io.result, 5)         // 00011
//  step(1)
//  expect(datapath.io.result, 5)         // 00011
//  step(1)
//  expect(datapath.io.result, 5)         // 00011
//  step(1)
//
//  val instruction2 = "01010000000000000001000100100100"
//  poke(datapath.io.inst, BigInt(instruction2, 2))
//  step(1)
//  expect(datapath.io.result, 4  )         // 00010
//  step(1)



//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)
//  step(1)
//  expect(datapath.io.result, 5)


}




class ALUtester extends FlatSpec with Matchers{
  "ALU" should "pass" in {
    chisel3.iotesters.Driver(()=> new Datapath) {c => new ALUtest((c))} should be (true)
  }
}