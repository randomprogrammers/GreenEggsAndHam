@ECHO OFF

SET EX=0
CD
SET PWD="%~dp0"
SET EXPECTEDOUTPUT="%PWD%env_var\env.txt"

ECHO "About to get environment variables"
SET > env_var\env.txt

IF NOT EXIST %EXPECTEDOUTPUT% (
  ECHO NO env.txt file
  %EX%=1
)

rem Restore working directory
popd 

rem Exit with explicit 0 exit code so build will not fail
EXIT /b $EX