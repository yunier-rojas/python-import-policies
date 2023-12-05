
.PHONY: ci
ci: qa-all security coverage

.PHONY: release
release:
	poetry run semantic-release version
	poetry build
	poetry run twine upload dist/*
	poetry run semantic-release publish
