#!/bin/bash

aws s3api create-bucket \
    --bucket devlab-kops-oidc-store \
    --region us-east-1 \
    --acl public-read
