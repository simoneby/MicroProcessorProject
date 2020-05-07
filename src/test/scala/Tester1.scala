import chisel3.iotesters.PeekPokeTester
import mvp.Datapath
import org.scalatest.{FlatSpec, Matchers}

// TO RUN TESTS TYPE THIS IN TERMINAL "sbt test"
// Requires test = 1 in InstructionMemory.scala

class DatapathTest(datapath: Datapath) extends PeekPokeTester(datapath){

  // Start the processor
  //poke(datapath.io.reset, false.B)

  step(5) // expect at 5
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 5)
  expect(datapath.io.reg2, 0)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 6
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 5)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 7
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 5)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 8)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 8
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 5)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 8)
  expect(datapath.io.reg4, 3)

  step(1) // expect at 9
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 5)
  expect(datapath.io.reg2, 6)
  expect(datapath.io.reg3, 8)
  expect(datapath.io.reg4, 3)

  step(1) // expect at 10
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 6)
  expect(datapath.io.reg2, 6)
  expect(datapath.io.reg3, 8)
  expect(datapath.io.reg4, 3)

}


class DatapathTester extends FlatSpec with Matchers{
  "Datapath" should "pass" in {
    chisel3.iotesters.Driver(()=> new Datapath) {c => new DatapathTest((c))} should be (true)
  }
}