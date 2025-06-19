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