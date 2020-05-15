; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strlen.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:30 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/15 10:56:31 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; size_t	strlen(const char *string)
;
; DESCRIPTION
; The strlen() function computes the length of the string s.
;
; RETURN VALUE
; The strlen() function returns the number of characters that precede the
; terminating NUL character.
;
; REGISTER	   -	 VARIABLE
;	rdi					string
;	rax					counter
; ------------------------------------------------------------------------------

global _ft_strlen

_ft_strlen:
			mov		rax,0				;initialize counter at zero
			jmp		compare				;check first charachter

increment:
			inc		rax					;increment the counter

compare:
			cmp		byte[rdi + rax],0	;check if string is at the end
			jne		increment			;if not equal increment

return:
			ret							;return the counter
