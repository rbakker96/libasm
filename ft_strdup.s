; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strdup.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: roybakker <roybakker@student.codam.nl>       +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/05/06 10:55:25 by roybakker     #+#    #+#                  ;
;    Updated: 2020/05/12 20:21:42 by roybakker     ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; ------------------------------------------------------------------------------
; char *strdup(const char *s1);
;
; The strdup() function allocates sufficient memory for a copy of the
; string s1, does the copy, and returns a pointer to it.  The pointer may
; subsequently be used as an argument to the function free(3).
;
; If insufficient memory is available, NULL is returned and errno is set to
; ENOMEM
;
; REGISTER	   -	 VARIABLE
;	rdi					dst
;	rsi					src
;	rcx					position in the string
;	dl					single char from string
; ------------------------------------------------------------------------------

global _ft_strdup
extern malloc
extern _ft_strlen

_ft_strdup:
