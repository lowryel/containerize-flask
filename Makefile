install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	# python -m pytest -vv --cov=myrepolib tests/*.py
	# python -m pytest --nbval notebook.ipynb

lint:
	# This is a linter for Python source code linter: https://www.pylint.org/
	pylint --disable=R,C,W1203 hello.py

all: install lint test
