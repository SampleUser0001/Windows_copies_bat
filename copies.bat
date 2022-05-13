@echo off
setlocal enabledelayedexpansion

set PROJECT_HOME=c:\work\
set PWD=%~dp0

setlocal enabledelayedexpansion

for /f "delims=" %%a in (%1) do (
    set origin_dir=%%~dpa
    mkdir !origin_dir:%PROJECT_HOME%=%PWD%!
    copy %%a !origin_dir:%PROJECT_HOME%=%PWD%!\%%~nxa
)

