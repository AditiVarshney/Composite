cd C:\Program Files\SmartBear\ReadyAPI-2.2.0\bin\
cmd.exe /C testrunner.bat "-RJUnit-Style HTML Report" -E%ENV% -I -PCreateProviderCoachData=%WORKSPACE%\CreateUsers\Api_Providers\data\CreateProviderCoachData.xls -PCreateProviderCoachResult=%WORKSPACE%\CreateUsers\Results\Api_Providers\%ENV%\CreateProviderCoach\CreateProviderCoachResult.csv -PCreateProviderCoachResponseTime=%WORKSPACE%\CreateUsers\ResponseTime\Api_Providers\%ENV%\CreateProviderCoach\CreateProviderCoachResponseTime.csv -PPrefix=%Prefix% %WORKSPACE%\CreateUsers\Api_Providers\scripts\CreateProviderCoach.xml

