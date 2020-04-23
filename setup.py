#-*- coding: utf8 -*-
from setuptools import setup

import os

mypackage_root_dir, _ = os.path.split(__file__)
version_file = open(os.path.join(mypackage_root_dir, 'VERSION'))
version = version_file.read().strip()

setup(
    name = 'mbf_read',
    version = version,
    description = 'Access MBF memory (DMA)',
    author = 'Benoît Roche',
    author_email = 'benoit.roche@esrf.fr',
    packages = ['mbf_read'],
)
