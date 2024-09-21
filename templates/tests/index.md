---
abstract: Integration tests for the Monero node chart.
authors:
    - name: Xander Harris
      email: xandertheharris@gamil.com
date: 2024-08-04
title: Integration Tests
---

## Usage

Run the tests.

```{code-block} shell
:caption: test

helm test monero
```

## Test Suites

This provides the following suites.

### Test Ports

```{autoyaml} templates/tests/test_ports.yaml
```
