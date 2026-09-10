# {{ .name | upper }}

**Platform Engineer**

{{ .location.current }} · Looking to relocate to {{ .location.desired }}

[{{ .contact.email }}](mailto:{{ .contact.email }}) · [{{ .contact.phone }}](tel:{{ .contact.phone | replace "-" "" | replace " " "" }})

[LinkedIn](https://{{ .contact.linkedin }}) · [GitHub](https://{{ .contact.github }})

## SUMMARY

Platform and cloud infrastructure engineer with 5+ years of experience building and automating AWS infrastructure, internal developer tooling, and application delivery systems. Experienced across infrastructure as code, container orchestration, networking, CI/CD, and cloud-native systems, with professional experience in AWS and hands-on Kubernetes engineering. Strongest at turning recurring infrastructure problems into standardized, maintainable systems and working across infrastructure and application boundaries.

## TECHNICAL SKILLS

**Cloud:** AWS, Azure, GCP

**Infrastructure as Code:** Terraform, OpenTofu, AWS CDK, CloudFormation, Bicep

**Containers & Platform:** Kubernetes, Docker, ECS, Helm, Argo CD

**Observability:** Prometheus, Grafana, Loki, Grafana Alloy

**Languages:** Go, Python, TypeScript, Bash

**CI/CD:** GitHub Actions

**AWS:** VPC, IAM, ECS, ECR, S3, ALB, Route 53, API Gateway, Lambda, EventBridge, RDS, DynamoDB, SecretsManager, SSM

**Azure:** Container Apps, Function Apps, KeyVault, VNet, Entra ID

**GCP:** Network, GKE, GCS, IAM

## EXPERIENCE

### JAPAN ASSET MANAGEMENT PLATFORM (JAMP), Tokyo, Japan

**Infrastructure Engineer / Platform Engineer** | Jan. 2026 – Present

- Designed and independently implemented an internal developer platform that abstracts AWS infrastructure into four standardized application types: scheduled containerized jobs, stateless containerized services, stateful containerized services with persistent storage, and static websites.
- Built the platform's underlying infrastructure and application provisioning modules in Terraform, covering ECS, ECR, S3, ALB, VPC networking, IAM, Secrets Manager, SSM Parameter Store, EventBridge Scheduler, EBS, and DynamoDB; implemented approximately 10 reusable Terraform modules.
- Implemented an infrastructure delivery workflow using GitHub Actions and Terraform, including pull-request validation, infrastructure planning, generated plan artifacts, and controlled application of infrastructure changes.
- Extended the developer platform to provide self-service DynamoDB provisioning, integrating YAML-based table configuration into the platform's infrastructure provisioning workflow and supporting partition keys, optional sort keys, and global secondary indexes.
- Automated application infrastructure and access management through standardized IAM roles, networking, secrets management, and application-specific AWS resources rather than requiring bespoke infrastructure for each application.
- Built a centralized application entry point for platform-managed applications using ALB routing and automated infrastructure provisioning.

### SHIFT INC., Tokyo, Japan

**Cloud Infrastructure Engineer** | Aug. 2022 – Dec. 2025

**Client: Japan Asset Management Platform (JAMP)** | Apr. 2025 – Dec. 2025

- Designed and implemented infrastructure using AWS CDK and AWS services including ECS, VPC, ALB, Route 53, and supporting IAM and application infrastructure.
- Developed backend services in Go and contributed to infrastructure and application delivery tooling.

**Client: QUICK** | Jan. 2023 – Mar. 2025

- Collaborated directly with the client engineering team in Japanese to operate and extend cloud infrastructure and application platforms in an agile development environment.
- Automated manual infrastructure and administrative workflows, reducing individual tasks from more than 8 hours to under 30 minutes.

**Client: 7&i** | Aug. 2022 – Nov. 2022

### TATA CONSULTANCY SERVICES, Austin, TX, USA

**Software Developer** | Oct. 2020 – Jun. 2022

**Client: Apple — Retail Store Applications**

- Developed and maintained Terraform-based AWS infrastructure as part of Apple's Retail Store Applications team.
- Built infrastructure automation for modeling pending AWS infrastructure changes and tracking infrastructure updates to improve change visibility and disaster-recovery readiness.

## SELECTED PROJECTS

### MongoDB Kubernetes Operator

**Go · Kubernetes · Kubebuilder · MongoDB · Helm**

- Designed and implemented a Kubernetes operator in Go to manage MongoDB replica-set configuration and lifecycle through a custom resource.
- Implemented controller reconciliation logic for MongoDB replica-set state, including automated replica-set configuration updates and initialization.
- Packaged the operator as a Helm chart and built CI/CD workflows for container image and chart publication.

**GitHub:** https://{{ .contact.github }}/mongodb-operator

### GKE Platform Lab

**GKE · Kubernetes · OpenTofu · Argo CD · Helm · Prometheus · Grafana · Loki · Alloy**

- Built and operated a multi-node Kubernetes platform on GKE using OpenTofu, GitOps deployment with Argo CD, and Helm-based application packaging.
- Designed separate infrastructure and application workload pools and used Kubernetes scheduling controls to isolate platform services from application workloads.
- Implemented a cloud-native observability stack with Prometheus, Grafana, Loki, and Grafana Alloy, including Kubernetes log discovery and centralized log aggregation.
- Diagnosed and resolved Kubernetes scheduling, persistent-volume permissions, container security-context, node-health, and observability-stack failures while operating the platform.

**GitHub:** https://{{ .contact.github }}/gke-platform-lab

## EDUCATION

### UNIVERSITY OF DENVER, Denver, CO, USA

**Bachelor of Science, Computer Science**

Minors: Mathematics, Japanese | June 2020

## CERTIFICATIONS

**AWS Certified Solutions Architect – Professional**

**JLPT – N1**

## LANGUAGES

**English:** Native

**Japanese:** Business proficiency
