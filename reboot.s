.globl	main
# For a quick intro to syscalls, look at helloworld.s
main: 
  movq $169,%rax        # 169 is the numerical representation of reboot() as defined in unistd_64.h
  movq $0xfee1dead,%rdi # Magic1; these bytese are a kernel easter egg, discover the rainbow at
  movq $85072278,%rsi   # Magic2A; http://man7.org/linux/man-pages/man2/reboot.2.html
  movq $0x01234567,%rdx # Numerical representation of the command LINUX_REBOOT_CMD_RESTART as defined in reboot.h
  syscall               # Execute the syscall like it 1999
  ret                   # TBH, we just executed the syscall, what is this returning too? 
                        # This lone program, in the vast emptyness of a rebooting system
                        # Makes you think.
