@echo off
setlocal

set "projectName=Q1"
\masm32\bin\ml /c /Zd /coff %projectName%.asm
if errorlevel 1 (
    echo Error in code
    pause
    exit /b
)
\masm32\bin\Link /SUBSYSTEM:CONSOLE /DEFAULTLIB:\masm32\lib\kernel32.lib /DEFAULTLIB:\masm32\lib\user32.lib /DEFAULTLIB:\masm32\lib\gdi32.lib /DEFAULTLIB:\masm32\lib\msvcrt.lib /DEFAULTLIB:\masm32\lib\Irvine32.lib %projectName%.obj
cls
%projectName%.exe
endlocal
