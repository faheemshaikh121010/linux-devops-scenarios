#!/bin/bash

echo "🔍 Verifying Deployment..."

DEPLOY=$(kubectl get deploy demo-app --no-headers 2>/dev/null)
if [[ $? -ne 0 ]]; then
  echo "❌ Deployment not found"
  exit 1
fi

REPLICAS=$(kubectl get deploy demo-app -o jsonpath='{.spec.replicas}')
if [[ "$REPLICAS" != "1" ]]; then
  echo "❌ Deployment replica count is not 1"
  exit 1
fi

echo "✅ Deployment verified"

echo "🔍 Verifying Service..."

SVC_TYPE=$(kubectl get svc demo-service -o jsonpath='{.spec.type}' 2>/dev/null)
if [[ "$SVC_TYPE" != "NodePort" ]]; then
  echo "❌ Service is not NodePort"
  exit 1
fi

NODE_PORT=$(kubectl get svc demo-service -o jsonpath='{.spec.ports[0].nodePort}')
if [[ "$NODE_PORT" != "30007" ]]; then
  echo "❌ NodePort is not 30007"
  exit 1
fi

echo "✅ Service verified"

echo "🔍 Verifying Ingress..."

INGRESS=$(kubectl get ingress demo-ingress --no-headers 2>/dev/null)
if [[ $? -ne 0 ]]; then
  echo "❌ Ingress not found"
  exit 1
fi

PATH=$(kubectl get ingress demo-ingress -o jsonpath='{.spec.rules[0].http.paths[0].path}')
if [[ "$PATH" != "/" ]]; then
  echo "❌ Ingress path is not /"
  exit 1
fi

BACKEND=$(kubectl get ingress demo-ingress -o jsonpath='{.spec.rules[0].http.paths[0].backend.service.name}')
if [[ "$BACKEND" != "demo-service" ]]; then
  echo "❌ Ingress backend is incorrect"
  exit 1
fi

echo "✅ Ingress verified"

echo ""
echo "🎉 All checks passed! Your Ingress setup is correct."