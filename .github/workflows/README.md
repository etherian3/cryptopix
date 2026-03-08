# CI/CD Workflows

This directory contains GitHub Actions workflows for the continuous integration and deployment of the CryptoPixzl application.

## Workflows

- `cicd-pipeline.yml`: The main pipeline that is triggered on pushes and pull requests to the `main` branch.

## Pipeline Stages

1. **test**: Runs Node.js unit tests.
2. **lint**: Performs static code analysis.
3. **build**: Builds the Node.js application artifact.
4. **docker**: Builds a Docker image, scans it for vulnerabilities using Trivy, and pushes it to the GitHub Container Registry (GHCR).
5. **update-k8s**: Automatically updates the image tag in the Kubernetes deployment manifest (`kubernetes/deployment.yaml`) and commits the change back to the repository.
