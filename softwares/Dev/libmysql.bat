@echo off
cls

REM USER CONFIGURE THESE VARIABLES
SET MSVC_DRIVE=C:
SET QT_DRIVE=D:
SET MYSQL_DRIVE=D:

REM USER CONFIGURE THESE VARIABLES
SET MSVC_DIR=%MSVC_DRIVE%\Program Files (x86)\Microsoft Visual Studio 9.0\VC
SET QT_DIR=%QT_DRIVE%\DEV\Qt4.7.2
SET MYSQL_DIR=%MYSQL_DRIVE%\DEV\MySQL Server 5.1

REM AUTO VARIABLE CUSTOMIZING
SET MY_INCLUDE=%MYSQL_DIR%\include
SET MY_LIB=%MYSQL_DIR%\lib\opt
SET MY_PLUGIN=%QT_DIR%\src\plugins\sqldrivers\mysql

REM UPDATE PATH VARIABLE
SET PATH=%MSVC_DIR%\bin;%QT_DIR%\bin;%PATH%

echo -- Using msvc in %MSVC_DIR%
echo -- Using qt in %QT_DIR%
echo -- Using mysql in %MYSQL_DIR%
echo -- Using plugin path %MY_PLUGIN%

echo -- Bulding mysql qt plugin...

call "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\bin\vcvars32.bat"

%QT_DRIVE%
cd "%MY_PLUGIN%"
qmake "LIBS+=-L\"%MY_LIB%\"" "INCLUDEPATH+=\"%MY_INCLUDE%\"" mysql.pro
nmake -f Makefile.Debug
nmake -f Makefile.Release

copy "%QT_DIR%\src\plugins\sqldrivers\mysql\debug\qsqlmysqld4.dll" "%QT_DIR%\plugins\sqldrivers"
copy "%QT_DIR%\src\plugins\sqldrivers\mysql\debug\qsqlmysqld4.lib" "%QT_DIR%\plugins\sqldrivers"
copy "%QT_DIR%\src\plugins\sqldrivers\mysql\release\qsqlmysql4.dll" "%QT_DIR%\plugins\sqldrivers"
copy "%QT_DIR%\src\plugins\sqldrivers\mysql\release\qsqlmysql4.lib" "%QT_DIR%\plugins\sqldrivers"

echo -- Build finished, if no error happens the plugins should be compiled.

@echo on

pause
