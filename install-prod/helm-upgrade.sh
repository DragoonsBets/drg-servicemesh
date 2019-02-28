#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash helm-apply.sh

helm dep up ./csvc
helm upgrade --install csvc ./csvc --namespace development

