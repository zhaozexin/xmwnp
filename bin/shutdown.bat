@ECHO OFF

echo Stopping nginx...
taskkill /f /IM nginx.exe

echo Stopping PHP FastCGI...
taskkill /f /IM php-cgi.exe

pause