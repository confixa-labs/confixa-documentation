---
sidebar_position: 3
---

# Architecture Overview

## High-Level Structure
---
Confixa is built as a **no-code DevOps platform** that automates the full deployment lifecycle: from linking your Git repo to application deployment, ongoing management, and observability  . It abstracts away infrastructure complexity while leveraging Kubernetes, ArgoCD, CI/CD pipelines, and ELK integration  .


## Control Plane vs. Compute Plane
---
- **Control Plane**

  Manages internal orchestrations:
  - Git integration & triggers
  - CI/CD workflows via GitHub Actions, Bitbucket Pipeline
  - ArgoCD for declarative GitOps deployments 

- **Compute Plane**
  
  Runs on your Kubernetes cluster:
  - Deploys application containers at scale
  - Supports blue-green and canary strategies via ArgoCD 


## CI/CD & Deployment Automation
---
- Connect, build, and deploy with zero scripting—fully automated pipelines 
- Features like **rollbacks, parallel builds, canaries, and blue-green** deployments ensure reliable delivery 


## Observability & Logging
---
- Centralized logging via **ELK Stack** (Elasticsearch, Kibana, APM)
- Real‑time **metrics, alerts, transaction tracing**, and log search/query functions 


## AI-Driven DevOps Assistant & Coding
---
- AI-powered insights for debugging and issue resolution. 
- **Code Assist** automatically generates CI/CD and IaC snippets, ensures syntax validation, linting, and security compliance 


## FinOps & Cost Optimization
---
- Analysis of usage metrics for cost-saving recommendations
- Offers real-time visibility and proactive suggestions to improve resource efficiency 


## Integrations & Ecosystem
---
- **Git repos:** GitHub, Bitbucket
- **CI/CD tools:** GitHub Actions, Bitbucket Pipelines
- **Monitoring/logging:** ELK Stack, Cloud Monitoring
- **Cloud providers:** GCP along with Docker registries


## Summarized Architecture Layers:
---
<table style={{ width: '100%', borderCollapse: 'collapse', textAlign: 'left' }}>
  <thead>
    <tr style={{ backgroundColor: 'var(--ifm-table-head-background)', color: 'var(--ifm-table-head-color)', textAlign: 'center' }}>
      <th style={{ padding: '12px' }}><strong>Layer</strong></th>
      <th style={{ padding: '12px' }}><strong>Components & Responsibilities</strong></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style={{ padding: '12px' }}><strong>User Interface</strong></td>
      <td style={{ padding: '12px' }}>No-code dashboards for Git linkage, pipeline configuration, monitoring & AI assistant</td>
    </tr>
    <tr>
      <td style={{ padding: '12px' }}><strong>Control Plane (Backend)</strong></td>
      <td style={{ padding: '12px' }}>Automates CI/CD (via external tools), runs ArgoCD, and houses an AI assistant</td>
    </tr>
    <tr>
      <td style={{ padding: '12px' }}><strong>Compute Plane (K8s)</strong></td>
      <td style={{ padding: '12px' }}>Kubernetes nodes that host app containers, handle deployments, scaling, rollbacks</td>
    </tr>
    <tr>
      <td style={{ padding: '12px' }}><strong>Observability / Logging</strong></td>
      <td style={{ padding: '12px' }}>ELK Stack ingestion, real-time metrics, tracing, alerts, and centralized log querying</td>
    </tr>
    <tr>
      <td style={{ padding: '12px' }}><strong>FinOps Engine</strong></td>
      <td style={{ padding: '12px' }}>Cost analysis, real-time insights, recommendations for cloud/K8s resource optimization</td>
    </tr>
  </tbody>
</table>
