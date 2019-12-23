#include "function.h"
#include <cstring>
#include <iostream>

int string_count(char * input_string){
	const char *d = " ,./";
	char *p;
	p = std::strtok(input_string, d);
	int str_count = 0;
	while(p){
        str_count ++;
        p = std::strtok(NULL,d);
	}
	return str_count;
}