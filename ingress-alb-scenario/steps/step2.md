# Step 2: Create NodePort Service

Expose the deployment using a NodePort service:
- Name: demo-service
- Port: 80
- NodePort: 30007

### Apply

```bash
kubectl apply -f manifests/service.yaml
```

### Verify

```bash
kubectl get svc demo-service
```