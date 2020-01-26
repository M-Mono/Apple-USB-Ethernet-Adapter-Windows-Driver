@echo off

echo Apple USB Ethernet Adapter Windows Driver Patcher by sNullp
echo https://github.com/snullp/AppleEthernet
echo.
if not exist "Ax88772.inf" (echo Please put myself in the original driver folder that containing 'Ax88772.inf') & (pause & exit)
if exist "Ax88772.inf.bak" (echo Backup file detected, have you already applied the patch?) & (pause & exit)

echo Patching...
type Ax88772.inf > Ax88772.inf.bak
del Ax88772.inf
SETLOCAL ENABLEDELAYEDEXPANSION
for /f "tokens=*" %%a in (Ax88772.inf.bak) do (
set temp=%%a
set filtered=!temp:USB\VID_0B95^&PID_7720=USB\VID_05AC^&PID_1402!
set filtered=!filtered:"ASIX"="Apple"!
set filtered=!filtered:"USB2.0 to Fast Ethernet Driver Diskette"="Apple USB Ethernet Adapter CD"!
set filtered=!filtered:"ASIX AX88772 USB2.0 to Fast Ethernet Adapter"="Apple USB Ethernet Adapter"!
echo !filtered!>> Ax88772.inf
)
echo Job finished. Please note the driver losts its digital signature and you will receive an warning during the installation.
echo.
pause