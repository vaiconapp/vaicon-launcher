@echo off
chcp 65001 >nul
title VAICON - Εκκίνηση
echo Ξεκινάω τα 3 προγράμματα τοπικά...

start "vaicon-app (8081)" cmd /k "cd /d %USERPROFILE%\Desktop\vaicon-app && npx expo start --web --port 8081"
start "vaicon-eidikes (8082)" cmd /k "cd /d %USERPROFILE%\Desktop\vaicon-eidikes && npx expo start --web --port 8082"
start "vaicon-installations (8083)" cmd /k "cd /d %USERPROFILE%\Desktop\vaicon-installations && npx expo start --web --port 8083"

echo Περιμένω να ανάψουν (περίπου 30 δευτερόλεπτα)...
timeout /t 30 /nobreak >nul

start "" "%USERPROFILE%\Desktop\vaicon-launcher\index.html"
exit
