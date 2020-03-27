set -e
ssh-keyscan $REMOTE_HOST >> ~/.ssh/known_hosts
ssh -i .travis/deploy_rsa -y $REMOTE_USER@$REMOTE_HOST
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker pull giangbuiquang/aatest

