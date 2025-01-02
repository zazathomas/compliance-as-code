# Compliance-as-Code

This repository contains a collection of compliance policies and rules for securing cloud-native environments using a GitOps-based approach. The policies are designed to be deployed and managed using ArgoCD and are currently deployed in a managed Kubernetes cluster hosted on Oracle Cloud.

## Contents

- **Cilium Network Policies**: Define and enforce network security policies using Cilium.
- **Kyverno Cluster Policies**: Manage and enforce Kubernetes policies using Kyverno.
- **Cilium Gateway API Policies**: Secure and manage traffic using Cilium's Gateway API.
- **Tetragon Tracing Policies**: Implement tracing and observability using Tetragon.
- **Falco Rules**: Detect and respond to runtime security threats using Falco.

## Deployment

The policies and rules in this repository are synced to ArgoCD for continuous deployment and management. This ensures that the security configurations are always up-to-date and consistent across the cloud-native environment.

## Getting Started

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/your-username/compliance-as-code.git
    cd compliance-as-code
    ```

2. **Install ArgoCD**: Follow the [ArgoCD installation guide](https://argo-cd.readthedocs.io/en/stable/getting_started/) to set up ArgoCD in your Kubernetes cluster.

3. **Sync Policies to ArgoCD**:
    - Create an ArgoCD application for each set of policies (Cilium, Kyverno, etc.).
    - Configure the application to sync with the respective directories in this repository.

4. **Monitor and Manage**: Use the ArgoCD dashboard to monitor the status of the policies and ensure they are correctly deployed.
