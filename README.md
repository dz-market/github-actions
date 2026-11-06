<div align="center">

# Github Actions

Shared Github Actions and reusable CI/CD workflows.

[![CI](https://github.com/dz-market/github-actions/actions/workflows/ci.yml/badge.svg)](https://github.com/dz-market/github-actions/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/dz-market/github-actions)](https://github.com/dz-market/github-actions/releases)
[![License](https://img.shields.io/github/license/dz-market/github-actions)](LICENSE)

</div>

## Workflows

| Workflow | Purpose |
| --- | --- |
| [go-ci](.github/workflows/go-ci.yml) | Lint, module checks, build, race tests, coverage upload and vulnerability checks |
| [docker-build](.github/workflows/docker-build.yml) | Build a Docker target without publishing|
| [docker-publish](.github/workflows/docker-publish.yml) | Build and publish a Docker target to GHCR|
| [dependabot-auto-merge](.github/workflows/dependabot-auto-merge.yml) | Enabled squash auto-merge for Dependabot patch updates |