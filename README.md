# Helm Deployment for Microservices in Kubernetes

This repository contains Helm charts for deploying microservices in a Kubernetes cluster using Minikube.

## Prerequisites

Ensure you have the following installed:

- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [Helm](https://helm.sh/docs/intro/install/)
- [Homebrew](https://brew.sh/) (For macOS users)

## Setup Instructions

### 1. Start Minikube
```sh
minikube start
```

### 2. Expose the Frontend Service
```sh
minikube service frontend
```

### 3. Install Helm (if not already installed)
```sh
brew install helm
```

### 4. Sync Helm dependencies
```sh
helm dependency update
```

### 5. List Installed Helm Releases
```sh
helm ls
```

### 6. Install a Service (Example: Email Service)
```sh
helm install -f values/emailservice-values.yaml emailservice charts/microservice
```

### 7. Validate Helm Templates
```sh
helm template -f values/redis-values.yaml charts/redis
```

### 8. Perform a Dry Run Before Installing (Example: Redis Service)
```sh
helm install --dry-run -f values/redis-values.yaml charts/redis
```

### 9. Lint Helm Files (Validate YAML Configuration)
```sh
helm lint -f values.yaml
```

## Project Structure
```
charts/               # Contains Helm charts
  ├── microservice/   # Microservice Helm chart
  │   ├── Chart.yaml
  │   ├── charts/
  │   ├── templates/
  │   │   ├── _helpers.tpl
  │   │   ├── deployment.yaml
  │   │   ├── service.yaml
  │   │   └── tests/
  │   │       └── test-connection.yaml
  │   ├── values.yaml
  ├── redis/         # Redis Helm chart
  │   ├── Chart.yaml
  │   ├── charts/
  │   ├── templates/
  │   │   ├── _helpers.tpl
  │   │   ├── deployment.yaml
  │   │   ├── service.yaml
  │   │   └── tests/
  │   │       └── test-connection.yaml
  │   ├── values.yaml
values/              # Contains values files for Helm charts
  ├── adservice-values.yaml
  ├── cartservice-values.yaml
  ├── checkoutservice-values.yaml
  ├── currencyservice-values.yaml
  ├── emailservice-values.yaml
  ├── frontend-values.yaml
  ├── paymentservice-values.yaml
  ├── productcatalogservice-values.yaml
  ├── recommendationservice-values.yaml
  ├── redis-values.yaml
  ├── shippingservice-values.yaml
config.yaml          # Configuration file
helmfile.yaml        # Helmfile for managing releases
```

## Notes
- Replace `charts/microservice` and `charts/redis` with the appropriate chart paths.
- Ensure that the correct values files are passed during installation.
- Use `helm upgrade --install` instead of `helm install` if you want to apply updates.

Happy Deploying! "HALA MADRID"
