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
    
    reg pc : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[Datapath.scala 26:21]
    node _T_10 = add(pc, UInt<8>("h04")) @[Datapath.scala 27:14]
    node _T_11 = tail(_T_10, 1) @[Datapath.scala 27:14]
    pc <= _T_11 @[Datapath.scala 27:8]
    inst iMem of InstructionMemory @[Datapath.scala 29:22]
    iMem.clock <= clock
    iMem.reset <= reset
    iMem.io.rdAddr <= pc @[Datapath.scala 31:20]
    io.instruction <= iMem.io.rdData @[Datapath.scala 32:20]
    
  module DatapathInstructionDecode : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip instruction : UInt<32>, flip writeBackEnable : UInt<1>, flip writeBackRegAddress : UInt<4>, flip writeBackData : UInt<32>, opcode : UInt<4>, memSelect : UInt<1>, bSelect : UInt<1>, isLoad : UInt<1>, aVal : UInt<32>, bVal : UInt<32>, immVal : UInt<32>, writeBackReg : UInt<4>}
    
    reg rMem : UInt<32>[10], clock @[Datapath.scala 53:19]
    node _T_44 = bits(io.instruction, 4, 1) @[Datapath.scala 56:32]
    io.opcode <= _T_44 @[Datapath.scala 56:15]
    node _T_45 = bits(io.instruction, 0, 0) @[Datapath.scala 57:35]
    io.memSelect <= _T_45 @[Datapath.scala 57:18]
    node _T_46 = bits(io.instruction, 4, 4) @[Datapath.scala 58:33]
    node _T_47 = not(_T_46) @[Datapath.scala 58:18]
    io.isLoad <= _T_47 @[Datapath.scala 58:15]
    node _T_48 = bits(io.instruction, 15, 12) @[Datapath.scala 59:35]
    io.aVal <= rMem[_T_48] @[Datapath.scala 59:13]
    io.bVal <= UInt<32>("h00") @[Datapath.scala 60:13]
    io.immVal <= UInt<32>("h00") @[Datapath.scala 61:15]
    io.bSelect <= UInt<1>("h00") @[Datapath.scala 62:16]
    node _T_54 = eq(io.memSelect, UInt<1>("h00")) @[Datapath.scala 64:10]
    when _T_54 : @[Datapath.scala 64:25]
      node _T_55 = bits(io.instruction, 11, 8) @[Datapath.scala 65:40]
      io.writeBackReg <= _T_55 @[Datapath.scala 65:23]
      node _T_56 = bits(io.instruction, 7, 5) @[Datapath.scala 67:28]
      node _T_58 = eq(UInt<1>("h00"), _T_56) @[Conditional.scala 37:30]
      when _T_58 : @[Conditional.scala 40:58]
        node _T_59 = bits(io.instruction, 19, 16) @[Datapath.scala 70:41]
        io.bVal <= rMem[_T_59] @[Datapath.scala 70:19]
        io.bSelect <= UInt<1>("h01") @[Datapath.scala 71:22]
        skip @[Conditional.scala 40:58]
      else : @[Conditional.scala 39:67]
        node _T_63 = eq(UInt<1>("h01"), _T_56) @[Conditional.scala 37:30]
        when _T_63 : @[Conditional.scala 39:67]
          node _T_65 = bits(io.instruction, 31, 16) @[Datapath.scala 75:53]
          node _T_66 = cat(UInt<16>("h00"), _T_65) @[Cat.scala 30:58]
          io.immVal <= _T_66 @[Datapath.scala 75:21]
          io.bSelect <= UInt<1>("h00") @[Datapath.scala 76:22]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_69 = eq(UInt<2>("h02"), _T_56) @[Conditional.scala 37:30]
          when _T_69 : @[Conditional.scala 39:67]
            skip @[Conditional.scala 39:67]
      skip @[Datapath.scala 64:25]
    else : @[Datapath.scala 82:17]
      node _T_71 = bits(io.instruction, 27, 20) @[Datapath.scala 83:49]
      node _T_72 = cat(UInt<24>("h00"), _T_71) @[Cat.scala 30:58]
      io.immVal <= _T_72 @[Datapath.scala 83:17]
      io.bSelect <= UInt<1>("h00") @[Datapath.scala 84:18]
      when io.isLoad : @[Datapath.scala 86:23]
        node _T_74 = bits(io.instruction, 11, 8) @[Datapath.scala 87:42]
        io.writeBackReg <= _T_74 @[Datapath.scala 87:25]
        skip @[Datapath.scala 86:23]
      else : @[Datapath.scala 89:20]
        io.writeBackReg <= UInt<4>("h00") @[Datapath.scala 90:25]
        node _T_76 = bits(io.instruction, 19, 16) @[Datapath.scala 91:39]
        io.bVal <= rMem[_T_76] @[Datapath.scala 91:17]
        skip @[Datapath.scala 89:20]
      skip @[Datapath.scala 82:17]
    node _T_79 = eq(io.writeBackRegAddress, UInt<1>("h00")) @[Datapath.scala 95:57]
    node _T_81 = eq(_T_79, UInt<1>("h00")) @[Datapath.scala 95:32]
    node _T_82 = and(io.writeBackEnable, _T_81) @[Datapath.scala 95:29]
    when _T_82 : @[Datapath.scala 95:66]
      rMem[io.writeBackRegAddress] <= io.writeBackData @[Datapath.scala 96:36]
      skip @[Datapath.scala 95:66]
    
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
    
    inst alu of ALU @[Datapath.scala 114:21]
    alu.clock <= clock
    alu.reset <= reset
    alu.io.opcode <= io.opcode @[Datapath.scala 116:19]
    node _T_17 = asSInt(io.aVal) @[Datapath.scala 117:31]
    alu.io.a <= _T_17 @[Datapath.scala 117:14]
    node _T_19 = eq(io.bSelect, UInt<1>("h01")) @[Datapath.scala 118:21]
    when _T_19 : @[Datapath.scala 118:33]
      node _T_20 = asSInt(io.bVal) @[Datapath.scala 119:33]
      alu.io.b <= _T_20 @[Datapath.scala 119:16]
      skip @[Datapath.scala 118:33]
    else : @[Datapath.scala 120:7]
      node _T_21 = asSInt(io.immVal) @[Datapath.scala 121:35]
      alu.io.b <= _T_21 @[Datapath.scala 121:16]
      skip @[Datapath.scala 120:7]
    node _T_22 = asUInt(alu.io.out) @[Datapath.scala 124:35]
    io.result <= _T_22 @[Datapath.scala 124:15]
    
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
    output io : {flip memSelect : UInt<1>, flip isLoad : UInt<1>, flip result : UInt<32>, flip writeData : UInt<32>, data : UInt<32>, writeBackEnable : UInt<1>}
    
    inst dMem of DataMemory @[Datapath.scala 138:22]
    dMem.clock <= clock
    dMem.reset <= reset
    dMem.io.wrAddr <= UInt<8>("h00") @[Datapath.scala 139:20]
    dMem.io.rdAddr <= UInt<8>("h00") @[Datapath.scala 140:20]
    dMem.io.wrData <= UInt<32>("h00") @[Datapath.scala 141:20]
    io.writeBackEnable <= UInt<1>("h00") @[Datapath.scala 143:24]
    when io.memSelect : @[Datapath.scala 145:24]
      when io.isLoad : @[Datapath.scala 146:22]
        dMem.io.wr <= UInt<1>("h00") @[Datapath.scala 147:20]
        dMem.io.rd <= UInt<1>("h01") @[Datapath.scala 148:20]
        dMem.io.rdAddr <= io.result @[Datapath.scala 149:24]
        io.data <= dMem.io.rdData @[Datapath.scala 150:17]
        skip @[Datapath.scala 146:22]
      else : @[Datapath.scala 151:9]
        dMem.io.wr <= UInt<1>("h01") @[Datapath.scala 152:20]
        dMem.io.rd <= UInt<1>("h00") @[Datapath.scala 153:20]
        dMem.io.wrAddr <= io.result @[Datapath.scala 154:24]
        dMem.io.wrData <= io.writeData @[Datapath.scala 155:24]
        io.data <= UInt<32>("h00") @[Datapath.scala 156:17]
        skip @[Datapath.scala 151:9]
      skip @[Datapath.scala 145:24]
    else : @[Datapath.scala 158:7]
      dMem.io.rd <= UInt<1>("h00") @[Datapath.scala 159:18]
      dMem.io.wr <= UInt<1>("h00") @[Datapath.scala 160:18]
      io.data <= io.result @[Datapath.scala 161:15]
      io.writeBackEnable <= UInt<1>("h01") @[Datapath.scala 162:26]
      skip @[Datapath.scala 158:7]
    
  module DatapathWriteBack : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeBackEnable : UInt<1>, flip data : UInt<32>, flip destination : UInt<4>, dataOut : UInt<32>, destOut : UInt<4>}
    
    io.destOut <= UInt<1>("h00") @[Datapath.scala 176:16]
    when io.writeBackEnable : @[Datapath.scala 177:30]
      io.dataOut <= io.data @[Datapath.scala 178:18]
      io.destOut <= io.destination @[Datapath.scala 179:18]
      skip @[Datapath.scala 177:30]
    else : @[Datapath.scala 180:18]
      io.dataOut <= UInt<32>("h00") @[Datapath.scala 181:18]
      io.destOut <= UInt<4>("h00") @[Datapath.scala 182:18]
      skip @[Datapath.scala 180:18]
    
  module Datapath : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, b : UInt<1>}
    
    io.b <= io.a @[Datapath.scala 18:8]
    inst _IF of DatapathInstructionFetch @[Datapath.scala 190:19]
    _IF.clock <= clock
    _IF.reset <= reset
    reg instructionReg : UInt, clock @[Datapath.scala 193:31]
    instructionReg <= _IF.io.instruction @[Datapath.scala 193:31]
    inst _ID of DatapathInstructionDecode @[Datapath.scala 196:19]
    _ID.clock <= clock
    _ID.reset <= reset
    _ID.io.instruction <= instructionReg @[Datapath.scala 199:22]
    reg opcodeReg : UInt, clock @[Datapath.scala 202:26]
    opcodeReg <= _ID.io.opcode @[Datapath.scala 202:26]
    reg memSelectReg1 : UInt<1>, clock @[Datapath.scala 203:30]
    memSelectReg1 <= _ID.io.memSelect @[Datapath.scala 203:30]
    reg bSelectReg : UInt<1>, clock @[Datapath.scala 204:27]
    bSelectReg <= _ID.io.bSelect @[Datapath.scala 204:27]
    reg isLoadReg1 : UInt<1>, clock @[Datapath.scala 205:27]
    isLoadReg1 <= _ID.io.isLoad @[Datapath.scala 205:27]
    reg aValReg : UInt, clock @[Datapath.scala 206:24]
    aValReg <= _ID.io.aVal @[Datapath.scala 206:24]
    reg bValReg1 : UInt, clock @[Datapath.scala 207:25]
    bValReg1 <= _ID.io.bVal @[Datapath.scala 207:25]
    reg immValReg : UInt, clock @[Datapath.scala 208:26]
    immValReg <= _ID.io.immVal @[Datapath.scala 208:26]
    reg wbrReg1 : UInt, clock @[Datapath.scala 209:24]
    wbrReg1 <= _ID.io.writeBackReg @[Datapath.scala 209:24]
    inst _EX of DatapathExecute @[Datapath.scala 212:19]
    _EX.clock <= clock
    _EX.reset <= reset
    _EX.io.opcode <= opcodeReg @[Datapath.scala 215:17]
    _EX.io.bSelect <= bSelectReg @[Datapath.scala 216:18]
    _EX.io.aVal <= aValReg @[Datapath.scala 217:15]
    _EX.io.bVal <= bValReg1 @[Datapath.scala 218:15]
    _EX.io.immVal <= immValReg @[Datapath.scala 219:17]
    reg memSelectReg2 : UInt<1>, clock @[Datapath.scala 222:30]
    memSelectReg2 <= memSelectReg1 @[Datapath.scala 222:30]
    reg isLoadReg2 : UInt<1>, clock @[Datapath.scala 223:27]
    isLoadReg2 <= isLoadReg1 @[Datapath.scala 223:27]
    reg resultReg : UInt, clock @[Datapath.scala 224:26]
    resultReg <= _EX.io.result @[Datapath.scala 224:26]
    reg bValReg2 : UInt, clock @[Datapath.scala 225:25]
    bValReg2 <= bValReg1 @[Datapath.scala 225:25]
    reg wbrReg2 : UInt, clock @[Datapath.scala 226:24]
    wbrReg2 <= wbrReg1 @[Datapath.scala 226:24]
    inst _MA of DatapathMemoryAccess @[Datapath.scala 229:19]
    _MA.clock <= clock
    _MA.reset <= reset
    _MA.io.memSelect <= memSelectReg2 @[Datapath.scala 232:20]
    _MA.io.isLoad <= isLoadReg2 @[Datapath.scala 233:17]
    _MA.io.result <= resultReg @[Datapath.scala 234:17]
    _MA.io.writeData <= bValReg2 @[Datapath.scala 235:20]
    reg dataReg : UInt, clock @[Datapath.scala 238:24]
    dataReg <= _MA.io.data @[Datapath.scala 238:24]
    reg wbrReg3 : UInt, clock @[Datapath.scala 239:24]
    wbrReg3 <= wbrReg2 @[Datapath.scala 239:24]
    inst _WB of DatapathWriteBack @[Datapath.scala 242:19]
    _WB.clock <= clock
    _WB.reset <= reset
    _WB.io.data <= dataReg @[Datapath.scala 245:15]
    _WB.io.destination <= wbrReg3 @[Datapath.scala 246:22]
    _WB.io.writeBackEnable <= _MA.io.writeBackEnable @[Datapath.scala 247:26]
    _ID.io.writeBackEnable <= _WB.io.writeBackEnable @[Datapath.scala 249:26]
    _ID.io.writeBackRegAddress <= _WB.io.destOut @[Datapath.scala 250:30]
    _ID.io.writeBackData <= _WB.io.dataOut @[Datapath.scala 251:24]
    
