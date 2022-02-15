@setlocal
@pushd %~dp0

@set _C=Debug

@echo start...

@echo build %_C%

call build_init.cmd || exit /b 1

:: DTF

where msbuild

call dtf\dtf.cmd %_C% || exit /b 1

@popd
@endlocal
