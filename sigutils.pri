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
# We use Radioconda's packages
RADIOCONDA_PATH = C:/Users/user/radioconda
DEPENDPATH += $${RADIOCONDA_PATH}/Library/bin
INCLUDEPATH += $${RADIOCONDA_PATH}/Library/include

# Add from Radioconda's packages
LIBS += -L$${RADIOCONDA_PATH}/Library/lib -lfftw3f

# FIXME: There is a linking issue
# LIBS += -L$${RADIOCONDA_PATH}/Library/lib -lvolk
# DEFINES += HAVE_VOLK

# Windows sockets
LIBS += -lws2_32

# Use single floating point
DEFINES += _SU_SINGLE_PRECISION
}
