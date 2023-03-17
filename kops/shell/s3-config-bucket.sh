#!/bin/bash

aws s3api create-bucket \
    --bucket devlab-kops-state-store \
    --region us-east-1