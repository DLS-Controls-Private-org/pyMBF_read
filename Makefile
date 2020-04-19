PYTHON = python

# This is run when we type make
dist: setup.py $(wildcard mbf_memory/*.py)
	$(PYTHON) setup.py bdist_egg
	$(PYTHON) setup.py bdist_wheel
	touch dist

# Clean the module
clean:
	$(PYTHON) setup.py clean
	-rm -rf build dist *egg-info installed.files
	-find -name '*.pyc' -exec rm {} \;
.PHONY: clean
