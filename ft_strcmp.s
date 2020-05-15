; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strcmp.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:14 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/15 11:00:07 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; int	strcmp(const char *s1, const char *s2);
;
; DESCRIPTION
; The strcmp() and strncmp() functions lexicographically compare the null-
; terminated strings s1 and s2.
;
; RETURN VALUE
; The strcmp() and strncmp() functions return an integer greater than, equal
; to, or less than 0, according as the string s1 is greater than, equal to, or
; less than the string s2.
;
; REGISTER	   -	 VARIABLE
;	rdi					s1
;	rsi					s2
;	rcx					position in the string
;	dl					single char from s1 (8 bits) - rdx -> 32 bits register
;	al					single char from s2 (8 bits) - rax -> 32 bits register
; ------------------------------------------------------------------------------

global _ft_strcmp

_ft_strcmp:
			mov		rcx,0					;set ofset to zero
			jmp		compare

increment:
			inc		rcx						;increment ofset with one

compare:
			mov		dl,byte[rdi + rcx]		;identify char from s1
			mov		al,byte[rsi + rcx]		;identify char from s2
			cmp		al,dl					;compare char s1 with char s2
			jne		return					;return if not equal
			cmp		dl,0					;check for end of string
			je		return					;return if end of string
			jmp		increment				;otherwise check next char

return:
			sub		rdx,rax					;calculate diff between s1 & s2
			mov		rax,rdx					;move difference in return value
			ret
