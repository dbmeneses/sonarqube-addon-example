#!/bin/bash

set -euo pipefail
set +x
java -version
echo "JAVA HOME: $JAVA_HOME"
which java

echo "Parameters in environment: $SONARQUBE_SCANNER_PARAMS"
sonar-scanner -v
