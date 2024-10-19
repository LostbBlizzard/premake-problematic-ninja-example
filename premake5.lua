workspace "WorkSpace"
    configurations { "Debug", "Release" }
    startproject "subproject2"
    cppdialect "c++17"

    -- platforms { "Win64","linux64", "MacOS" }
    platforms { "linux64" }

if os.host() == "windows" then
            defaultplatform "Win64"
end
if os.host() == "linux" then
            defaultplatform "linux64"
end
if os.host() == "MacOS" then
            defaultplatform "MacOS"
end
print(os.host())

OutDirPath = "%{cfg.platform}/%{cfg.buildcfg}"
SomeProgramOutputDir = "%{wks.location}/Output/subproject1/" .. OutDirPath .. "/"
ProgramPath = SomeProgramOutputDir .. "program1"

include "subproject1"
include "subproject2"
