#!/bin/sh
cd /opt/SmartBear/ReadyAPI-2.1.0/bin && ./loadtestrunner.sh -nCreateMember -Eload -u1 -L120:0:0 -l -r /home/jenkins/loadrunnerresults/ -FPDF -PCreateMemberData=/root/Downloads/Data/createMemberData.xlsx -PCreateMemberResults=/root/Downloads/Results/V1/MemberOnboarding/createMemberResponse.csv -PcreateMemberTimeResponse=/root/Downloads/Results/V1/MemberOnboarding/createMemberTimeResponse.csv /opt/Performance/qa-automation-api/Load/V1/scripts/MemberOnboarding.xml
 
