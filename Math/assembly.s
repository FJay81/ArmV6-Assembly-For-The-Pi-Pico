.global maths

maths:
    mov r0, #10
    mov r1, #20
    
    add r0, r0, r1 //adds r0 and r1 and stores in r0
    add r0, r1 // this is the same as above and how i will be writing this from now on

    sub r0, r1 // subtract r1 from r0 and save to r0
    mul r0, r1 // r0 *= r1
    
    //This procssor cant do divison to get around this youll have to use fixed point multiplication, i will not get into this

    //obviosly it can do more complex addition and subtractions but i will not get into those as this is for beginers 