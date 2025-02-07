#========== Configs ==========#
TEMPLATE = lib

CONFIG += c++17 skip_target_version_ext shared

DEFINES += QT_DEPRECATED_WARNINGS \
           QT_MESSAGELOGCONTEXT \
           no_plugin_name_prefix \
           sigutils_BUILD

TARGET = sigutils

#========== Version ==========#
VERSION = 1.0.0.0 # major.minor.patch.build
DEFINES += SIGUTILS_VERSION_MAJOR=1
DEFINES += SIGUTILS_VERSION_MINOR=0
DEFINES += SIGUTILS_VERSION_PATCH=0

#========== PRI Files (DO NOT CHANGE ORDER) ==========#
include($$PWD/sigutils.pri)

#========== Output directories (DO NOT CHANGE ORDER, IT USES SIGUTILS_BUILD_PATH) ==========#
DESTDIR = $$SIGUTILS_BUILD_PATH
UI_DIR = $$SIGUTILS_BUILD_PATH/.ui
MOC_DIR = $$SIGUTILS_BUILD_PATH/.moc
RCC_DIR = $$SIGUTILS_BUILD_PATH/.rcc
OBJECTS_DIR = $$SIGUTILS_BUILD_PATH/.obj

#========== Add source files ==========#
HEADERS += $$files($$PWD/src/include/*.h, true)
SOURCES += $$files($$PWD/src/sigutils/*.c, true)
SOURCES += $$files($$PWD/src/util/*.c, true)
