solution "ygo"
    location "build"
    language "C++"
    objdir "obj"

    USE_IRRKLANG = true

    configurations { "Release", "Debug" }

    configuration "windows"
        defines { "WIN32", "_WIN32", "WINVER=0x0501" }
        libdirs { "$(DXSDK_DIR)Lib/x86" }
        entrypoint "mainCRTStartup"
        systemversion "latest"
        startproject "ygopro"

    configuration { "windows", "vs2015" }
        toolset "v140_xp"

    configuration { "windows", "vs2017" }
        toolset "v141_xp"

    configuration { "windows", "vs2019" }
        toolset "v141_xp"

    configuration "bsd"
        defines { "LUA_USE_POSIX" }
        includedirs { "/usr/local/include" }
        libdirs { "/usr/local/lib" }

    configuration "macosx"
        defines { "LUA_USE_MACOSX" }
        includedirs { "/usr/local/include", "/usr/local/include/*" }
        libdirs { "/usr/local/lib", "/usr/X11/lib" }
        buildoptions { "-stdlib=libc++" }
        links { "OpenGL.framework", "Cocoa.framework", "IOKit.framework" }

    configuration "linux"
        defines { "LUA_USE_LINUX" }
        buildoptions { "-U_FORTIFY_SOURCE" }

    configuration "Release"
        optimize "Speed"
        targetdir "bin/release"

    configuration "Debug"
        symbols "On"
        defines "_DEBUG"
        targetdir "bin/debug"

    configuration { "Release", "vs*" }
        flags { "LinkTimeOptimization" }
        staticruntime "On"
        disablewarnings { "4244", "4267", "4305", "4838", "4577", "4819", "4018", "4996", "4477", "4091", "4828", "4800" }

    configuration { "Release", "not vs*" }
        symbols "On"
        defines "NDEBUG"
        buildoptions "-march=native"

    configuration { "Debug", "vs*" }
        defines { "_ITERATOR_DEBUG_LEVEL=0" }
        disablewarnings { "4819", "4828" }

    configuration "vs*"
        vectorextensions "SSE2"
        buildoptions { "/utf-8" }
        defines { "_CRT_SECURE_NO_WARNINGS" }
    
    configuration "not vs*"
        buildoptions { "-fno-strict-aliasing", "-Wno-multichar" }

    configuration {"not vs*", "windows"}
        buildoptions { "-static-libgcc" }

    include "ocgcore"
    include "gframe"
    if os.ishost("windows") then
    include "lua"
    include "event"
    include "freetype"
    include "irrlicht"
    include "sqlite3"
    include "ikpmp3"
    end
