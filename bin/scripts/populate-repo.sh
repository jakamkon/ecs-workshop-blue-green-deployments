export AWS_DEFAULT_REGION=$(aws configure get region)
export CODE_REPO_NAME=nginx-sample
export CODE_REPO_URL=codecommit::$AWS_DEFAULT_REGION://$CODE_REPO_NAME
cd ~/environment && git clone $CODE_REPO_URL && cd $CODE_REPO_NAME
cp ~/environment/ecs-workshop-blue-green-deployments/nginx-sample/* .
git checkout -b main
git remote -v
git add .
git commit -m "First commit"
git push --set-upstream origin main

