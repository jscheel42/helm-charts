#!/bin/bash

set -e
PACKAGE_NAME=$1

helm package $PACKAGE_NAME

helm repo index --merge index.yaml --url https://jscheel42.github.io/helm-charts/ .
