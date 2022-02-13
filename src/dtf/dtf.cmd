@setlocal
@pushd %~dp0

@set _C=Debug
:parse_args
@if /i "%1"=="release" set _C=Release
@if not "%1"=="" shift & goto parse_args

@echo Cleaning dtf %_C%

msbuild -Restore -t:Clean dtf.sln -p:Configuration=%_C%

@echo Building dtf %_C%

msbuild -Restore -t:Build dtf.sln -p:Configuration=%_C%

@echo Cleaning and Building dtf %_C%

msbuild -Restore -t:Clean;Build dtf.sln -p:Configuration=%_C%

@echo Cleaning and Building dtf %_C%
msbuild -Restore -t:Clean;Build dtf.sln -p:Configuration=%_C%

@echo Cleaning and Building dtf %_C%
msbuild -Restore -t:Clean;Build dtf.sln -p:Configuration=%_C%

@echo Cleaning and Building dtf %_C%
msbuild -Restore -t:Clean;Build dtf.sln -p:Configuration=%_C%

@echo Cleaning and Building dtf %_C%
msbuild -Restore -t:Clean;Build dtf.sln -p:Configuration=%_C%

@popd
@endlocal
