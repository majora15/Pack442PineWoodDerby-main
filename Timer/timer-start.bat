@echo off

REM Change directory to where derby-timer.jar is located at.  in this example it is in c:\temp\
cd c:\tools

REM Run the derby-timer jar file
start java -jar derby-timer.jar -n COM5 -d NewBold -delay-reset-after-race 10 -newline-expected-ms 10 pack442.coughlinfam.com/derbynet