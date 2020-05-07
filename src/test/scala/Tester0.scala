import chisel3.iotesters.PeekPokeTester
import mvp.Datapath
import org.scalatest.{FlatSpec, Matchers}

// TO RUN TESTS TYPE THIS IN TERMINAL "sbt test"

// This tester attempts to run a single ALU instruction through the pipeline
class test0(datapath: Datapath) extends PeekPokeTester(datapath){

  poke(datapath.io.testSelect,0);

  step(1) // IF
  expect(datapath.io.inst, 524579)

  step(1) // ID
  expect(datapath.io.opcode, 3)
  expect(datapath.io.memSelect, 0)
  expect(datapath.io.bSelect, 0)
  expect(datapath.io.isLoad, 0)
  expect(datapath.io.regA, 0)
  expect(datapath.io.regB, 0)
  expect(datapath.io.immediate, 8)
  expect(datapath.io.destReg, 1)

  step(1) // EX
  expect(datapath.io.result, 8)

  step(1) // MA
  step(1) // WB
  expect(datapath.io.WBvalue, 8)

}


class Tester0 extends FlatSpec with Matchers{
  "Test0" should "pass" in {
    chisel3.iotesters.Driver(()=> new Datapath) {c => new test0((c))} should be (true)
  }
}