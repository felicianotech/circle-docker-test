#!/usr/bin/env bash

# Exit on any error
set -e

KUBERNETES_VERSION=v1.2.2

# Exit if already installed
if [[ -d ~/kubernetes ]]; then
  echo "Kubernetes already installed"
  exit 0
else
  echo "Installing Kubernetes..."
fi

# Clone repo
(cd ~ && git clone --branch=$KUBERNETES_VERSION --depth=1 https://github.com/kubernetes/kubernetes.git)

# Build go source
(cd ~/kubernetes && hack/build-go.sh)

