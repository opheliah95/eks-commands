#!/bin/bash
set -x # print out all commands on the shell

time eksctl create cluster \
            --name=test-cluster \
            --version=1.22 \
            --nodegroup-name linux-nodes \
            --node-type t2.micro \
            --nodes 2 \ 
            --nodes-min 1 \
            --nodes-max 4 \
            --region=eu-west-2 \
            --managed