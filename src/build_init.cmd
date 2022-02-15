@setlocal
@pushd %~dp0

md ..\build\artifacts
md ..\build\logs\TestResults

@echo finish build_init.cmd

@popd
@endlocal
