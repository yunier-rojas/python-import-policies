
.PHONY: qa
qa:
	pre-commit run

.PHONY: qa-all
qa-all:
	pre-commit run --all-files

.PHONY: security
security:
	poetry export | skjold -c qa/.skjold.toml audit -
