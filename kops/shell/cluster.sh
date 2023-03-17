#!/bin/bash

export NAME=devlab.k8s.local
export KOPS_STATE_STORE=s3://devlab-kops-state-store


# generate cluster configuration
kops create cluster \
    --name=${NAME} \
    --cloud=aws \
    --zones=us-east-1a \
    --discovery-store=s3://devlab-kops-oidc-store/${NAME}/discovery

# create cluster
kops update cluster --name ${NAME} --yes --admin



