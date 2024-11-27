#!/bin/bash
    resources=(
    "aws_instance.ec2"
    "aws_instance.ec2-l" 
    "aws_s3_bucket.s3" 
    "aws_s3_bucket.s3-l"
    )
for resource in "${resources[@]}"; do
targets+=" -target=$resource"
done
terraform apply $targets