set -e
chmod 400 .travis/deploy_rsa
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST docker pull giangbuiquang/aatest

# 34.71.77.172 

