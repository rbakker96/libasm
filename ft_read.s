; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_read.s                                          :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:07 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/14 18:46:41 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; ssize_t	read(int fildes, void *buf, size_t nbyte);
;
; read() attempts to read nbyte bytes of data from the object referenced by
; the descriptor fildes into the buffer pointed to by buf.
;
; REGISTER	   -	 VARIABLE
;	rax					syscall-read = 0x2000003
;	rdi					fd
;	rsi					buffer
;	rdx					number of bytes to be read
; ------------------------------------------------------------------------------

global _ft_read
extern ___error

_ft_read:
			mov		rax,0x2000003			;put syscall number in register
			syscall
			jc		fail					;jump if carry flag is set

return:
			ret

fail:
			mov		rdx,rax
			call	___error
		;	mov		[rax],rdx
			mov		rax,-1				;return -1 with error
			ret
