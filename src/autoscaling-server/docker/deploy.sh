#!/bin/bash

MODEL_TYPE=$1
AUTOSCALE_SERVER_MANIFEST=/home/hieppm/bdi/personal/ProactiveAutoscaling/src/k8s-manifest/autoscaling-server.yaml
CUR_DATE=$(date +%Y%m%d)
IMAGE_TAG="$CUR_DATE-$MODEL_TYPE"
IMAGE_URL=10.124.69.3:30444/toolchains/tensorflow-serving:$IMAGE_TAG

docker build -t IMAGE_URL --build-arg MODEL_TYPE=$MODEL_TYPE .
docker push $IMAGE_URL

yq eval ".spec.template.spec.containers[0].image=$IMAGE_URL" -i $AUTOSCALE_SERVER_MANIFEST


export KUBECONFIG=~/.kube/local_config_1

kubectl apply -f $AUTOSCALE_SERVER_MANIFEST -n monitoring