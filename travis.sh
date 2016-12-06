#!/bin/bash

set -euo pipefail
set +x
java -version
echo "PATH: $PATH"
echo "JAVA_HOME: $JAVA_HOME"
export JAVA_HOME=`dirname $(dirname $(which java))`
echo "NEW JAVA_HOME: $JAVA_HOME"
echo "Parameters in environment: $SONARQUBE_SCANNER_PARAMS"
sonar-scanner -v

if [ -n "$(which build-wrapper-linux-x86-64)" ] ; then
    build-wrapper-linux-x86-64 --out-dir bw-output make all
 fi

echo "Done"
