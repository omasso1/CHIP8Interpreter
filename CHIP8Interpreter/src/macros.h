#pragma once
#include <iostream>

#ifdef DEBUG_MODE
#define DEBUG_INFO(x,y) std::cout<<x<<std::hex << y<<std::endl
#else 
#define DEBUG_INFO(x) ;
#endif