project "subproject2"
   kind "ConsoleApp" 
   language "C++"
   dependson {"subproject1"}

   targetname ("program2")
   targetdir ("../Output/%{prj.name}/" .. OutDirPath)
   objdir ("../Output/int/%{prj.name}/" .. OutDirPath)


   prebuildcommands { ProgramPath .." pwdcmd", }
   prebuildmessage "runing test program1"
   files { "main.cpp"}
