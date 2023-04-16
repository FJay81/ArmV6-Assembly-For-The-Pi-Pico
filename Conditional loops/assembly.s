.global funcs

//easy way to reset registers back to 0 value is by xor, however in this the neumonic is eor for 'Exclusive OR'
//as far as i can tell assembly is completly procedural and relys on jumps and loops to do stuff.


//this whole program can be seen as a while do or a for loop depending on how you implement it

funcs:

    //calling a subroutine is actually quite easy
    mov     r0, #1
    bl      incr        //this is a branch call with this location as a return point
    b       endPrgrm    //jumps to endprogram subroutine, depending on what happens it will retrun back to the start or end the program        


incr: //this is a sub-routine, because of the 'b funcs' this functions will never happen unless called by 'bl incr'
    add     r0, r0, #1      //is basically r0 = r0 + 1, can be simplified to add r0, #1 which is the same as r0+=1
    
endPrgrm: //this is a basic implementation of a if statement
    cmp     r0, #100 //compare the value in r0 to 100
    bls     funcs   //if r0 <= 100, it will jump back to the start, check 'conditional stuff.png' for more suffixes to 'b'
    eor     r0, r0  //else, reset r0 and end the program
 
