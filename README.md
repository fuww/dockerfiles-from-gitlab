# Dockerfiles for FashionUnited
Collection of custom dockerfiles used for builds & running apps in production.

## Build local

cd hugo/v0.62.2-extended

docker build -t eu.gcr.io/kubernetes-164514/github.com/fashionunited/dockerfiles/hugo:v0.62.2-extended .
docker push eu.gcr.io/kubernetes-164514/github.com/fashionunited/dockerfiles/hugo:v0.62.2-extended