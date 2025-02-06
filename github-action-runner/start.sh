# 1. docker run -v docker daemon socket:/var/run/docker.sock

DOCKER_SOCKET=${DOCKER_SOCKET:-"/var/run/docker.sock"}
docker run -v $DOCKER_SOCKET:/var/run/docker.sock 