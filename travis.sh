#!/bin/bash

set -euo pipefail
set +x
java -version

echo "Parameters in environment: $SONARQUBE_SCANNER_PARAMS"
sonar-scanner -v
