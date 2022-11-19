IMAGE_NAME=$1
TAG=$2

docker build . --tag $IMAGE_NAME:$TAG
docker build . --tag $IMAGE_NAME:latest