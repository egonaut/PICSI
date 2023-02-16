@echo off&color a && Title [PICSI - PNF/INF/CAT/SYS Installer ]
echo Welcome to PICSI, the universal PNF/INF/CAT/SYS Driver Installation Tool!
echo https://github.com/egonaut/PICSI/

:: Overly Convoluted Way of Adding a Delay LOL
ping -n 4 localhost 1>nul

:: Run from CD if necessary
cd %~dp0

:: Scan and Echo Files During Install
for /f "tokens=* delims=" %%a in ('dir /b /s /o:gen *.inf') do (
echo == Installing == "%%a"

:: Overly Convoluted Way of Adding a Delay Again Because I'm Just Insane
ping -n 4 localhost 1>nul

:: Windows Plug-n-Play Installer
start "" pnputil -i -a %%a
)
echo * ALL DONE! *
Echo.&Echo.&Echo.
echo == Reboot to finalize all driver installations :) ==&pause>nul
exit
