SHELL := /bin/bash

default: run

run:
	docker-compose up --scale plumber=5

setup: requirements.txt
	python3 -m pip install --disable-pip-version-check -q -r requirements.txt

test:
	@echo "Running load tests for 10 seconds ..."
	@cd tests && locust --headless --loglevel WARNING --only-summary --run-time 10s --users 5 --spawn-rate 1 -H http://localhost
