@echo off
:: DNS Checker and Domain Analysis Tool
title DNS Checker - SEO and Domain Analysis Tool
color 0A

:menu
cls
echo ==========================================
echo        DNS Checker and SEO Tool
echo ==========================================
echo [1] Check DNS Records
echo [2] Whois Domain Information
echo [3] Ping Domain
echo [4] Exit
echo ==========================================
set /p choice="Choose an option: "

if "%choice%"=="1" goto dnscheck
if "%choice%"=="2" goto whoisinfo
if "%choice%"=="3" goto pingdomain
if "%choice%"=="4" goto exit
goto menu

:dnscheck
cls
set /p domain="Enter the domain name: "
echo Checking DNS records for %domain%...
nslookup %domain%
pause
goto menu

:whoisinfo
cls
set /p domain="Enter the domain name: "
echo Retrieving WHOIS information for %domain%...
whois %domain%
pause
goto menu

:pingdomain
cls
set /p domain="Enter the domain name: "
echo Pinging %domain%...
ping %domain%
pause
goto menu

:exit
echo Exiting the tool. Have a great day!
exit
