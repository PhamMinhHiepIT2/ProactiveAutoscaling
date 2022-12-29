#!/bin/bash

AUTOSCALE_MANAGER_MANIFEST=/home/hieppm/bdi/personal/ProactiveAutoscaling/src/k8s-manifest/autoscaling-manager.yaml

IMAGE_TAG=$(date +%Y%m%d-%s)

IMAGE_URL=10.124.69.3:30444/toolchains/autoscaler-manager:$IMAGE_TAG

docker build -t autoscaler-manager .
docker tag autoscaler-manager:latest $IMAGE_URL
docker push $IMAGE_URL

yq eval ".spec.template.spec.containers[0].image=\"$IMAGE_URL\"" -i $AUTOSCALE_MANAGER_MANIFEST

cat $AUTOSCALE_MANAGER_MANIFEST

export KUBECONFIG=~/.kube/local_config_1

kubectl apply -f $AUTOSCALE_MANAGER_MANIFEST -n monitoring


