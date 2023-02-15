#!/usr/bin/env bash
MSG_CLR="\u001b[47;3m"
CLR_D="\u001b[0m"

echo -e "${MSG_CLR}Step 1: Deploying App 1 (Roles, Repos, CodeBuild project)${CLR_D}"
./bin/scripts/deploy-container-image-stack.sh
echo -e "${MSG_CLR}Step 2: Copying an example nginx container app to our CodeCommit repository${CLR_D}"
./bin/scripts/populate-repo.sh
echo -e "${MSG_CLR}Step 3: Deploying App 2 (Getting information about resources from App 1, creating CodePipeline, CodeDeploy configuration)${CLR_D}"
./bin/scripts/deploy-pipeline-stack.sh