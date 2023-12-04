
.PHONY: ci
ci: qa-all security coverage

.PHONY: release
release:
	poetry run semantic-release publish
