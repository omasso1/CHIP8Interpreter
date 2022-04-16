project "CHIP8Interpreter"
    kind "ConsoleApp"
    language "C++"
    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin/int" .. outputdir .. "/%{prj.name}")

    files{
        "src/**.cpp",
        "src/**.h",
        "src/**.hpp"
    }

    defines{
        "_CRT_SECURE_NO_WARNINGS"
    }

    includedirs {
        "%{wks.location}/CHIP8Interpreter/src",
        "%{wks.location}/CHIP8Interpreter/vendor/SDL2/include"
    }

    links{
        "%{wks.location}/CHIP8Interpreter/vendor/SDL2/Binaries/Debug-windows-x86_64/SDL2"
    }
