# golang-api

## Install

```sh
curl -fsSL https://get.jetpack.io/devbox | bash
devbox install
devbox shell
go mod download
```

## Run

```sh
make dev
```

## Test

```sh
make e2e.run // all case
make e2e.run E2E_CASES=e2e/scenarios/health.yaml // specified case
```
