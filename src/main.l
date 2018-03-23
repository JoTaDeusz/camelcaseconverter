%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ccc_lib.h"



      char* sentence;
      char* camel;
      char* camelcompleta;
      char* underline;
      
%}



%%
([A-Z]+[a-z]+)+   {
			camel = (char *) malloc(2*sizeof(yytext));
			camelcase_to_underline(yytext, camel);
			printf("%s", camel);
		  }
	         
([a-z]+[_])+([a-z])+ { 
		       underline = (char *) malloc(2*sizeof(yytext));
		       underline_to_camelcase(yytext, underline);
		       printf("%s", underline);
		     }
		  		   		 
([A-Z]*[a-z]+[ ]+) {printf("%s", yytext);}




              

%%


int main() {
  yylex();
/* (([A-Z]+[a-z]+[_])+[][a-z]+)+ {printf("Erro!");} 
  ([A-Z]+[a-z]+)+   {printf("CC:%s ", yytext);}
	         
([a-z]+[_])+([a-z])+ {printf("UL:%s ", yytext);}
		  		   		 
([A-Z]*[a-z]+[ ]+) {printf("%s", yytext);} */


  return 0;
}


