# - Try to find SOIL
# Once done, this will define
#
# SOIL_FOUND - system has SOIL
# SOIL_INCLUDE_DIR - the SOIL include directories
# SOIL_LIBRARIES - link these to use SOIL
FIND_PATH( SOIL_INCLUDE_DIR SOIL/SOIL.h
    /usr/include
    /usr/local/include
    /opt/local/include
    ${CMAKE_SOURCE_DIR}/thirdparty/include
    )
FIND_LIBRARY( SOIL_LIBRARY SOIL
    /usr/lib64
    /usr/lib
    /usr/local/lib
    /opt/local/lib
    ${CMAKE_SOURCE_DIR}/thirdparty/lib
    )
IF(SOIL_INCLUDE_DIR AND SOIL_LIBRARY)
    SET( SOIL_FOUND TRUE )
    SET( SOIL_LIBRARIES ${SOIL_LIBRARY} )
ENDIF(SOIL_INCLUDE_DIR AND SOIL_LIBRARY)
IF(SOIL_FOUND)
    IF(NOT SOIL_FIND_QUIETLY)
        MESSAGE(STATUS "Found SOIL: ${SOIL_LIBRARY}")
    ENDIF(NOT SOIL_FIND_QUIETLY)
ELSE(SOIL_FOUND)
    IF(SOIL_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could not find libSOIL")
    ENDIF(SOIL_FIND_REQUIRED)
ENDIF(SOIL_FOUND)
