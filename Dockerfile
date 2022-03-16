#Use CxFlow Base image
#FROM dhavalpatelpersistent/cx-flow
FROM checkmarx/cx-flow:173f83a
#Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
#Make it executable
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
