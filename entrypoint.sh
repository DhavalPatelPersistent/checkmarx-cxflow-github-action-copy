#!/bin/sh
echo ${CXFLOW_PARAMS}
echo ${JAVA_OPTS} -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. --namespace="DhavalPatelPersistent" --repo-name="hello-world-java" --branch="refs/heads/master" --cx-flow.filter-severity=High --cx-flow.filter-category="SQL_Injection,SQL_Injection_via_Service" --jira.url="${JIRA_URL}"  --jira.username="${JIRA_USERNAME}" --jira.token="${JIRA_TOKEN}" --jira.project="${JIRA_PROJECT}" --jira.issue-type="${JIRA_ISSUE_TYPE}" --jira.open-transition="${JIRA_OPEN_TRANSITION}" --jira.close-transition="${JIRA_CLOSE_TRANSITION}" --jira.open-status="${JIRA_OPEN_STATUS}" --jira.closed-status="${JIRA_CLOSED_STATUS}" ${CXFLOW_PARAMS}
#java ${JAVA_OPTS} -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. ${CXFLOW_PARAMS}

java ${JAVA_OPTS} -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. --namespace="DhavalPatelPersistent" --repo-name="hello-world-java" --branch="refs/heads/master" --cx-flow.filter-severity=High --cx-flow.filter-category="SQL_Injection,SQL_Injection_via_Service" --jira.url="${JIRA_URL}" --jira.username="${JIRA_USERNAME}" --jira.token="${JIRA_TOKEN}" --jira.project="${JIRA_PROJECT}" --jira.issue-type="${JIRA_ISSUE_TYPE}" --jira.open-transition="${JIRA_OPEN_TRANSITION}" --jira.close-transition="${JIRA_CLOSE_TRANSITION}" --jira.open-status="${JIRA_OPEN_STATUS}" --jira.closed-status="${JIRA_CLOSED_STATUS}" ${CXFLOW_PARAMS}
