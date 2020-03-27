set -e
chmod 400 .travis/deploy_rsa
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST sudo docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST sudo docker pull giangbuiquang/aatest:1.0
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST sudo docker run --name aatest --rm -d -p 80:80/tcp giangbuiquang/aatest:1.0



