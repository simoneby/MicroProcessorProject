import chisel3.iotesters.PeekPokeTester
import mvp.Datapath
import org.scalatest.{FlatSpec, Matchers}

// TO RUN TESTS TYPE THIS IN TERMINAL "sbt test"

// This tester attempts to run a short program using ALU instructions and the Bubble Instruction
// NOTE - the bubble instructions are designed to avoid conflicts when ID accessing a register before WB
class Test2(datapath: Datapath) extends PeekPokeTester(datapath){

  poke(datapath.io.testSelect,2)

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
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 8
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 5)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 9
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 5)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 6)

  step(1) // expect at 10
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 5)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 8)
  expect(datapath.io.reg4, 6)

  step(1) // expect at 11
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 2)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 8)
  expect(datapath.io.reg4, 6)

  step(1) // expect at 12
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 2)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 8)
  expect(datapath.io.reg4, 6)

  step(1) // expect at 13
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 2)
  expect(datapath.io.reg2, 3)
  expect(datapath.io.reg3, 3)
  expect(datapath.io.reg4, 6)

}


class Tester2 extends FlatSpec with Matchers{
  "Test2" should "pass" in {
    chisel3.iotesters.Driver(()=> new Datapath) {c => new Test2((c))} should be (true)
  }
}