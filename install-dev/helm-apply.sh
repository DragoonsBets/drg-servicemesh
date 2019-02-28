#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash helm-apply.sh
# kubectl apply -f namespace.yaml
kubectl label namespace development istio-injection=enabled

helm delete --purge csvc 2>/dev/null
helm dep up ../csvc
helm install --name csvc ../csvc --namespace development
