/* 5. Write a lex program to recognize a valid arithmetic expression and identify the identifiers and operators present. Print them separately. */

%{
	#include<stdio.h>
	int flaga=0,flags=0,flagm=0,flagd=0,op=0,cl=0;
%}
id[a-zA-Z]+
%%

{id} {printf("%s is an identifier\n",yytext);}
[+] {flaga=1;}
[-] {flags=1;}
[*] {flagm=1;}
[/] {flagd=1;}
[(] {op++;}
[)] {cl++;}
%%

int main()
{
	printf("Enter the expression:\n");
	yylex();
	if(op-cl==0)
	{
		printf("Valid expression\n");
	}
	else
	{
		printf("Invalid expression\n");
	}
	printf("Operators are:\n");
	if(flaga==1) printf("+ ");
	if(flags==1) printf("- ");
	if(flagm==1) printf("* ");
	if(flagd==1) printf("/ ");
	
	return 0;
}
