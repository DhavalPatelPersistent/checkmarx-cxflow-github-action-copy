#!/bin/sh
echo ${CXFLOW_PARAMS} >> file
echo `cat file`
export CXFLOW_PARAMS = `cat file`
echo ${CXFLOW_PARAMS}
echo ${JAVA_OPTS} -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. ${CXFLOW_PARAMS}
java ${JAVA_OPTS} -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --project --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. ${CXFLOW_PARAMS}

#java ${JAVA_OPTS} -jar /app/cx-flow.jar --spring.profiles.active="${CX_FLOW_ENABLED_VULNERABILITY_SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. --namespace="DhavalPatelPersistent" --repo-name="hello-world-java" --branch="refs/heads/master" --cx-flow.filter-severity=High --cx-flow.filter-category="SQL_Injection,SQL_Injection_via_Service" --jira.url="https://cxflowuser.atlassian.net/" --jira.username="hussain.saifuddin@checkmarx.com" --jira.token="4dzYKtUPEOmNDnpMJsc9AE3E" --jira.project="HFIRST" --jira.issue-type="Application Security Bug" --jira.priorities.High=High --jira.priorities.Medium=Medium --jira.priorities.Low=Low --jira.priorities.Informational=Lowest --jira.open-transition="In Progress" --jira.close-transition=Done --jira.open-status="Backlog,Selected for Development,In Progress" --jira.closed-status=Done --checkmarx.incremental=false
