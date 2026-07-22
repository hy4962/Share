@echo on
bcdedit /set hypervisorlaunchtype off
timeout /t 5
Pushd "%~dp0"
powershell -ExecutionPolicy Bypass .\DG_Readiness_Tool_v3.6.ps1 -Disable
timeout /t 5
shutdown -r -t 5