/* 4. Write a lex program to count the numbers of comment lines and identifiers in a given program. Also eliminate them and copy that program into separate file. */

%{
	#include<stdio.h>
	int comment=0;
	int identifiers=0;
	char ch;
%}
letter [a-zA-Z_]
digit [0-9]

%%
("/*"[^\n]+"*/")|("//".*\n) {comment++;fprintf(yyout," ");}
"int "|"float"|"double"|"char"  { ch=input();
for(;;)
{
if(ch==',')
       identifiers++;
else if(ch==';')
       break;
ch=input();
}
identifiers++;
} {fprintf(yyout," ");}
%%

int main(int argc,char* argv[])
{
	if(argc!=3)
	{
		printf("Do type as in the command line $./a.out find.txt replace.txt\n");
		exit(0);
	}
	yyin=fopen(argv[1],"r");
	yyout=fopen(argv[2],"w");
	yylex();
	printf("No. of comment lines = %d\n",comment);
	printf("No. of identifiers = %d\n",identifiers);
	return 0;
}

//id {letter}*|({letter}{digitt})+
