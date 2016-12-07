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

echo "Done"
