IO:
	.string "%lld"
	.text
	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	.data
L1:	.string "You must give 2 integers.\n"
	.text
	leaq L1(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L2:	.string "First integer: "
	.text
	leaq L2(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq %rax, %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq scanf
	.data
L3:	.string "Second integer: "
	.text
	leaq L3(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq %rax, %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq scanf
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq %rax
	addq %rax, (%rsp)
	movq %rbp, %rax
	leaq -24(%rax), %rax
	popq (%rax)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq %rax
	subq %rax, (%rsp)
	movq %rbp, %rax
	leaq -32(%rax), %rax
	popq (%rax)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq %rax
	imulq (%rsp), %rax
	movq %rax, (%rsp)
	movq %rbp, %rax
	leaq -40(%rax), %rax
	popq (%rax)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rax
	movq %rbp, %rax
	leaq -48(%rax), %rax
	popq (%rax)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rdx
	movq %rbp, %rax
	leaq -56(%rax), %rax
	popq (%rax)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	leaq -16(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq %rbx
	movq $1, %rax
L5:
	cmpq $0, %rbx
	jle L4
	imulq (%rsp), %rax
	subq $1, %rbx
	jmp L5
L4:
	movq %rax, (%rsp)
	movq %rbp, %rax
	leaq -64(%rax), %rax
	popq (%rax)
	.data
L6:	.string "sum = "
	.text
	leaq L6(%rip), %rdi
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
L7:	.string "\n"
	.text
	leaq L7(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L8:	.string "sub = "
	.text
	leaq L8(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -32(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq  %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L9:	.string "\n"
	.text
	leaq L9(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L10:	.string "mul = "
	.text
	leaq L10(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -40(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq  %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L11:	.string "\n"
	.text
	leaq L11(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L12:	.string "div = "
	.text
	leaq L12(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -48(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq  %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L13:	.string "\n"
	.text
	leaq L13(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L14:	.string "rem = "
	.text
	leaq L14(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -56(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq  %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L15:	.string "\n"
	.text
	leaq L15(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L16:	.string "exp = "
	.text
	leaq L16(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -64(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	popq  %rsi
	leaq IO(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L17:	.string "\n"
	.text
	leaq L17(%rip), %rdi
	movq $0, %rax
	callq printf
	leaveq
	retq
