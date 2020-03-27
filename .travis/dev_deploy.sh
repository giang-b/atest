set -e

chmod 400 .travis/deploy_rsa
ssh -o StrictHostKeyChecking=no -i .travis/deploy_rsa $REMOTE_USER@$REMOTE_HOST << EOF
  sudo docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
  sudo docker pull giangbuiquang/aatest:dev-$DEV_VERSION
  sudo docker stop aatest || true
  sudo docker run --name aatest --rm -d -p 80:80/tcp giangbuiquang/aatest:dev-$DEV_VERSION
EOF



