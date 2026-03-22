# homelab-terraform

Terraform configuration for managing supporting infrastructure for my
personal homelab, starting with Cloudflare DNS and GitHub resources.

## Overview

This repository is part of my DevOps learning journey and is used to
practice Infrastructure as Code with real services I already use in my
homelab setup.

The initial scope includes:
- Cloudflare DNS records
- GitHub repository management

## Goals

- Learn Terraform fundamentals with real infrastructure
- Practice modular Terraform project structure
- Manage external homelab-related resources as code
- Build reusable IaC patterns for future expansion

## Repository Structure

.
├── environments/
│   └── prod/
│       ├── main.tf
│       ├── outputs.tf
│       ├── providers.tf
│       ├── variables.tf
│       └── versions.tf
└── modules/
    ├── cloudflare_dns_record/
    └── github_repository/
