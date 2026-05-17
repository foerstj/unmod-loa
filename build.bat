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

:: build resource file - enchantments
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\contentdb" "%tmp%\Bits\world\contentdb" /S pcontent.gas
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs% - enchantments.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: build resource file - equipments
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\contentdb\templates" "%tmp%\Bits\world\contentdb\templates" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs% - equipments.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
