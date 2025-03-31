@echo off
mode con: cols=70 lines=20
title Serveur HTTP Local

:: Définir les variables
set PORT=
set NGROK_URL=

cls
color 0A
echo.
echo  =============================================================
echo  =                                                           =
echo  =       Serveur HTTP Local - Port %PORT%                   =
echo  =                                                           =
echo  =============================================================
echo.
echo  [INFO] Demarrage du serveur avec listing des fichiers...
echo.
cd /d %~dp0
start /B serve public -p %PORT%
timeout /t 2 >nul

echo  [INFO] Demarrage de Ngrok pour exposer le serveur...
start "Ngrok Tunnel" cmd /k ngrok http --url=%NGROK_URL% %PORT%
timeout /t 2 >nul

echo  [INFO] Ouverture de l'URL publique dans le navigateur...
start https://%NGROK_URL%
echo.
echo  [OK] Serveur en cours d'execution sur https://%NGROK_URL%
echo.
echo  Appuyez sur une touche pour arreter le serveur et Ngrok...
pause >nul

cls
color 0C
echo.
echo  =============================================================
echo  =                                                           =
echo  =       Arret du Serveur HTTP Local                        =
echo  =                                                           =
echo  =============================================================
echo.
echo  Arret en cours...
taskkill /IM node.exe /F >nul 2>&1
taskkill /IM ngrok.exe /F >nul 2>&1
timeout /t 1 >nul
echo  [OK] Serveur et Ngrok arretes avec succes !
echo.
timeout /t 2 >nul
exit