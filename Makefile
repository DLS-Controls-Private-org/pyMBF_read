PYTHON = python

# remove spaces and empty lines
VERSION = $(strip $(shell sed '/^$$/d' VERSION))

# default target
default: dist
.PHONY: default

mbf_read/__init__.py: mbf_read/__init__.py.in VERSION
	sed 's/@@VERSION@@/$(VERSION)/' $< >$@

dist: setup.py $(wildcard mbf_read/*.py) mbf_read/__init__.py
	$(PYTHON) setup.py bdist_wheel
	touch dist

# Clean the module
clean:
	$(PYTHON) setup.py clean
	-rm -rf build dist *egg-info installed.files mbf_read/__init__.py
	-find -name '*.pyc' -exec rm {} \;
.PHONY: clean
