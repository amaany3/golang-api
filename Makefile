E2E_CASES=e2e/scenarios

.PHONY: dev
dev:
	@go run ./cmd/main.go

.PHONY: e2e.list
e2e.list:
	@go run github.com/zoncoen/scenarigo/cmd/scenarigo -c e2e/scenarigo.yaml list

.PHONY: e2e.run
e2e.run:
	@go run github.com/zoncoen/scenarigo/cmd/scenarigo -c e2e/scenarigo.yaml run ${E2E_CASES}
