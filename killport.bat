@ECHO OFF 
cls      
:loop
cls
:enterPort
cls
set /P port="Entrez un port. [ q => quitter ] : " 
If "%port%"=="q"  goto endLoop 
cls
echo.
echo.
echo Liste des processus qui contiennent "%port%". Trouvez le processus que vous souhaitez arreter.
echo.
netstat -aon | findstr i
echo.
netstat -aon | findstr %port%  
echo.
echo. -------------------------
echo.
echo (*Le dernier chiffre est l'ID du processus.)
echo.
set /P processId="Saisir l'ID du processus a tuer. [ r => retour , q => quitter ] : " 
If "%processId%"=="r"  goto enterPort   
If "%processId%"=="q"  goto endLoop                                                                
taskkill /F /PID %ProcessId%

goto loop

:endLoop
cls
echo.
echo.
echo.
echo.
PAUSE