# Kubernetes Observability Stack

This repo demonstrates a full-featured observability solution for Kubernetes using Helm and Helmfile. It includes:
- Prometheus for metrics
- Loki for logs
- Grafana for dashboards
- Alertmanager for alert routing
- Alloy for telemetry ingestion

## Setup Instructions
```bash
./scripts/bootstrap.sh
helmfile sync
```

## Daily GitHub PR Automation
A GitHub Actions workflow runs daily to simulate ongoing work and CI integration by submitting a timestamped pull request.
