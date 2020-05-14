import chisel3.iotesters.PeekPokeTester
import mvp.Datapath
import org.scalatest.{FlatSpec, Matchers}

// TO RUN TESTS TYPE THIS IN TERMINAL "sbt test"

// This tester attempts to run a single memory store instruction through the pipeline
class test3(datapath: Datapath) extends PeekPokeTester(datapath){

  poke(datapath.io.testSelect,3);

  step(4) // Set up by placing 12 in reg1

  step(1) // Mem IF - 5
  expect(datapath.io.reg1, 12)
  expect(datapath.io.inst, 3211281)

  step(1) // Mem ID - 6
  expect(datapath.io.opcode, 4)
  expect(datapath.io.memSelect, 1)
  expect(datapath.io.bSelect, 0)
  expect(datapath.io.isLoad, 0)
  expect(datapath.io.regA, 0)
  expect(datapath.io.regB, 12)
  expect(datapath.io.immediate, 3)
  expect(datapath.io.destReg, 0)

  step(1) // Mem EX - 7
  expect(datapath.io.result, 3)

  step(1) // Mem MA - 8
  expect(datapath.io.memLoc, 3)
  expect(datapath.io.memData, 12)

  step(1) // Mem WB - 9
  expect(datapath.io.WBvalue, 0)

}


class Tester3 extends FlatSpec with Matchers{
  "Test3" should "pass" in {
    chisel3.iotesters.Driver(()=> new Datapath) {c => new test3((c))} should be (true)
  }
}