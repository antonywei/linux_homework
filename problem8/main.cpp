#include <cstring>
#include <iostream>
#include "function.h"


int main(){
	char s[100] = "hello,my name is kiki";
	int str_count;
	str_count = string_count(s);
	std::cout<<str_count<<std::endl;
	return 0;
}