#!/bin/bash
Check Kubernetes pod status
NAMESPACE="default"
kubectl get pods -n $NAMESPACE
echo "checking the pods "
kubectl get pods