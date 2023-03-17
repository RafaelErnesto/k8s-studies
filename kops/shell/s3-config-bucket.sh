#!/bin/bash

aws s3api create-bucket \
    --bucket devlab-kops-state-store \
    --region us-east-1

aws s3api put-bucket-versioning --bucket devlab-kops-state-store  --versioning-configuration Status=Enabled

#uncomment to encrypt the bucket
#aws s3api put-bucket-encryption --bucket devlab-kops-state-store --server-side-encryption-configuration '{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'


