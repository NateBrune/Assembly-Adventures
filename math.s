.data
oddstr:
  .string "odd\n"
evenstr:
  .string "even\n"

.globl	main
.globl odd
.globl even

main:
  movq  $5, %rbp # Move 5 into the general purpose register %rbp
  movq  $1, %rsp # Move 1 into the general purpose register %rsp
  add %rbp, %rsp # Add the two registers and store the result into the latter register (%rsp in this case)
  TEST $01, %rsp # Test if the result (%rsp) is even or naw
  jz even        # Jump to even() if its even
  jmp odd        # Jump to odd() if its odd
  ret            # return(), but I dont think we hit this ever because I am sloppy

# See helloworld.s if you don't get whats going on here
odd:
  movq	$1,%rax
  movq	$1,%rdi
  movq	$oddstr,%rsi
  movq	$4,%rdx
  syscall
  movq	$60,%rax
  syscall

even:
  movq	$1,%rax
  movq	$1,%rdi
  movq	$evenstr,%rsi
  movq	$5,%rdx
  syscall
  movq	$60,%rax
  syscall
