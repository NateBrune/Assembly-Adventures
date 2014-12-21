.globl	main
main:
  movq $169,%rax
  movq $0xfee1dead,%rdi
  movq $85072278,%rsi
  movq $0x01234567,%rdx
  syscall
  ret
