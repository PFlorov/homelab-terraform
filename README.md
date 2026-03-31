# homelab-terraform

Terraform configuration for managing supporting infrastructure for my
personal homelab.

This repository is part of my DevOps learning journey and is used to
practice Infrastructure as Code with real services I already use, starting
with Cloudflare DNS and GitHub resources.

## Overview

The goal of this repository is to manage external supporting services for
my homelab in a declarative and reusable way.

Current scope:
- Cloudflare DNS records
- GitHub repositories

This repository is intentionally separate from my Kubernetes GitOps and
Ansible automation repositories. The idea is to keep Terraform focused on
external infrastructure and platform-related SaaS configuration, while
cluster state and node automation are managed elsewhere.

## Goals

- Learn Terraform fundamentals with real infrastructure
- Practice modular Terraform project structure
- Manage homelab-related services as code
- Build reusable Infrastructure as Code patterns
- Develop safer habits around changes, state, and refactoring

## Repository Structure

```text
.
├── environments/
│   └── prod/
│       ├── main.tf
│       ├── outputs.tf
│       ├── providers.tf
│       ├── variables.tf
│       └── versions.tf
├── modules/
│   ├── cloudflare_dns_record/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── versions.tf
│   └── github_repository/
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
│       └── versions.tf
├── .gitignore
├── LICENSE
└── README.md
