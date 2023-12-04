.PHONY:
coverage:
	pytest tests --cov-config=qa/.coveragerc --cov=import_policies --cov-report term --cov-report xml:coverage.xml
