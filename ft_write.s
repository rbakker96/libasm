; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_write.s                                         :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:35 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/14 16:29:22 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; ssize_t	write(int fildes, const void *buf, size_t nbyte);
;
; write() attempts to write nbyte of data to the object referenced by the
; descriptor fildes from the buffer pointed to by buf.
;
; REGISTER	   -	 VARIABLE
;	rax					syscall-read = 0x2000004
;	rdi					fd
;	rsi					buffer
;	rdx					number of bytes to be written
; ------------------------------------------------------------------------------

global _ft_write

_ft_write:
			mov		rax,0x2000004			;put syscall number in register
			syscall
			jc		error					;jump if carry flag is set

return:
			ret

error:
			mov		rax,-1				;return -1 with error
			ret
