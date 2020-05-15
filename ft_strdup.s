; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strdup.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:25 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/15 11:01:46 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; char *strdup(const char *s1);
;
; DESCRIPTION
; The strdup() function allocates sufficient memory for a copy of the
; string s1, does the copy, and returns a pointer to it.  The pointer may
; subsequently be used as an argument to the function free(3).
;
; RETURN VALUE
; Returns a pointer to the created string. If insufficient memory is available,
; NULL is returned.
;
; REGISTER	   -	 VARIABLE
;	rdi					s1 (entry value)
;
; NOTICE - rdi & rsi are used for multiple different sub-functions
; ------------------------------------------------------------------------------

global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_strcpy

_ft_strdup:
			push	rdi					;push s1 to the stack
			call	_ft_strlen
			pop		rsi					;rsi becomes s1
			mov		rdi,rax				;rdi becomes length of s1

memory:
			push	rsi					;push s1 to the stack
			call	_malloc
			pop		rsi					;rdi becomes s1 (src string)
			mov		rdi,rax				;rdi becomes s2 (dst string)
			cmp		rdi,0				;check for malloc fail
			jz		error

copy:
			call	_ft_strcpy

return:
			ret							;return string in case of succes

error:
			mov		rax,0				;return zero in case of failure
			ret
