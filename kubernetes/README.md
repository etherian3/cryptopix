# Kubernetes Configuration for CryptoPixzl

This directory contains the Kubernetes manifests required to deploy the CryptoPixzl application.

## Files

- `deployment.yml`: Defines the Deployment for the `cryptopix` app, configuring replicas, resources, and probes.
- `service.yml`: Defines the ClusterIP Service to expose the application internally.
- `ingress-traefik.yml`: Defines the Traefik Ingress routing rules to expose the application to the outside world via `cryptopix.etherian.dev`.

## Usage

To apply these configurations to your cluster, run:

```bash
kubectl apply -f .
```
