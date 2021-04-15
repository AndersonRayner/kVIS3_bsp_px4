# kVIS3_bsp_px4
kVIS3 Board Support Package for PX4 data

A support package for [kVIS3 data visualisation](https://github.com/flyingk/kVIS3)

## Dependencies
For a typical install, there are no external dependencies (do remember to `git submodule init` and `git submodule update` though!).
If using the csv version of the ulg importer (not enabled by default, also, it is slower), you requires pyulog and Python 2.6+ (2.7.16 tested).  pyulog can be installed via the instructions at 
```
https://github.com/PX4/pyulog
```
but in most cases
```
pip install pyulog
```
will work.


