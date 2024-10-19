project "subproject1"
   kind "ConsoleApp" 
   language "C++"

   targetname ("program1")
   targetdir ("../Output/%{prj.name}/" .. OutDirPath)
   objdir ("../Output/int/%{prj.name}/" .. OutDirPath)


   files { "main.cpp"}
