#!/bin/sh
mkdir -p ./outputs
while true
do
  mv ./outputs/*/*/checkpoints/checkpoint*.pt /opt/ml/checkpoints/
  #aws s3 sync ./outputs s3://sagemaker-us-east-1-067307027894/checkpoints/ 
  sleep 60
done
