# Compliance Scan Action

A GitHub action to trigger an on-demand scan of Azure Policy for a given scopes.

## Demo Script:

This action can be used for 3 scenarios:
1. As a developer I want to make sure the resource is complaint before/after I deploy my code/application
2. As an IT team/Admin I want to periodically scan Subscriptions/RG/Resource for compliance and get a summary 
3. As an policy developer I want to test my new/updated policy by triggering on demand scan for this policy alone on a scope

## Developer scenario:
### compliant-webapp-deployment
This deployment workflow is triggered on code push to branch. It deploys the node app to Azure Web APP server. There are no non-compliance changes made as a part of this deployment and hence the post-deployment compliance scan will be successful.


### noncompliant-webapp-deployment
This deployment workflow is triggered on code push to branch. It deploys the node app to Azure Web APP server. There are  non-compliance changes made as a part of this deployment i.e:
- Detailed error logging is disabled
- Failed Request tracing is disabled <br>
 and there are polices assigned which mandate this logging and tracing hence the post-deployment compliance scan will be failure.
 