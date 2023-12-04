
.PHONY:
qa:
	pre-commit run

.PHONY:
qa-all:
	pre-commit run --all-files

.PHONY:
security:
	poetry export | skjold -c qa/.skjold.toml audit -
