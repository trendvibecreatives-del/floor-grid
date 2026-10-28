@echo off
rem Opens Floor Grid in your browser.
rem If Python is installed, it runs a small local web server (most reliable).
rem Keep this window open while playing. Close it to stop.
cd /d "%~dp0"

where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8765/floor-grid.html
  python -m http.server 8765
  goto :eof
)

where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8765/floor-grid.html
  py -m http.server 8765
  goto :eof
)

rem No Python: open the file directly in Chrome or Edge.
echo Python not found - opening the app file directly.
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%~dp0floor-grid.html"
) else if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%~dp0floor-grid.html"
) else (
  start "" "%~dp0floor-grid.html"
)
