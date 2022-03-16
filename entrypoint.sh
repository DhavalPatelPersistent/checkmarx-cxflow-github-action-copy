#!/bin/sh
echo ${SEVERITY} 
echo ${JAVA_OPTS} -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. ${CXFLOW_PARAMS}
#java ${JAVA_OPTS} -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. ${CXFLOW_PARAMS}
EXEC_COMMAND='java -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. ${CXFLOW_PARAMS}'
eval "$EXEC_COMMAND"
