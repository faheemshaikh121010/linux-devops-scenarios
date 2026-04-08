# 🚀 Kubernetes Ingress with AWS ALB Controller

Welcome to this hands-on lab!

In this scenario, you will deploy a simple application in Kubernetes and expose it using an **Ingress resource backed by the AWS ALB Ingress Controller**.

---

## 🎯 What You Will Learn

By the end of this lab, you will understand:

- How to create a Kubernetes **Deployment**
- How to expose applications using a **NodePort Service**
- How **Ingress routes traffic** to backend services
- How AWS ALB integrates with Kubernetes using Ingress

---

## 🧱 Architecture Overview

```
Client (Browser)
        ↓
AWS Application Load Balancer (ALB)
        ↓
Ingress Resource
        ↓
NodePort Service
        ↓
Pod (Nginx Application)
```

---

## ⚡ Scenario Goal

You will:

1. Deploy a simple **Nginx application** (1 replica)
2. Expose it using a **NodePort Service**
3. Configure an **Ingress** with path `/`
4. Route all traffic to your backend service
5. Validate everything using an automated script

---

## 💡 Important Concept

> In AWS ALB **instance mode**, traffic flows like this:

**ALB → Worker Node (NodePort) → Pod**

---

## 🛠 Prerequisites

- Basic understanding of Kubernetes concepts
- Familiarity with `kubectl` commands

---

## ✅ Success Criteria

At the end of this lab:

- Deployment is running with **1 replica**
- Service is exposed via **NodePort (30007)**
- Ingress routes `/` → `demo-service`
- Verification script passes all checks 🎉

---

## 🚀 Let's Get Started!

Move to **Step 1** and begin building your Ingress setup.