set -e
chmod 400 .travis/deploy_rsa
ssh -i .travis/deploy_rsa -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST << EOF
  sudo docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
  sudo docker pull giangbuiquang/aatest:1.0
  sudo docker stop aatest || true
  sudo docker run --name aatest --rm -d -p 80:80/tcp giangbuiquang/aatest:1.0
EOF



