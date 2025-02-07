#========== Configs ==========#
TEMPLATE = app

CONFIG += console c++17 thread

INCLUDEPATH += $$PWD/test

#========== PRI Files (DO NOT CHANGE ORDER) ==========#
include($$PWD/gtest_dependency.pri)
include($$PWD/sigutils.pri)

#========== Add source files ==========#
HEADERS += $$files($$PWD/tests/*.h, true)
SOURCES += $$files($$PWD/tests/*.c, true)
HEADERS += $$files($$PWD/tests/*.hpp, true)
SOURCES += $$files($$PWD/tests/*.cpp, true)
SOURCES += $$GTEST_SRCDIR/src/gtest_main.cc
