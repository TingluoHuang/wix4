@setlocal
@pushd %~dp0

@copy nuget_official.config nuget.config

build_all.cmd Debug Official

@popd
@endlocal
