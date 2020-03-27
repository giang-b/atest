set -e
chmod 400 .travis/deploy_rsa
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST docker pull giangbuiquang/aatest
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST docker run --name aatest --rm -d -p 80:80/tcp giangbuiquang/aatest



