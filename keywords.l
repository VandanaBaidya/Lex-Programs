/* LEX Program to identify Keywords and convert it into uppercase */

%{
	#include<stdio.h>
	int i;
%}
keyword main|int|scanf|printf|if|else
%%

{keyword}
{
	for(i=0;i<yyleng;i++)
		printf("%c",toupper(yytext[i]));
}
%%

main()
{
	yyin = fopen("num.c")
}
