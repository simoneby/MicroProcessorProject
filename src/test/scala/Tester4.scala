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

  step(1) // expect at 6
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 2)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 7
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 2)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 8
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 2)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 9
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 2)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 10
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 2)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 11
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 2)
  expect(datapath.io.reg3, 0)
  expect(datapath.io.reg4, 0)

  step(1) // expect at 12
  expect(datapath.io.reg0, 0)
  expect(datapath.io.reg1, 12)
  expect(datapath.io.reg2, 2)
  expect(datapath.io.reg3, 12)
  expect(datapath.io.reg4, 0)

}


class Tester4 extends FlatSpec with Matchers{
  "Test4" should "pass" in {
    chisel3.iotesters.Driver(()=> new Datapath) {c => new test4((c))} should be (true)
  }
}