install:
	pip install --upgrade pip &&\
		pip install -r requirement.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: install lint test