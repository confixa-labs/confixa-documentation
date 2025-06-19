---
sidebar_position: 4
---

# Onboarding

## Git Provider Integrations
---
- Integrate your **Github** or **Bitbucket** account with Confixa.
- This account will be used to **create and manage the organization's repository**, which will serve as a central storage for **Helm charts** used in **continuous delivery** of services.
- All subsequent service deployments will be powered by these Helm charts, ensuring a standardized and automated delivery process.
- Additionally, Confixa will use this integrated repository to **set up CI** for the selected repository during service creation, automating your build and delivery pipeline.

## Organization
---
- **Create and manage organizations to group related applications**, collaborate safely, and enable fine-grained access controls.
- Set up your **organization** by specifying its **name and details**.
- This lets you create a **central repository** for **storing and managing Helm charts** that enable automated and standardized delivery of services in Confixa.
- The organization also serves as **a foundation for setting up default environments** (like Development, Staging, and Production) that can be used when creating new projects in the future.

## AI Configuration
---
- Configure **AI-assisted capabilities** for your Confixa platform.
- This includes **Chatbot responses** to aid in **debugging and investigating issues** related to services and their configurations.
- The AI can **create issues directly in your organization's repository** when problems are detected or when a change is needed at the **Helm chart level**.
- **Code Assist** further helps by **automatically generating CI/CD and IaC snippets**, ensuring **syntax validation, linting, and compliance with security standards** — thereby reducing manual intervention and improving delivery speed.

## Docker Registry
---
- Add your Docker Registry (GCR, ECR) credentials and path for automated image builds and deployments.

## Observability
---
- Provide **information or details for your preferred stack** (such as **Elastic Cloud APM, Cloud monitoring**) for **application performance monitoring(metrics), logging and tracing**.
- This helps you track service health, debug issues, and gain operational visibility across your applications.

## Other Tools
---
- **Other tools are optional** and can be integrated based on your operational needs.
- This includes **health checks for applications deployed via Confixa**, allowing you to track their health and readiness.
- **Access to the Kubernetes Dashboard** with a single click directly from Confixa for in-depth observation and debug information about your clusters.
- **Cost Optimization Tools** enable you to identify opportunities for reducing resource usage and optimizing your cluster's costs.
