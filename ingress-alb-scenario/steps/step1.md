# Step 1: Create Deployment

Create a deployment named **demo-app** with:
- Image: nginx
- Replicas: 1
- Container port: 80

### Expected Output

```bash
kubectl get deploy demo-app
```

### Apply

```bash
kubectl apply -f manifests/deployment.yaml
```