.global memory
// the rp2040 has 13 r0 - r12 gp registers and some special case register for other stuff like pc and return location frpm loops

memory:
    mov r0, #255 //move the value after the comma into register
    mov r1, #64

    str r0, [r1,#0] //store the value of r0 to memory address equal to the value in r1, the thing in brackets can be adjusted using offsets
    ldr r3, [r1,#0] //load r3 with the value in address equal to the value in r1, the thing in brackets can be adjusted using offsets

    push {r3} //push r3 to stack
    pop {r4} //pop top value on stack to r4
