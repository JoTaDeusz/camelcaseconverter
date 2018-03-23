
#include "ccc_lib.h"

void camelcase_to_underline(char *input, char *output) {
  int i, k = 1;  
  output[0] = input[0] + 32;
  for(i = 1; input[i] != '\0'; i++){
    if((input[i] <= 90) && (input[i] >= 65)){ output[k] = '_'; k++; output[k] = input[i] + 32; }
    else output[k] = input[i];
    k++;
    }
  
  return;
}

void underline_to_camelcase(char *input, char *output) {
  int i, k = 1;  
  output[0] = input[0] - 32;
  
  for(i = 1; input[k] != '\0'; i++){
    
    if(input[k] == '_'){ k++; output[i] = input[k] - 32; }
    else  output[i] = input[k];  
    
     k++;
    
  }
  
  return;
}




