#!/bin/bash
EX=0
pwd
PWD=`pwd`
pushd $PWD
# Find location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXPECTEDOUTPUT="$DIR/env_var/env.txt"

echo "About to get environment variables"

printenv > env_var/env.txt

if [ -f "$EXPECTEDOUTPUT" ]
then
	echo "$EXPECTEDOUTPUT found."
else
	echo "$EXPECTEDOUTPUT not found."
  $EX=1
fi

# Restore working directory
popd 

# Exit with explicit 0 exit code so build will not fail
exit $EX