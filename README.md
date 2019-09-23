# Compiler Design
Practice and Labworks from Compiler Design course

## Tools
- Flex
- Bison

## Lex and Yacc
Lex is short for "lexical analysis". Lex takes an input file containing a set of lexical analysis
rules or regular expressions. It generates token. Yacc is a parser generator. It’s nothing but a
program which processes those token into some larger meaning.

### Environment:
To program Lex and Yacc programs we have to install two packages –
- Flex : to make the Lex program work
- Bison : to make the Yacc program work
  
### Operating System – Ubuntu
To install Flex :
- sudo apt-get upgrade
- sudo apt-get install flex
To install Bison :
 - sudo apt-get upgrade
 - sudo apt-get install bison
 ### Compilation & Execution:

 - Open Command prompt and switch to working directory where lex file (.l) and yacc  file (.y) are stored
 - Let lex and yacc files be “hello.l” and “hello.y’’. Now, we have to follow the preceding steps to compile and run the program.
### For Compiling Lex file only:
1. lex hello.l
2. gcc lex.yy.c -lfl
### For Compiling Yacc file only:
1. yacc -d hello.y
2. cc y.tab.c –ly            
### For Compiling Lex & Yacc file both:
1. lex hello.l
2. yacc -d hello.y
3. gcc lex.yy.c y.tab.c -ll
### For Executing the Program
1. ./a.out	
### Operating System – Windows 10
### Installing Softwares:
1. Download Flex 2.5.4a
2. Download Bison 2.4.1
3. Download DevC++
4. Install Flex at “C:\GnuWin32“
5. Install Bison at “C:\GnuWin32“
6. Install DevC++ at “C:\Dev-Cpp“
7. Open Environment Variables.
8. Add “C:\GnuWin32\bin;C:\Dev-Cpp\bin;” to path.

### Compilation & Execution:

1.   Open Command prompt and switch to working directory where lex file (.l) and yacc  file (.y) are stored
2.   Let lex and yacc files be “hello.l” and “hello.y’’. Now, we have to follow the preceding steps to compile and run the program.

### For Compiling Lex file only:
1. flex hello.l
2. gcc lex.yy.c

### For Compiling Lex & Yacc file both:
1. flex hello.l
2. bison -dy hello.y
3. gcc lex.yy.c y.tab.c

### For Executing the Program
1. a.exe

### How Lex and Yacc work:                                                                 
We have to run Yacc program before the Lex program. Because Yacc reads the hello.y file and generate parser and includes in y.tab.c file. –d causes Yacc to generate definitions for tokens and place them in file y.tab.h. Lex reads the pattern descriptions in hello.l, includes file y.tab.h, and generates a lexical analyzer, that includes function yylex, in file lex.yy.c. At the end the lexer and parser are compiled and linked together to create executable hello.exe file.

## Solved Problems:
- Calculate a number is prime or not
- Calculate the number of vowels and consonants
- Calculate number of space, tab and other characters
- Find a number is even or odd
- Calculate sum, sub, mul, div using lex and yacc
- Take input from file and remove multiple spaces and write in another file
- Conversion of Binary to Decimal Number (yacc)
- Addition and Multiplication of two Decimal Number(yacc)
