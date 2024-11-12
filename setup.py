#-*- coding: utf8 -*-
from setuptools import setup

exec(open("mbf_read/version.py").read())

setup(
    name = 'mbf_read',
    version = __version__,
    description = 'Access MBF memory (DMA)',
    author = 'Benoît Roche',
    author_email = 'benoit.roche@esrf.fr',
    packages = ['mbf_read'],
)
