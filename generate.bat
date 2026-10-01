:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m unmod "regular/interactive" --bits "%bits%" --src source
if %errorlevel% neq 0 pause
popd
