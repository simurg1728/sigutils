#========== Qt Libraries and include directories ==========#
INCLUDEPATH += $$PWD/src/include

#========== Get build configuration and library path (ATTENTION: It DOES NOT use shadow build path for binaries)==========#
include(configuration.pri)
SIGUTILS_BUILD_PATH = $$PWD/build/$${PLATFORM}/$${BUILD_CONFIG}/$${CUR_ARCH}
DEPENDPATH += $${SIGUTILS_BUILD_PATH}

#========== Libraries ==========#
!contains(DEFINES, sigutils_BUILD) {
    LIB_NAME = sigutils
    win32|unix: LIBS += -L$${SIGUTILS_BUILD_PATH} -l$${LIB_NAME}
}

win32 {
include($$PWD/../libthirdparty/fftwf.pri)
include($$PWD/../libthirdparty/volk.pri)

# Windows sockets
LIBS += -lws2_32

# Use single floating point
DEFINES += _SU_SINGLE_PRECISION
}
