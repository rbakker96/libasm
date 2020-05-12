; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strlen.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:30 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/12 20:04:12 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; size_t	strlen(const char *string)
;
; The strlen() function computes the length of the string s.
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
