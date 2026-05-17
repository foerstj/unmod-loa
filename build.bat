:: name of mod, case-sensitive
set mod=unmod-loa
set mod_cs=Unmod LoA

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

set year=2026
set copyright=CC-BY-SA %year%
set author=Johannes Förstner
set title=%mod_cs%

:: build resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\contentdb" "%tmp%\Bits\world\contentdb" /E pcontent.gas
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs%.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
