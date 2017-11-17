# Install script for directory: /home/ubuntu/Onboard-SDK-3.3.1/osdk-core

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
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/djiosdk/DJIOSDKConfig.cmake;/usr/local/lib/cmake/djiosdk/DJIOSDKConfigVersion.cmake")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/lib/cmake/djiosdk" TYPE FILE FILES
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/cmake-modules/DJIOSDKConfig.cmake"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/cmake-modules/DJIOSDKConfigVersion.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake")
    FILE(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake"
         "/home/ubuntu/Onboard-SDK-3.3.1/build/osdk-core/CMakeFiles/Export/_usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake")
    IF(EXPORT_FILE_CHANGED)
      FILE(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/usr/local/lib/cmake/djiosdk/djiosdkTargets-*.cmake")
      IF(OLD_CONFIG_FILES)
        MESSAGE(STATUS "Old export file \"$ENV{DESTDIR}/usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        FILE(REMOVE ${OLD_CONFIG_FILES})
      ENDIF(OLD_CONFIG_FILES)
    ENDIF(EXPORT_FILE_CHANGED)
  ENDIF()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/lib/cmake/djiosdk" TYPE FILE FILES "/home/ubuntu/Onboard-SDK-3.3.1/build/osdk-core/CMakeFiles/Export/_usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/usr/local/lib/cmake/djiosdk/djiosdkTargets-debug.cmake")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/lib/cmake/djiosdk" TYPE FILE FILES "/home/ubuntu/Onboard-SDK-3.3.1/build/osdk-core/CMakeFiles/Export/_usr/local/lib/cmake/djiosdk/djiosdkTargets-debug.cmake")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "shlib")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libdjiosdk-core.a")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/home/ubuntu/Onboard-SDK-3.3.1/build/libs/libdjiosdk-core.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "shlib")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/djiosdk/dji_hotpoint.hpp;/usr/local/include/djiosdk/dji_mobile_communication.hpp;/usr/local/include/djiosdk/dji_type.hpp;/usr/local/include/djiosdk/dji_control.hpp;/usr/local/include/djiosdk/dji_subscription.hpp;/usr/local/include/djiosdk/dji_mfio.hpp;/usr/local/include/djiosdk/dji_vehicle_callback.hpp;/usr/local/include/djiosdk/dji_version.hpp;/usr/local/include/djiosdk/dji_error.hpp;/usr/local/include/djiosdk/dji_gimbal.hpp;/usr/local/include/djiosdk/dji_status.hpp;/usr/local/include/djiosdk/dji_virtual_rc.hpp;/usr/local/include/djiosdk/dji_mission_manager.hpp;/usr/local/include/djiosdk/dji_mission_type.hpp;/usr/local/include/djiosdk/dji_vehicle.hpp;/usr/local/include/djiosdk/dji_waypoint.hpp;/usr/local/include/djiosdk/dji_telemetry.hpp;/usr/local/include/djiosdk/dji_hardware_sync.hpp;/usr/local/include/djiosdk/dji_command.hpp;/usr/local/include/djiosdk/dji_ack.hpp;/usr/local/include/djiosdk/dji_mission_base.hpp;/usr/local/include/djiosdk/dji_camera.hpp;/usr/local/include/djiosdk/dji_broadcast.hpp;/usr/local/include/djiosdk/dji_aes.hpp;/usr/local/include/djiosdk/dji_open_protocol.hpp;/usr/local/include/djiosdk/dji_thread_manager.hpp;/usr/local/include/djiosdk/dji_memory.hpp;/usr/local/include/djiosdk/dji_hard_driver.hpp;/usr/local/include/djiosdk/dji_log.hpp;/usr/local/include/djiosdk/dji_circular_buffer.hpp;/usr/local/include/djiosdk/dji_singleton.hpp;/usr/local/include/djiosdk/posix_thread.hpp;/usr/local/include/djiosdk/posix_thread_manager.hpp;/usr/local/include/djiosdk/linux_serial_device.hpp")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/include/djiosdk" TYPE FILE FILES
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_hotpoint.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_mobile_communication.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_type.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_control.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_subscription.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_mfio.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_vehicle_callback.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_version.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_error.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_gimbal.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_status.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_virtual_rc.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_mission_manager.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_mission_type.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_vehicle.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_waypoint.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_telemetry.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_hardware_sync.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_command.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_ack.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_mission_base.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_camera.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/api/inc/dji_broadcast.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/protocol/inc/dji_aes.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/protocol/inc/dji_open_protocol.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/hal/inc/dji_thread_manager.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/hal/inc/dji_memory.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/hal/inc/dji_hard_driver.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/hal/inc/dji_log.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/utility/inc/dji_circular_buffer.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/utility/inc/dji_singleton.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/platform/linux/inc/posix_thread.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/platform/linux/inc/posix_thread_manager.hpp"
    "/home/ubuntu/Onboard-SDK-3.3.1/osdk-core/platform/linux/inc/linux_serial_device.hpp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")

