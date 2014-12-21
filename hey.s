
.data
hello:
  .string "Hello World!\n"

.globl	main
main:
  movq	$1,%rax
  movq	$1,%rdi
  movq	$hello,%rsi
  movq	$13,%rdx
  int $0x80
  ret
