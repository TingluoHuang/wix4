@setlocal
@pushd %~dp0

@set _C=Debug
:parse_args
@if /i "%1"=="release" set _C=Release
@if not "%1"=="" shift & goto parse_args

@echo Building dtf %_C%


msbuild -Restore -t:Build dtf.sln -p:Configuration=%_C% -nologo -fl -flp:logfile=actions_cancel_debug.log;verbosity=diagnostic -warnaserror -bl:..\..\build\logs\dtf_build.binlog || exit /b

@popd
@endlocal
