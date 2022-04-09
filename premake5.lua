workspace "CHIP8Interpreter"
    architecture "x86_64"
    startproject "CHIP8Interpreter"

    configurations{
        "Release",
        "Debug"
    }

    outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"


    include "CHIP8Interpreter"
    
group "Dependencies"
    include "CHIP8Interpreter/vendor/SDL2/SDL2.lua"
    include "CHIP8Interpreter/vendor/SDL2/SDL2main.lua"
group ""