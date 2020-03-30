set -e

chmod 400 .travis/deploy_rsa
echo $REMOTE_SERVER_USER
echo $REMOTE_SERVER
# ssh -o StrictHostKeyChecking=no -i .travis/deploy_rsa $REMOTE_SERVER_USER@$REMOTE_SERVER << EOF
#   sudo docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
#   sudo docker pull $DOCKER_USERNAME/$PROJECT_NAME:$VERSION
#   sudo docker stop $PROJECT_NAME || true
#   sudo docker run --name $PROJECT_NAME --rm -d -p 80:80/tcp $DOCKER_USERNAME/$PROJECT_NAME:$VERSION
# EOF



