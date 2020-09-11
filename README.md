Libasm - Assembly yourself!

--------------------- Project summary ---------------------

An assembly (or assembler) language, often abbreviated asm, is a low-level programming
language for a computer, or other programmable device, in which there is a very strong
(but often not one-to-one) correspondence between the language and the architecture’s
machine code instructions. Each assembly language is specific to a particular computer
architecture. In contrast, most high-level programming languages are generally portable
across multiple architectures but require interpreting or compiling. Assembly language
may also be called symbolic machine code.

--------------------- Technical considerations ---------------------

• The library must be called libasm.a.

• You must submit a main that will test your functions and that will compile with your library to show that it’s functional.

• You must rewrite the following functions in asm:

◦ ft_strlen (man 3 strlen)

◦ ft_strcpy (man 3 strcpy)

◦ ft_strcmp (man 3 strcmp)

◦ ft_write (man 2 write)

◦ ft_read (man 2 read)

◦ ft_strdup (man 3 strdup, you can call to malloc)

• You must check for errors during syscalls and properly set them when needed

• Your code must set the variable errno properly.

• For that, you are allowed to call the extern ___error.

--------------------- Used resources ---------------------

To get a solid understanding of assembly language I followed an additional udemy course -

• x86 Assembly Language Programming From Ground Up - Isreal Gbati

Next to this course I used the following resources 

• Erno - https://www.freebsd.org/cgi/man.cgi?query=errno&sektion=2&manpath=freebsd-release-ports

• Intro To ComputerScience - cheatsheet - pdf file. 

• Man pages of respestive functions.


