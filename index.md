---
abstract: >-
   This is the index for the Bitcoin Node Helm Chart.
authors:
   - name: Xander Harris
     email: xandertheharris@gmail.com
date: 2024-08-04
title: bitcoin-node Helm Chart
---

[![CodeQL](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/codeql.yml/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/codeql.yml)
[![Dependabot Updates](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/dependabot/dependabot-updates)
[![Documentation](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/documentation.yml/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/documentation.yml)
[![OSSAR](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/ossar.yml/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/ossar.yml)
[![Test Helm Chart](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/helm.yml/badge.svg)](https://github.com/edwardtheharris/helm-bitcoin-node/actions/workflows/helm.yml)
[![wakatime](https://wakatime.com/badge/github/edwardtheharris/helm-bitcoin-node.svg)](https://wakatime.com/badge/github/edwardtheharris/helm-bitcoin-node)

```{note}
You may find [this medium.com](https://bly.to/1Nc0Za3) article helpful when
containerizing the Bitcoin node.
```

## Repository Contents

````{sidebar}
```{contents}
```
````

```{toctree}
:caption: contents

docker/index
tests/index
```

```{toctree}
:caption: meta

.github/index
license
readme
security
```

## Indices and tables

- {ref}`genindex`
- {ref}`modindex`
- {ref}`search`

## Glossary

```{glossary}
csi-driver-lvm
   Container Storage Interface driver for Logical Volume Management. Requires
   Linux with available LVM volume groups on worker nodes to function properly.
   More information is available
   [here](https://github.com/metal-stack/csi-driver-lvm).

Docker
  Docker is the first container runtime to become ubiquitous and so is still
  frequently used to build images that will run on Kubernetes or other
  orchestrators. More information is available [here](https://app.docker.com/).

GitHub
   Most likely the site this repository is hosted on. More information is
   available [here](https://github.com).

Helm
   A tool commonly used to deploy applications to {term}`Kubernetes`. More
   information is available [here](https://helm.sh).

Kubernetes
   An ancient Greek word that means 'sailor' or 'navigator', it is the
   most common container orchestration system currently in use. More
   information is available [here](https://kubernetes.io).
```

## Usage

1. Edit `values.yaml` as required.

   ```{admonition} Persistence
   You should have either the
   {term}`csi-driver-lvm` installed
   on your cluster, or update the persistence settings to use some other
   form of persistent storage.
   ```

2. Create a namespace.

   ```{code-block} shell
   :caption: prepare
   kubectl create ns bitcoin
   ```

3. Deploy the release.

   ```{code-block} shell
   :caption: deploy

   helm -n bitcoin upgrade --install bitcoin . -f values.yaml
   ```

### Chart

```{autoyaml} Chart.yaml
```

### Values

```{autoyaml} values.yaml
```

```{sectionauthor} Xander Harris <xandertheharris@gmail.com>
```
