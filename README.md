# libsigutils - The sigutils library

[![Build](https://github.com/BatchDrake/sigutils/actions/workflows/build.yml/badge.svg)](https://github.com/BatchDrake/sigutils/actions/workflows/build.yml)

The sigutils library is a digital signal processing library written in C, designed for blind signal analysis and automatic demodulation.

## Documentation

Project documentation and instructions on how to build and install the project can be found at https://batchdrake.github.io/sigutils/.

## Adding files to project

* HEADER, SOURCE and FORM sources are automatically read by QMake, no need for adding by name.
* "*.h" files are need to be in the "include" folder
* "*.cpp" and "*.ui" files are need to be in the "src" folder
* After creating the new source files, libsigutils.pro file need to read.

# Dependencies

* TODO 

# Build

Qt 5.14.2 is used.

* Open libsigutils.pro
* Shadow build MUST be set 'build'
* Build all

Switching to MSVC just after building MinGW may be faulty. But deleting "qmake.stash" and re-opening project helps.

Binaries are ALWAYS created in "build" folder. No matter what the shadow directory is set (Check the libsigutils.pro).

# Linking

* Library can be linked by adding following line into the *.pro or *.pri file:
	include(libsigutils.pri)
* The project can also be added in a Qt SUBDIR template.
