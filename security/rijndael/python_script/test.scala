class A extends Module {
    val io = IO(new Bundle {
        val in = Input(UInt(4.W))
        val out = Output(UInt(4.W))
    })
    
    io.out := io.in
    val x = 0x715d.U
    val addi16spImm = Cat(UInt(2.W), x(9,7))

    printf("fuck %b\n",addi16spImm)
    println(s"Print during generation: Input is ${addi16spImm}")
}

test(new A ) { c =>
    c.io.in.poke(3.U)
    c.clock.step(5) // circuit will print
    
    println(s"Print during testing: Input is ${c.io.in.peek()}")
}