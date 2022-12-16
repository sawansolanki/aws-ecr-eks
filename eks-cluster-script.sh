#!/bin/bash

export EKS_CLUSTER_NAME=my-sa1-eks-cluster
output=$(aws eks describe-cluster --name ${EKS_CLUSTER_NAME} 2>&1)

if [ $? -ne 0 ]; then
  if echo ${output} | grep -q ResourceNotFoundException; then
        eksctl create cluster -f /${{github.workspace}}/AWS-ECR-to-EKS-Integration/cluster.yaml
  else
    >&2 echo "Error is -->" ${output}
  fi
fi
