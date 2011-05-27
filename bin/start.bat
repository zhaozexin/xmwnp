@ECHO OFF

SET XMWNP_HOME=%~dp0/..
SET NGINX_HOME=%XMWNP_HOME%/nginx

echo Starting PHP FastCGI...
%XMWNP_HOME%/bin/RunHiddenConsole.exe %XMWNP_HOME%/php/php-cgi.exe -b 127.0.0.1:9000 -c %XMWNP_HOME%/conf/php.ini

cd %NGINX_HOME%
echo Starting nginx...
start nginx.exe -c ../conf/nginx.conf

pause