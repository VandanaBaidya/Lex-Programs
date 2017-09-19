%{
	/* program to recognize a c program */
	int COMMENT=0;
%}
identifier [a-zA-Z][a-zA-Z0-9]*

%%
#.* { printf("\n%s is a Preprocess directive",yytext);}
int |
float |
char |
double |
while |
for |
do |
if |
break |
continue |
void |
switch |
case |
long |
struct |
const |
typedef |
return |
else |
goto {printf("\n\t%s is a Keyword",yytext);}
"/*" {COMMENT = 1;}
  /*{printf("\n\n\t%s is a COMMENT\n",yytext);}*/
"*/" {COMMENT = 0;}
  /*{printf("\n\n\t%s is a COMMENT\n",yytext);}*/
{identifier}\( {if(!COMMENT)printf("\n\nFunction\n\t%s",yytext);}
\{ {if(!COMMENT) printf("\n Block begins");}
\} {if(!COMMENT) printf("\n Block ends");}
{identifier}(\[[0-9]*\])? {if(!COMMENT) printf("\n %s Identifier",yytext);}
\".*\" {if(!COMMENT) printf("\n\t%s is a String",yytext);}
[0-9]+ {if(!COMMENT) printf("\n\t%s is a Number",yytext);}
\)(\;)? {if(!COMMENT) printf("\n\t");ECHO;printf("\n");}
\( ECHO;
= {if(!COMMENT)printf("\n\t%s is an Assignment operator",yytext);}
\<= |
\>= |
\< |
== |
\> {if(!COMMENT) printf("\n\t%s is a Relational operator",yytext);}
%%

int main(int argc,char **argv)
{
	if (argc > 1)
	{
	FILE *file;
	file = fopen(argv[1],"r");
	if(!file)
	{
	printf("could not open %s \n",argv[1]);
	exit(0);
	}
	yyin = file;
	}
	yylex();
	printf("\n\n");
	return 0;
}

int yywrap()
{
return 0;
}
