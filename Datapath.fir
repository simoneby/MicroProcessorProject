;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit Datapath : 
  module InstructionMemory : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rdAddr : UInt<8>, rdData : UInt<32>}
    
    smem mem : UInt<32>[256] @[InstructionMemory.scala 13:24]
    infer mport _T_11 = mem[io.rdAddr], clock @[InstructionMemory.scala 15:19]
    io.rdData <= _T_11 @[InstructionMemory.scala 15:13]
    
  module DatapathInstructionFetch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {instruction : UInt<32>}
    
    reg pc : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[Datapath.scala 43:21]
    node _T_10 = add(pc, UInt<8>("h04")) @[Datapath.scala 44:14]
    node _T_11 = tail(_T_10, 1) @[Datapath.scala 44:14]
    pc <= _T_11 @[Datapath.scala 44:8]
    inst iMem of InstructionMemory @[Datapath.scala 46:22]
    iMem.clock <= clock
    iMem.reset <= reset
    iMem.io.rdAddr <= pc @[Datapath.scala 48:20]
    io.instruction <= iMem.io.rdData @[Datapath.scala 49:20]
    
  module DatapathInstructionDecode : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip instruction : UInt<32>, opcode : UInt<4>, memSelect : UInt<1>, bSelect : UInt<1>, isLoad : UInt<1>, aVal : UInt<32>, bVal : UInt<32>, immVal : UInt<32>, writeBackReg : UInt<4>}
    
    reg rMem : UInt<32>[10], clock @[Datapath.scala 66:19]
    node _T_38 = bits(io.instruction, 4, 1) @[Datapath.scala 69:32]
    io.opcode <= _T_38 @[Datapath.scala 69:15]
    node _T_39 = bits(io.instruction, 0, 0) @[Datapath.scala 70:35]
    io.memSelect <= _T_39 @[Datapath.scala 70:18]
    node _T_40 = bits(io.instruction, 4, 4) @[Datapath.scala 71:33]
    node _T_41 = not(_T_40) @[Datapath.scala 71:18]
    io.isLoad <= _T_41 @[Datapath.scala 71:15]
    node _T_42 = bits(io.instruction, 15, 12) @[Datapath.scala 72:35]
    io.aVal <= rMem[_T_42] @[Datapath.scala 72:13]
    io.bVal <= UInt<32>("h00") @[Datapath.scala 73:13]
    io.immVal <= UInt<32>("h00") @[Datapath.scala 74:15]
    io.bSelect <= UInt<1>("h00") @[Datapath.scala 75:16]
    node _T_48 = eq(io.memSelect, UInt<1>("h00")) @[Datapath.scala 77:10]
    when _T_48 : @[Datapath.scala 77:25]
      node _T_49 = bits(io.instruction, 11, 8) @[Datapath.scala 78:40]
      io.writeBackReg <= _T_49 @[Datapath.scala 78:23]
      node _T_50 = bits(io.instruction, 7, 5) @[Datapath.scala 80:28]
      node _T_52 = eq(UInt<1>("h00"), _T_50) @[Conditional.scala 37:30]
      when _T_52 : @[Conditional.scala 40:58]
        node _T_53 = bits(io.instruction, 19, 16) @[Datapath.scala 83:41]
        io.bVal <= rMem[_T_53] @[Datapath.scala 83:19]
        io.bSelect <= UInt<1>("h01") @[Datapath.scala 84:22]
        skip @[Conditional.scala 40:58]
      else : @[Conditional.scala 39:67]
        node _T_57 = eq(UInt<1>("h01"), _T_50) @[Conditional.scala 37:30]
        when _T_57 : @[Conditional.scala 39:67]
          node _T_59 = bits(io.instruction, 31, 16) @[Datapath.scala 88:53]
          node _T_60 = cat(UInt<16>("h00"), _T_59) @[Cat.scala 30:58]
          io.immVal <= _T_60 @[Datapath.scala 88:21]
          io.bSelect <= UInt<1>("h00") @[Datapath.scala 89:22]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_63 = eq(UInt<2>("h02"), _T_50) @[Conditional.scala 37:30]
          when _T_63 : @[Conditional.scala 39:67]
            skip @[Conditional.scala 39:67]
      skip @[Datapath.scala 77:25]
    else : @[Datapath.scala 95:17]
      node _T_65 = bits(io.instruction, 27, 20) @[Datapath.scala 96:49]
      node _T_66 = cat(UInt<24>("h00"), _T_65) @[Cat.scala 30:58]
      io.immVal <= _T_66 @[Datapath.scala 96:17]
      io.bSelect <= UInt<1>("h00") @[Datapath.scala 97:18]
      when io.isLoad : @[Datapath.scala 99:23]
        node _T_68 = bits(io.instruction, 11, 8) @[Datapath.scala 100:42]
        io.writeBackReg <= _T_68 @[Datapath.scala 100:25]
        skip @[Datapath.scala 99:23]
      else : @[Datapath.scala 102:20]
        io.writeBackReg <= UInt<4>("h00") @[Datapath.scala 103:25]
        node _T_70 = bits(io.instruction, 19, 16) @[Datapath.scala 104:39]
        io.bVal <= rMem[_T_70] @[Datapath.scala 104:17]
        skip @[Datapath.scala 102:20]
      skip @[Datapath.scala 95:17]
    
  module ALU : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : SInt<32>, flip b : SInt<32>, flip opcode : UInt<5>, out : SInt<32>}
    
    io.out <= asSInt(UInt<1>("h00")) @[ALU.scala 19:10]
    node _T_15 = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T_15 : @[Conditional.scala 40:58]
      io.out <= io.a @[ALU.scala 23:14]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_17 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_17 : @[Conditional.scala 39:67]
        node _T_19 = add(io.a, asSInt(UInt<2>("h01"))) @[ALU.scala 26:22]
        node _T_20 = tail(_T_19, 1) @[ALU.scala 26:22]
        node _T_21 = asSInt(_T_20) @[ALU.scala 26:22]
        io.out <= _T_21 @[ALU.scala 26:14]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_23 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_23 : @[Conditional.scala 39:67]
          node _T_25 = sub(io.a, asSInt(UInt<2>("h01"))) @[ALU.scala 29:22]
          node _T_26 = tail(_T_25, 1) @[ALU.scala 29:22]
          node _T_27 = asSInt(_T_26) @[ALU.scala 29:22]
          io.out <= _T_27 @[ALU.scala 29:14]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_29 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_29 : @[Conditional.scala 39:67]
            node _T_30 = add(io.a, io.b) @[ALU.scala 32:22]
            node _T_31 = tail(_T_30, 1) @[ALU.scala 32:22]
            node _T_32 = asSInt(_T_31) @[ALU.scala 32:22]
            io.out <= _T_32 @[ALU.scala 32:14]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_34 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_34 : @[Conditional.scala 39:67]
              node _T_35 = sub(io.a, io.b) @[ALU.scala 35:22]
              node _T_36 = tail(_T_35, 1) @[ALU.scala 35:22]
              node _T_37 = asSInt(_T_36) @[ALU.scala 35:22]
              io.out <= _T_37 @[ALU.scala 35:14]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_39 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_39 : @[Conditional.scala 39:67]
                node _T_40 = not(io.a) @[ALU.scala 38:17]
                node _T_41 = asSInt(_T_40) @[ALU.scala 38:17]
                io.out <= _T_41 @[ALU.scala 38:14]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_43 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_43 : @[Conditional.scala 39:67]
                  node _T_44 = and(io.a, io.b) @[ALU.scala 41:22]
                  node _T_45 = asSInt(_T_44) @[ALU.scala 41:22]
                  io.out <= _T_45 @[ALU.scala 41:14]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_47 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_47 : @[Conditional.scala 39:67]
                    node _T_48 = or(io.a, io.b) @[ALU.scala 44:22]
                    node _T_49 = asSInt(_T_48) @[ALU.scala 44:22]
                    io.out <= _T_49 @[ALU.scala 44:14]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_51 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_51 : @[Conditional.scala 39:67]
                      node _T_52 = xor(io.a, io.b) @[ALU.scala 47:22]
                      node _T_53 = asSInt(_T_52) @[ALU.scala 47:22]
                      io.out <= _T_53 @[ALU.scala 47:14]
                      skip @[Conditional.scala 39:67]
    
  module DatapathExecute : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip opcode : UInt<4>, flip bSelect : UInt<1>, flip aVal : UInt<32>, flip bVal : UInt<32>, flip immVal : UInt<32>, result : UInt<32>}
    
    inst alu of ALU @[Datapath.scala 122:21]
    alu.clock <= clock
    alu.reset <= reset
    alu.io.opcode <= io.opcode @[Datapath.scala 124:19]
    node _T_17 = asSInt(io.aVal) @[Datapath.scala 125:31]
    alu.io.a <= _T_17 @[Datapath.scala 125:14]
    node _T_19 = eq(io.bSelect, UInt<1>("h01")) @[Datapath.scala 126:21]
    when _T_19 : @[Datapath.scala 126:33]
      node _T_20 = asSInt(io.bVal) @[Datapath.scala 127:33]
      alu.io.b <= _T_20 @[Datapath.scala 127:16]
      skip @[Datapath.scala 126:33]
    else : @[Datapath.scala 128:7]
      node _T_21 = asSInt(io.immVal) @[Datapath.scala 129:35]
      alu.io.b <= _T_21 @[Datapath.scala 129:16]
      skip @[Datapath.scala 128:7]
    node _T_22 = asUInt(alu.io.out) @[Datapath.scala 132:35]
    io.result <= _T_22 @[Datapath.scala 132:15]
    
  module DataMemory : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rdAddr : UInt<8>, flip wrAddr : UInt<8>, flip wrData : UInt<8>, rdData : UInt<32>, flip rd : UInt<1>, flip wr : UInt<1>}
    
    smem mem : UInt<32>[256] @[DataMemory.scala 17:24]
    io.rdData <= UInt<32>("h00") @[DataMemory.scala 19:13]
    when io.rd : @[DataMemory.scala 21:15]
      infer mport _T_20 = mem[io.rdAddr], clock @[DataMemory.scala 22:21]
      io.rdData <= _T_20 @[DataMemory.scala 22:15]
      skip @[DataMemory.scala 21:15]
    when io.wr : @[DataMemory.scala 25:15]
      infer mport _T_21 = mem[io.wrAddr], clock @[DataMemory.scala 26:8]
      _T_21 <= io.wrData @[DataMemory.scala 26:20]
      skip @[DataMemory.scala 25:15]
    
  module DatapathMemoryAccess : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip memSelect : UInt<1>, flip isLoad : UInt<1>, flip result : UInt<32>, flip writeData : UInt<32>, data : UInt<32>}
    
    inst dMem of DataMemory @[Datapath.scala 145:22]
    dMem.clock <= clock
    dMem.reset <= reset
    dMem.io.wrAddr <= UInt<8>("h00") @[Datapath.scala 146:20]
    dMem.io.rdAddr <= UInt<8>("h00") @[Datapath.scala 147:20]
    dMem.io.wrData <= UInt<32>("h00") @[Datapath.scala 148:20]
    when io.memSelect : @[Datapath.scala 150:24]
      when io.isLoad : @[Datapath.scala 151:22]
        dMem.io.wr <= UInt<1>("h00") @[Datapath.scala 152:20]
        dMem.io.rd <= UInt<1>("h01") @[Datapath.scala 153:20]
        dMem.io.rdAddr <= io.result @[Datapath.scala 154:24]
        io.data <= dMem.io.rdData @[Datapath.scala 155:17]
        skip @[Datapath.scala 151:22]
      else : @[Datapath.scala 156:9]
        dMem.io.wr <= UInt<1>("h01") @[Datapath.scala 157:20]
        dMem.io.rd <= UInt<1>("h00") @[Datapath.scala 158:20]
        dMem.io.wrAddr <= io.result @[Datapath.scala 159:24]
        dMem.io.wrData <= io.writeData @[Datapath.scala 160:24]
        io.data <= UInt<32>("h00") @[Datapath.scala 161:17]
        skip @[Datapath.scala 156:9]
      skip @[Datapath.scala 150:24]
    else : @[Datapath.scala 163:7]
      dMem.io.rd <= UInt<1>("h00") @[Datapath.scala 164:18]
      dMem.io.wr <= UInt<1>("h00") @[Datapath.scala 165:18]
      io.data <= io.result @[Datapath.scala 166:15]
      skip @[Datapath.scala 163:7]
    
  module DatapathWriteBack : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip data : UInt<32>, flip destination : UInt<4>}
    
    reg rMem : UInt<32>[10], clock @[Datapath.scala 178:19]
    node _T_25 = neq(io.destination, UInt<4>("h00")) @[Datapath.scala 180:25]
    when _T_25 : @[Datapath.scala 180:38]
      rMem[io.destination] <= io.data @[Datapath.scala 181:28]
      skip @[Datapath.scala 180:38]
    
  module Datapath : 
    input clock : Clock
    input reset : UInt<1>
    output io : {}
    
    inst _IF of DatapathInstructionFetch @[Datapath.scala 188:19]
    _IF.clock <= clock
    _IF.reset <= reset
    reg instructionReg : UInt, clock @[Datapath.scala 191:31]
    instructionReg <= _IF.io.instruction @[Datapath.scala 191:31]
    inst _ID of DatapathInstructionDecode @[Datapath.scala 194:19]
    _ID.clock <= clock
    _ID.reset <= reset
    _ID.io.instruction <= instructionReg @[Datapath.scala 197:22]
    reg opcodeReg : UInt, clock @[Datapath.scala 200:26]
    opcodeReg <= _ID.io.opcode @[Datapath.scala 200:26]
    reg memSelectReg1 : UInt<1>, clock @[Datapath.scala 201:30]
    memSelectReg1 <= _ID.io.memSelect @[Datapath.scala 201:30]
    reg bSelectReg : UInt<1>, clock @[Datapath.scala 202:27]
    bSelectReg <= _ID.io.bSelect @[Datapath.scala 202:27]
    reg isLoadReg1 : UInt<1>, clock @[Datapath.scala 203:27]
    isLoadReg1 <= _ID.io.isLoad @[Datapath.scala 203:27]
    reg aValReg : UInt, clock @[Datapath.scala 204:24]
    aValReg <= _ID.io.aVal @[Datapath.scala 204:24]
    reg bValReg1 : UInt, clock @[Datapath.scala 205:25]
    bValReg1 <= _ID.io.bVal @[Datapath.scala 205:25]
    reg immValReg : UInt, clock @[Datapath.scala 206:26]
    immValReg <= _ID.io.immVal @[Datapath.scala 206:26]
    reg wbrReg1 : UInt, clock @[Datapath.scala 207:24]
    wbrReg1 <= _ID.io.writeBackReg @[Datapath.scala 207:24]
    inst _EX of DatapathExecute @[Datapath.scala 210:19]
    _EX.clock <= clock
    _EX.reset <= reset
    _EX.io.opcode <= opcodeReg @[Datapath.scala 213:17]
    _EX.io.bSelect <= bSelectReg @[Datapath.scala 214:18]
    _EX.io.aVal <= aValReg @[Datapath.scala 215:15]
    _EX.io.bVal <= bValReg1 @[Datapath.scala 216:15]
    _EX.io.immVal <= immValReg @[Datapath.scala 217:17]
    reg memSelectReg2 : UInt<1>, clock @[Datapath.scala 220:30]
    memSelectReg2 <= memSelectReg1 @[Datapath.scala 220:30]
    reg isLoadReg2 : UInt<1>, clock @[Datapath.scala 221:27]
    isLoadReg2 <= isLoadReg1 @[Datapath.scala 221:27]
    reg resultReg : UInt, clock @[Datapath.scala 222:26]
    resultReg <= _EX.io.result @[Datapath.scala 222:26]
    reg bValReg2 : UInt, clock @[Datapath.scala 223:25]
    bValReg2 <= bValReg1 @[Datapath.scala 223:25]
    reg wbrReg2 : UInt, clock @[Datapath.scala 224:24]
    wbrReg2 <= wbrReg1 @[Datapath.scala 224:24]
    inst _MA of DatapathMemoryAccess @[Datapath.scala 227:19]
    _MA.clock <= clock
    _MA.reset <= reset
    _MA.io.memSelect <= memSelectReg2 @[Datapath.scala 230:20]
    _MA.io.isLoad <= isLoadReg2 @[Datapath.scala 231:17]
    _MA.io.result <= resultReg @[Datapath.scala 232:17]
    _MA.io.writeData <= bValReg2 @[Datapath.scala 233:20]
    reg dataReg : UInt, clock @[Datapath.scala 236:24]
    dataReg <= _MA.io.data @[Datapath.scala 236:24]
    reg wbrReg3 : UInt, clock @[Datapath.scala 237:24]
    wbrReg3 <= wbrReg2 @[Datapath.scala 237:24]
    inst _WB of DatapathWriteBack @[Datapath.scala 240:19]
    _WB.clock <= clock
    _WB.reset <= reset
    _WB.io.data <= dataReg @[Datapath.scala 243:15]
    _WB.io.destination <= wbrReg3 @[Datapath.scala 244:22]
    
