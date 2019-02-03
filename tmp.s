IO:
	.string "%lld"
	.text
	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq $1
	movq %rbp, %rax
	leaq -16(%rax), %rax
	popq (%rax)
	pushq $5
	pushq $0
	movq %rbp, %rax
	leaq -8(%rax), %rax
	popq (%rax)
	popq %rbx
L1:
	cmpq (%rax), %rbx
	je L2
	pushq %rax
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	pushq $3
	popq %rax
	imulq (%rsp), %rax
	movq %rax, (%rsp)
	movq %rbp, %rax
	leaq -16(%rax), %rax
	popq (%rax)
	popq %rax
	addq $1, (%rax)
	jmp L1
L2:
	movq %rbp, %rax
	leaq -16(%rax), %rax
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
