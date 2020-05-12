/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   mandatory.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: roybakker <roybakker@student.codam.nl>       +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/05/06 14:47:09 by roybakker     #+#    #+#                 */
/*   Updated: 2020/05/12 20:15:22 by roybakker     ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int		ft_strlen(char *string);
char	*ft_strcpy(char *dst, char *src);
int		ft_strcmp(const char *s1, const char *s2);
char 	*ft_strdup(const char *s1);

void	ft_strlen_test(void)
{
	printf("Test 1 - strlen %lu\n", strlen("test1"));
	printf("Test 1 - ft_strlen %d\n", ft_strlen("test1"));
	printf("\n\n");
	printf("Test 2 - strlen %lu\n", strlen("test2 met spatie"));
	printf("Test 2 - ft_strlen %d\n", ft_strlen("test2 met spatie"));
	printf("\n\n");
	printf("Test 3 - strlen %lu\n", strlen(""));
	printf("Test 3 - ft_strlen %d\n", ft_strlen(""));
}

void	ft_strcpy_test(void)
{
	char	dst_one[30];
	char	dst_two[30];

	printf("Test 1 - strcpy %s\n", strcpy(dst_one, "test1"));
	printf("Test 1 - ft_strcpy %s\n", ft_strcpy(dst_two, "test1"));
	printf("\n\n");
	printf("Test 2 - strcpy %s\n", strcpy(dst_one, "test2 met spaties"));
	printf("Test 2 - ft_strcpy %s\n", ft_strcpy(dst_two, "test2 met spaties"));
	printf("\n\n");
	printf("Test 3 - strcpy %s\n", strcpy(dst_one, ""));
	printf("Test 3 - ft_strcpy %s\n", ft_strcpy(dst_two, ""));
}

void	ft_strcmp_test(void)
{
	char *s1 = malloc(sizeof(char) * 10);
	char *s2 = malloc(sizeof(char) * 10);
	char *s3 = malloc(sizeof(char) * 10);
	char *s4 = malloc(sizeof(char) * 10);

	s1 = "z";
	s2 = "a";
	s3 = "abc";
	s4 = "def";
	printf("Test 1 - strcmp %d\n", strcmp("test1", "test1"));
	printf("Test 1 - ft_strcmp %d\n", ft_strcmp("test1", "test1"));
	printf("\n\n");
	printf("Test 2 - strcmp %d\n", strcmp(s1, s2));
	printf("Test 2 - ft_strcmp %d\n", ft_strcmp(s1, s2));
	printf("\n\n");
	printf("Test 3 - strcmp %d\n", strcmp("", ""));
	printf("Test 3 - ft_strcmp %d\n", ft_strcmp("", ""));
	printf("\n\n");
	printf("Test 4 - strcmp %d\n", strcmp(s3, s4));
	printf("Test 4 - ft_strcmp %d\n", ft_strcmp(s3, s4));
}

int		main(void)
{
	printf("*********** TEST FT_STRLEN ***********\n");
	ft_strlen_test();
	printf("\n\n\n\n");
	printf("*********** TEST FT_STRCPY ***********\n");
	ft_strcpy_test();
	printf("\n\n\n\n");
	printf("*********** TEST FT_STRCMP ***********\n");
	ft_strcmp_test();
}
