TAG=$1

docker build . --tag baserepo:$TAG
docker build . --tag baserepo:latest