set -e
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker pull giangbuiquang/aatest

