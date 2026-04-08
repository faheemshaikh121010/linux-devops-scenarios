# Step 3: Create Ingress

Create an Ingress resource:
- Route `/` path
- Backend service: demo-service
- Port: 80

### Apply

```bash
kubectl apply -f manifests/ingress.yaml
```

### Verify

```bash
kubectl get ingress
```