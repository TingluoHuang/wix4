@setlocal
@pushd %~dp0

@set _C=Debug

@echo start...

@echo build %_C%

rmdir /S /Q ..\build\artifacts
rmdir /S /Q ..\build\logs\TestResults

md ..\build\artifacts
md ..\build\logs\TestResults

:: DTF

call dtf\dtf.cmd %_C% || exit /b 1

@popd
@endlocal
