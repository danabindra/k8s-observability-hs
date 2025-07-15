#!/usr/bin/env bash
set -e

echo "Creating monitoring namespace..."
kubectl create namespace monitoring || true

echo "Applying Helmfile..."
helmfile sync
