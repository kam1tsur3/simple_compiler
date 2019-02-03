IO:
	.string "%lld"
	.text
	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq $5
	pushq $4
	popq %rax
	addq %rax, (%rsp)
	movq %rbp, %rax
	leaq -16(%rax), %rax
	popq (%rax)
	pushq $4
	movq %rbp, %rax
	leaq -24(%rax), %rax
	popq (%rax)
	pushq $5
	movq %rbp, %rax
	leaq -8(%rax), %rax
	popq (%rax)
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq  %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L1:	.string "\n"
	.text
	leaq L1(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -24(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq  %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L2:	.string "\n"
	.text
	leaq L2(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq  %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L3:	.string "\n"
	.text
	leaq L3(%rip), %rdi
	movq $0, %rax
	callq printf
	leaveq
	retq
