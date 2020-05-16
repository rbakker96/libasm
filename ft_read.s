; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_read.s                                          :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:07 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/16 14:27:44 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; ssize_t	read(int fildes, void *buf, size_t nbyte);
;
; DESCRIPTION
; read() attempts to read nbyte bytes of data from the object referenced by
; the descriptor fildes into the buffer pointed to by buf.
;
; RETURN VALUE
; The read function returns the nbyte bytes read.
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
