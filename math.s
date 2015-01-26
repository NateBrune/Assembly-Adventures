.data
oddstr:
  .string "odd \n"
evenstr:
  .string "even\n"

.globl main
.globl odd
.globl even

main:
  movq  $5, %rbp # Move 5 into the general purpose register %rbp
  movq  $1, %rsp # Move 1 into the general purpose register %rsp
  add   %rbp, %rsp # Add the two registers and store the result into the latter register (%rsp in this case)
  movq	$1,%rax # Specifies the 'write' syscall
  movq	$1,%rdi
  movq	$5,%rdx # Specifies length
  TEST  $01,%rsp # Test if 'at result (%rsp) be even or naw
  jz even        # Jump to even() if its even
  jmp odd        # Jump to odd() if its odd
cont:
  syscall
  movq	$60,%rax # Exit
  syscall

# See helloworld.s if you don't get whats going on here
even:
  movq	$evenstr,%rsi
  jmp cont

odd:
  movq	$oddstr,%rsi
  jmp cont

