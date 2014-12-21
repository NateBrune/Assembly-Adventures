Assembly-Adventures
===================

This repo is to help newbies like my self learn to program assembly.
More specificly this is primarily x86_64 Linux assembly in the AT&T syntax. My dream is for someone to come accross this repo and say, "this sucks let me fix it." Please fork and learn! I will try to get a good 20 example programs up in here before I get burned out.
Currently there are three programs.

----------
#### helloworld.s ####
Hello world! First Assembly program I ever wrote \*single tear shed\*
Interesting to note that this dosn't use printf or puts, just a good o'le write syscall. Its pretty throughly commented (as everything is in this repo) so check it out.


----------
#### math.s ####
So, after my hello world I wanted to do some basic math. I was all "lets add stuff and then print the result to the terminal" Yeah, well that doesnt really work cause converting numbers to strings implicitly is unheardof in assembly. So, I just use a TEST instruction to see if the math was carried out and it looks like the value is stored in the %rsp register. Anywho, I aso used some non-general purpose register to store variables to the program exits dirty... I think.

----------
#### reeboot.s ####
Syscalls are cool man, who doesnt like interfacing with the kernel in assembly? Anywho this was interesting because reboot() takes some weird totally unneeded arguments. Turns out they are significant to Torvolds's life. If you are feeling curious check it out. 

>http://man7.org/linux/man-pages/man2/reboot.2.html

`cat /usr/include/linux/reboot.h | grep MAGIC`

----------
Anyway, thats all I got for you. Hope you enjoy what I have an I will try to add in a few more programs and keep the comments helpful and short.

