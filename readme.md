---
abstract: A Helm Chart to deploy a Bitcoin node to Kubernetes.
authors:
  - name: Xander Harris
    email: xandertheharris@gmail.com
date: 2024-08-17
title: Readme
---

[![CodeQL](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/codeql.yml/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/codeql.yml)
[![Dependabot Updates](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/dependabot/dependabot-updates)
[![Documentation](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/documentation.yml/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/documentation.yml)
[![OSSAR](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/ossar.yml/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/ossar.yml)
[![Test Helm Chart](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/helm.yml/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/helm.yml)
[![wakatime](https://wakatime.com/badge/github/edwardtheharris/helm-bitcoin-node.svg)](https://wakatime.com/badge/github/edwardtheharris/helm-bitcoin-node)

Deploy a Bitcoin node to Kubernetes.

## Usage

1. Edit `values.yaml` as required.
2. Create a namespace.

   ```sh
   kubectl create ns bitcoin
   ```

3. Deploy the release.

   ```sh
   helm -n bitcoin upgrade --install bitcoin . -f values.yaml
   ```
