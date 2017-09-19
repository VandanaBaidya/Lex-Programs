/*Program to count no of:
a) +ve and –ve integers
b) +ve and –ve fractions*/

%{
	int positiveno = 0;
	int negativeno = 0;
	int positivefractions = 0;
	int negativefractions = 0;
%}

DIGIT[0-9]
%%

\+?{DIGIT}+ positiveno++;
-{DIGIT}+ negativeno++;

\+?{DIGIT}*\.{DIGIT}+ positivefractions++;
-{DIGIT}*\.{DIGIT}+ negativefractions++;
.;
%%

main()
{
	yylex();
	printf("\nNo. of positive numbers: %d",positiveno);
	printf("\nNo. of negative numbers: %d",negativeno);
	printf("\nNo. of positive fractions: %d",positivefractions);
	printf("\nNo. of negative fractions: %d\n",negativefractions);
}
