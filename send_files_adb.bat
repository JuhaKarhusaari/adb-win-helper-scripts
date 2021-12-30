echo off
set source_file=%1
shift
adb push %source_file% /sdcard/ 
pause