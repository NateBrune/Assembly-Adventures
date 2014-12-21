.data
oddstr:
  .string "odd\n"
evenstr:
  .string "even\n"

.globl	main
.globl odd
.globl even

main:
  movq  $5, %rbp
  movq  $2, %rsp
  add %rbp, %rsp
  TEST $01, %rbp
  jz even
  jmp odd
  ret

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
