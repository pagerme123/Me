@echo off
setlocal

:: Prompt the user for a file path
set /p "filePath=Enter the full file path (including the .mp3 file name): "

:: Check if the file exists and has the correct extension
if not exist "%filePath%" (
    echo The file does not exist. Please check the path and try again.
    exit /b
)

if /i "%~x1" neq ".mp3" (
    echo The specified file is not an MP3 file. Please provide a valid .mp3 file.
    exit /b
)

:: Change the file extension to .zip
set "newFilePath=%~dpn1.zip"

:: Rename the file
ren "%filePath%" "%newFilePath%"
echo File renamed to: %newFilePath%

endlocal
