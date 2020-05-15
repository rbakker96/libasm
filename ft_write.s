; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_write.s                                         :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:35 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/15 11:53:53 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; ssize_t	write(int fildes, const void *buf, size_t nbyte);
;
; DESCRIPTION
; write() attempts to write nbyte of data to the object referenced by the
; descriptor fildes from the buffer pointed to by buf.
;
; RETURN VALUE
; The write function returns the nbyte bytes written.
;
; REGISTER	   -	 VARIABLE
;	rax					syscall-write = 0x2000004
;	rdi					fd
;	rsi					buffer
;	rdx					number of bytes to be written
;	rdx					temp storage of errno
; ------------------------------------------------------------------------------

global _ft_write
extern ___error

_ft_write:
			mov		rax,0x2000004			;put syscall number in register
			syscall
			jc		error					;jump if carry flag is set

return:
			ret

error:
			mov		rdx,rax					;save errno
			push	rdx
			call	___error				;retrieve addres of global errno
			pop		rdx
			mov		[rax],rdx				;save errno on retrieved addres
			mov		rax,-1					;return -1 with function
			ret
