# Install script for directory: /home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib/libPartsBasedDetector.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib/libPartsBasedDetector.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib/libPartsBasedDetector.so"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib/libPartsBasedDetector.so")
FILE(INSTALL DESTINATION "/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib" TYPE SHARED_LIBRARY FILES "/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/build/src/libPartsBasedDetector.so")
  IF(EXISTS "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib/libPartsBasedDetector.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib/libPartsBasedDetector.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib/libPartsBasedDetector.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/lib/libPartsBasedDetector.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin/PartsBasedDetector" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin/PartsBasedDetector")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin/PartsBasedDetector"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin/PartsBasedDetector")
FILE(INSTALL DESTINATION "/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin" TYPE EXECUTABLE FILES "/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/build/src/PartsBasedDetector")
  IF(EXISTS "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin/PartsBasedDetector" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin/PartsBasedDetector")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin/PartsBasedDetector")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/aindra/FR/src/FR/FR/detection/PartsBasedDetector-master/bin/PartsBasedDetector")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

