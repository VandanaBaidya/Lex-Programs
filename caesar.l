/* 3. Write a lex program replaces every letter with the one five letters after in alphabetical order, wrapping around at Z.i.e.,b replaced by g, w by b,etc. */

%{
	#include<stdio.h>
%}
%%

[a-z] {char ch = yytext[0];
	ch += 5;
	if(ch>'z')
		ch -= ('z'+1 -'a');
	printf("%c",ch);
       }

[A-Z] {char ch = yytext[0];
	ch+=5;
	if(ch>'Z')
		ch-=('Z'+1-'A');
	printf("%c",ch);
	}
%%

int main(int argc,char* argv[])
{
	yylex();
	return 0;
}
