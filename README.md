# pyMBF_read

Python API to read MBF memory through DMA

## Documentation

See [DLS Confluence website](https://diamondlightsource.atlassian.net/wiki/spaces/DIAGTECHWEB/pages/851977/Direct+Memory+Access+API)

## Building and Installation

### Dependencies

The project is compatible with Python 2 and Python 3.

### Python Module Dependencies

* numpy

### Build package

* build the package
```
python3 setup.py bdist_wheel
```

or with python >= 3.8 and using `build`

```
python3 -m build
```

### Installation

* install the previously built package with pip
```
pip install dist/mbf_read-2.0.2-py3-none-any.whl
```

## License

The code is released under the MIT license. Full license [here](LICENSE)
