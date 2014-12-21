
.data
hello:
  .string "Hello World!\n"

.globl	main
main:
                    # http://en.wikibooks.org/wiki/X86_Assembly/Interfacing_with_Linux#syscall
  movq	$1,%rax     # Moves instruction write() into the register 
  movq	$1,%rdi     # Sets us to output in the stdout stream
  movq	$hello,%rsi # References the label hello as the text to be outputed
  movq	$13,%rdx    # len of string. 12 characters in "Hello World!" plus \n 
  syscall           # newfangled int 0x80 
                    # using syscall is supposedly the new standard
  ret               # return
