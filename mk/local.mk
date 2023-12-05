
.PHONY: ci
ci: qa-all security coverage

.PHONY: release
release:
	semantic-release -vv version --print
	poetry run semantic-release publish -vv
