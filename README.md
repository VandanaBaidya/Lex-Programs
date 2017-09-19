## Installation of Lex and Yacc in Ubuntu
 **Sudo apt-get install bison**
 
 **Sudo apt-get install flex**
 
 **Sudo apt-get install byacc**
 
 Exit
 
**Bison** is a general purpose parser generator that converts an annotated context free grammar into LALR parser for that grammar.

**Flex** is a tool for generating scanners.

A scanner, sometimes called a tokenizer, is a problem which recognizes lexical patterns in text.

Berkely yacc (byacc) is generally considered to be the best yacc variant available. In contrast to bison, it is written to avoid dependencies upon a particular compiler.

## Compilation and Execution of Lex program:
**lex filename.l**

**cc lex.yy.c –ll**

**./a.out**

While installing if we get problem related to mergelist

First remove the Merge List by opening a terminal (Press Ctrl+Alt+T to launch) and run this command*: (Site: https://askubuntu.com/questions/30072/how-do-i-fix-a-problem-with-mergelist-or-status-file-could-not-be-parsed-err)

__sudo rm -vf /var/lib/apt/lists/*__ 

Next, generate a new one by running a simple update:

**sudo apt-get update**

Or

**sudo apt-get clean**

**sudo apt-get update**
