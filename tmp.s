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
	pushq $9
	popq %rax
	addq %rax, (%rsp)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	popq (%rax)
	.data
L4:	.string "sum = "
	.text
	leaq L4(%rip), %rdi
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
L5:	.string "\n"
	.text
	leaq L5(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L6:	.string "sub = "
	.text
	leaq L6(%rip), %rdi
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
L7:	.string "\n"
	.text
	leaq L7(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L8:	.string "mul = "
	.text
	leaq L8(%rip), %rdi
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
L9:	.string "\n"
	.text
	leaq L9(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L10:	.string "div = "
	.text
	leaq L10(%rip), %rdi
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
L11:	.string "\n"
	.text
	leaq L11(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L12:	.string "rem = "
	.text
	leaq L12(%rip), %rdi
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
L13:	.string "\n"
	.text
	leaq L13(%rip), %rdi
	movq $0, %rax
	callq printf
	.data
L14:	.string "a+=9  = "
	.text
	leaq L14(%rip), %rdi
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
L15:	.string "\n"
	.text
	leaq L15(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	pushq $1
	popq %rax
	addq %rax, (%rsp)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	popq (%rax)
	.data
L16:	.string "a++ = "
	.text
	leaq L16(%rip), %rdi
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
L17:	.string "\n"
	.text
	leaq L17(%rip), %rdi
	movq $0, %rax
	callq printf
	pushq $1
	movq %rbp, %rax
	leaq -8(%rax), %rax
	popq (%rax)
L19:
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	pushq $0
	popq %rax
	popq %rbx
	cmpq %rax, %rbx
	jle L18
	subq $16, %rsp
	.data
L20:	.string "Hello\n"
	.text
	leaq L20(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	pushq $1
	popq %rax
	subq %rax, (%rsp)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	popq (%rax)
	jmp L19
L18:
	subq $16, %rsp
	.data
L24:	.string "dowhile\n"
	.text
	leaq L24(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	pushq $1
	popq %rax
	subq %rax, (%rsp)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	popq (%rax)
L22:
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	pushq $0
	popq %rax
	popq %rbx
	cmpq %rax, %rbx
	jle L21
	subq $16, %rsp
	.data
L23:	.string "dowhile\n"
	.text
	leaq L23(%rip), %rdi
	movq $0, %rax
	callq printf
	movq %rbp, %rax
	leaq -8(%rax), %rax
	movq (%rax), %rax
	pushq %rax
	pushq $1
	popq %rax
	subq %rax, (%rsp)
	movq %rbp, %rax
	leaq -8(%rax), %rax
	popq (%rax)
	jmp L22
L21:
	leaveq
	retq
