cd C:\Program Files\SmartBear\ReadyAPI-2.3.0\bin
set Yes1=Yes
cmd.exe /C testrunner.bat "-RJUnit-Style HTML Report" -E%ENV% -I -PQSEnrollmentData=%WORKSPACE%\CreateUsers\Api_Members\data\QSEnrollmentData.xls -PQSEnrollmentResult=%WORKSPACE%\CreateUsers\Results\Api_Members\%ENV%\QSEnrollment\QSEnrollmentResult.csv -PQSEnrollmentResponseTime=%WORKSPACE%\CreateUsers\ResponseTime\Api_Members\%ENV%\QSEnrollment\QSEnrollmentResponseTime.csv -PPrefix=%Prefix% -PSufix=%Suffix% -PtimeSlot=%Timeslot% %WORKSPACE%\CreateUsers\Api_Members\Scripts\QSEnrollment.xml

if /I "%Approve Created Class%"=="%Yes1%" (
      waitfor SomethingThatIsNeverHappening /t 900 >nul 2>&1
      echo "Approving class"
      cmd.exe /C testrunner.bat "-RJUnit-Style HTML Report" -E%ENV% -I -PApproveData=%WORKSPACE%\CreateUsers\Results\Api_Members\%ENV%\QSEnrollment\QSEnrollmentResult.csv -PApproveResult=%WORKSPACE%\CreateUsers\Results\Api_Members\%ENV%\Approve\ApproveResult.csv -PApproveResponseTime=%WORKSPACE%\CreateUsers\ResponseTime\Api_Members\%ENV%\Approve\ApproveResponseTime.csv %WORKSPACE%\CreateUsers\Api_Members\Scripts\ApproveMember.xml
)
cmd.exe /C testrunner.bat "-RJUnit-Style HTML Report" -E%ENV% -I -PAttendSessionData=%WORKSPACE%\CreateUsers\Results\Api_Members\%ENV%\Approve\ApproveResult.csv -PAttendSessionResult=%WORKSPACE%\CreateUsers\Results\Api_Members\%ENV%\AttendSession\AttendSessionResult.csv -PAttendSessionResponseTime=%WORKSPACE%\CreateUsers\ResponseTime\Api_Members\%ENV%\AttendSession\AttendSessionResponseTime.csv %WORKSPACE%\CreateUsers\Api_Members\Scripts\AttendSession.xml