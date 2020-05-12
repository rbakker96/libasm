; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strcpy.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:20 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/12 20:23:30 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; char	*strcpy(char * dst, const char * src);
;
; The stpcpy() functions copy the string src to dst (including the terminating
; `\0' character.)
;
; REGISTER	   -	 VARIABLE
;	rdi					dst
;	rsi					src
;	rcx					position in the string
;	dl					single char from string
; ------------------------------------------------------------------------------

global _ft_strcpy

_ft_strcpy:
			mov		rcx,0						;set ofset to zero
			jmp		copy

increment:
			inc 	rcx							;increment ofset with one

copy:
			mov		dl,byte[rsi + rcx]			;identify char from src
			mov		byte[rdi + rcx],dl			;copy char to dst
			cmp		byte[rsi + rcx],0			;check for end of src string
			jne		increment

return:
			mov		rax, rdi					;move dst in return value
			ret									;return dst
