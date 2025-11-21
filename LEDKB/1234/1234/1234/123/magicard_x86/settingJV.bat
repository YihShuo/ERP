@echo off
set regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set filePath=%~dp0
echo %filePath%
set javahome=%filePath%jre
echo %javahome%
set JAVA_HOME=%javahome%
set CLASSPATH=.;%JAVA_HOME%\lib\tools.jar;%JAVA_HOME%\lib\dt.jar;
set path=%JAVA_HOME%\bin;%JAVA_HOME%\jre\bin;
lemonnt -jar "%filePath%magicard.jar"
pause>nul