import chisel3.iotesters.PeekPokeTester
import mvp.Datapath
import org.scalatest.{FlatSpec, Matchers}

// TO RUN TESTS TYPE THIS IN TERMINAL "sbt test"

// This tester attempts to run a memory store instruction followed by a load instruction
class test4(datapath: Datapath) extends PeekPokeTester(datapath){

  poke(datapath.io.testSelect,4);

  step(5) // expect at 5
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 0)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 6 (Store ID)

  expect(datapath.io.opcode, 4)
  expect(datapath.io.memSelect, 1)
  expect(datapath.io.bSelect, 0)
  expect(datapath.io.isLoad, 0)
  expect(datapath.io.regA, 0)
  expect(datapath.io.regB, 12)
  expect(datapath.io.immediate, 3)
  expect(datapath.io.destReg, 0)

  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 1)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 7
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 1)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 8 (Load IF)
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 1)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 9 (Load ID)

  expect(datapath.io.opcode, 4)
  expect(datapath.io.memSelect, 1)
  expect(datapath.io.bSelect, 0)
  expect(datapath.io.isLoad, 1)
  expect(datapath.io.regA, 1)
  expect(datapath.io.regB, 0)
  expect(datapath.io.immediate, 2)
  expect(datapath.io.destReg, 3)

  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 1)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 10 (Load EX)
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 1)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 11 (Load MEM)
  expect(datapath.io.memData, 12)

  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 1)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 12 (Load WB)
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 1)
  expect(datapath.io.reg3, 12)
  expect(datapath.io.reg4, 0)

}


class Tester4 extends FlatSpec with Matchers{
  "Test4" should "pass" in {
    chisel3.iotesters.Driver(()=> new Datapath) {c => new test4((c))} should be (true)
  }
}