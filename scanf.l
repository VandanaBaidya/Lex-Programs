/* 2. Program to count number of scanf and printf statement in a “C” program & replace them with readf and writef statements. */

%{
#include<stdio.h>
int count1=0, count2=0;
%}

%%
"printf" {fprintf(yyout,"writef"); count1++;}
"scanf" {fprintf(yyout,"readf"); count2++;}
%%

main(int argc, char *argv[])
{
	if(argc!=3)
	{
		printf("Do type as in the command line $./a.out find.txt replace.txt\n");
		exit(0);
	}
	yyin=fopen(argv[1],"r");
	yyout=fopen(argv[2],"w");
	yylex();
	printf("No. of printf lines = %d\n",count1);
	printf("No. of scanf lines = %d\n",count2);
}

int yywrap()
{
return 1;
}
