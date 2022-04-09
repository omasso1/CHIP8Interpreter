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

    includedirs = {
        "src"
    }