cd C:\Program Files\SmartBear\ReadyAPI-1.8.5\bin\
cmd.exe /C testrunner.bat -a -j "-RJUnit-Style HTML Report" -E%ENV% -I -Ppromgsource=%WORKSPACE%\CreateUsers\Api_Providers\DataSheets\%ENV%\CreateCoachOrberaData.xls -PcreateProviderResponse=%WORKSPACE%\CreateUsers\Results\Api_Providers\%ENV%\CreateCoachOrberaResponse.csv -Pprefix=%Prefix% %WORKSPACE%\CreateUsers\Api_Providers\scripts\CreateProvider.xml
