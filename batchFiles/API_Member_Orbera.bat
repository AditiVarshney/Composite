cd C:\Program Files\SmartBear\ReadyAPI-1.8.5\bin
cmd.exe /C testrunner.bat "-RProject Report" -E%ENV% -I -PcreateMemDataSheet=%WORKSPACE%\CreateUsers\Api_Members\Datasheets\%ENV%\CreateMemberVulcanData.xls -PCreateMemResponse=%WORKSPACE%\CreateUsers\Results\Api_Members\%ENV%\CreateMemberVulcanResults.csv -Pprefix=%Prefix% -Psuffix=%Suffix% %WORKSPACE%\CreateUsers\Api_Members\Scripts\CreateMemberVulcan.xml
cmd.exe /C testrunner.bat -sSetPlacementDate -cSetPlacementDate "-RJUnit-Style HTML Report" -E%ENV% -I -PmemDashbrdSrc=%WORKSPACE%\CreateUsers\Api_Members\Datasheets\%ENV%\SetPlacementDateData.xls -PmemDashboardRes=%WORKSPACE%\CreateUsers\Results\Api_Members\%ENV%\SetPlacementResults.csv -PgetMemSrc=%WORKSPACE%\CreateUsers\Results\Api_Members\%ENV%\CreateMemberVulcanResults.csv %WORKSPACE%\CreateUsers\Api_Members\Scripts\SetPlacementDate.xml
