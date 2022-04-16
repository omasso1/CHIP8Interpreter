#define SDL_MAIN_HANDLED

#include <iostream>
#include <vector>
#include <string>
#include "CHIP8Interpreter\CHIP8Interpreter.h"


std::string getFilePath(int argc, char** argv) {
    if (argc != 2)
        throw std::runtime_error("Wrong program argument. One - Path to the ROM file");
    return argv[1];
}



int main(int argc, char** argv) {

    
    try {
        std::string filePath = getFilePath(argc, argv);
        CHIP8Interpreter Interpreter(filePath);
        Interpreter.mainLoop();
    }
    catch (std::runtime_error& e) {
        std::cerr << e.what() << std::endl;
    }
    catch (...) {
        std::cerr << "Some error" << std::endl;
    }

    



    return 0;
}