<p align="center">
  <img src="https://github.com/rbakker96/images/blob/master/codam_logo.png">
</p>

# Libasm 
***The aim of this project is to get familiar with assembly language.***

---

### Project summary
> 4th ring Codam project

An assembly (or assembler) language, often abbreviated asm, is a low-level programming language for a computer, or other programmable device, in which there is a very strong (but often not one-to-one) correspondence between the language and the architecture’s machine code instructions. Each assembly language is specific to a particular computer architecture. In contrast, most high-level programming languages are generally portable across multiple architectures but require interpreting or compiling. Assembly language may also be called symbolic machine code.

---

### Technical considerations
> The project needs to comply with the following rules/functionalities.

- The library must be called libasm.a.
- You must submit a main that will test your functions and that will compile with your library to show that it’s functional.
- You must rewrite the following functions in asm:
  - ft_strlen (man 3 strlen)
  - ft_strcpy (man 3 strcpy)
  - ft_strcmp (man 3 strcmp)
  - ft_write (man 2 write)
  - ft_read (man 2 read)
  - ft_strdup (man 3 strdup, you can call to malloc)
- You must check for errors during syscalls and properly set them when needed
- Your code must set the variable errno properly.
- For that, you are allowed to call the extern ___error.

---

### Usage
> A main with test files are provided to show the functionality of the code, this is a preview ot main.c

```javascript
int	main(int argv, char **argc)
{
	if (argv)
	printf("*********** TEST FT_STRLEN ***********\n");
	ft_strlen_test();
	printf("\n\n\n\n");
	printf("*********** TEST FT_STRCPY ***********\n");
	ft_strcpy_test();
	printf("\n\n\n\n");
	printf("*********** TEST FT_STRCMP ***********\n");
	ft_strcmp_test();
	printf("\n\n\n\n");
	printf("*********** TEST FT_STRDUP ***********\n");
	ft_strdup_test();
	printf("\n\n\n\n");
	printf("*********** TEST FT_READ ***********\n");
	ft_read_test(argc);
	printf("\n\n\n\n");
	printf("*********** TEST FT_WRITE ***********\n");
	ft_write_test();
}
```

> Run the following commands in the terminal

```shell
$ git clone https://github.com/rbakker96/libasm.git libasm
$ cd libasm
$ make
$ gcc -Wall -Wextra -Werror main.c libasm.a
$ ./a.out
```

---

### Used resources
> Most noteworthy resources used during this project

- <a href="https://www.udemy.com/course/x86-assembly-programming-from-ground-uptm/" target="_blank">x86 Assembly Language Programming From Ground Up - Isreal Gbati</a>
- <a href="https://www.freebsd.org/cgi/man.cgi?query=errno&sektion=2&manpath=freebsd-release-ports" target="_blank">Erno</a>
- <a href="https://www.tutorialspoint.com/assembly_programming/assembly_conditions.html" target="_blank">Learn NASM Assembly</a>
- <a href="https://en.wikipedia.org/wiki/FLAGS_register" target="_blank">Flags register</a>
- <a href="https://www.cs.uaf.edu/2010/fall/cs301/lecture/10_04_malloc.html" target="_blank">Allocate memory</a>
- <a href="http://www.idryman.org/blog/2014/12/02/writing-64-bit-assembly-on-mac-os-x/" target="_blank">Writing 64 Bit Assembly on Mac OS X</a>
- Intro To ComputerScience - cheatsheet (pdf file) 
- Man pages of respestive functions.
