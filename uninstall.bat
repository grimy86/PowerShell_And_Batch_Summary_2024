@echo off
taskkill /F /IM AnyViewer.exe >nul 2>&1
"C:\Program Files (x86)\AnyViewer\unins000.exe" /silent /uninstall
exit /b %errorlevel%