#!/bin/bash

set -euo pipefail
set +x


echo "Parameters in environment: $SONARQUBE_SCANNER_PARAMS"
sonar-scanner -v
