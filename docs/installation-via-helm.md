---
sidebar_position: 3
---

# Installation via Helm

## Add Confixa Repo
---
``` bash
helm repo add confixa https://confixa-labs.github.io/confixa/charts
helm repo update
```

## Installation Steps
---
``` bash
helm install confixa confixa/Confixa --version 0.9.1
```

## Upgrade Instructions
---
``` bash
helm repo update
helm upgrade confixa confixa/Confixa --version 0.9.1
```

## Uninstallation
---
``` bash
helm uninstall confixa -n confixa
```

## Port Forwarding for Browser Access
---

### Initial Access (Post Installation)

After installing Confixa via Helm, you can port-forward the frontend and API services for local access in the browser.

**Namespace**: Replace `confixa-namespace` with the namespace you used during installation.

``` bash
# Frontend UI
kubectl port-forward svc/confixa-frontend 5000:5000 -n confixa-namespace

# Backend API
kubectl port-forward svc/confixa-api 5001:5001 -n confixa-namespace
```

**Access in browser**:

- [http://localhost:5000](http://localhost:5000) – Confixa Frontend
- [http://localhost:5001](http://localhost:5001) – Confixa API

---

### Access After Onboarding

If additional services were installed during onboarding (or exist from previous installations), you can access them by forwarding the respective ports.

#### Argo CD

```bash
kubectl port-forward svc/argocd-server 3000:443 -n <argocd-namespace>
```

> Default namespace: `argocd`

**Access:** [http://localhost:3000](http://localhost:3000)

---

#### Kubecost (Cost Analyzer)

```bash
kubectl port-forward svc/confixa-kubecost-cost-analyzer 9090:9090 -n <kubecost-namespace>
```

**Access:** [http://localhost:9090](http://localhost:9090)

---

#### Kubernetes Dashboard

```bash
kubectl port-forward svc/kubernetes-dashboard 9091:443 -n <dashboard-namespace>
```

**Access:** [http://localhost:9091](http://localhost:9091)

---

> Replace `<argocd-namespace>`, `<kubecost-namespace>`, and `<dashboard-namespace>` with the actual namespaces where each service is installed. These may have been created during onboarding or may already exist in your cluster.

---

### Notes
---
You can also navigate via your Kubernetes dashboard (e.g., Lens or K9s):

- Open the **Services** section.
- Locate the desired service (e.g., `confixa-frontend`, `argocd-server`, etc.).
- Use the **"Port Forward"** feature to access the UI without using the CLI.
