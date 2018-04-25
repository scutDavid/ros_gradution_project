# Install script for directory: /home/wwh/qqq/src/spencer_people_tracking/tracking/people/spencer_tracking_metrics

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wwh/qqq/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/wwh/qqq/build/spencer_people_tracking/tracking/people/spencer_tracking_metrics/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wwh/qqq/build/spencer_people_tracking/tracking/people/spencer_tracking_metrics/catkin_generated/installspace/spencer_tracking_metrics.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_tracking_metrics/cmake" TYPE FILE FILES
    "/home/wwh/qqq/build/spencer_people_tracking/tracking/people/spencer_tracking_metrics/catkin_generated/installspace/spencer_tracking_metricsConfig.cmake"
    "/home/wwh/qqq/build/spencer_people_tracking/tracking/people/spencer_tracking_metrics/catkin_generated/installspace/spencer_tracking_metricsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_tracking_metrics" TYPE FILE FILES "/home/wwh/qqq/src/spencer_people_tracking/tracking/people/spencer_tracking_metrics/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/spencer_tracking_metrics" TYPE PROGRAM FILES
    "/home/wwh/qqq/src/spencer_people_tracking/tracking/people/spencer_tracking_metrics/scripts/dataset_stats.py"
    "/home/wwh/qqq/src/spencer_people_tracking/tracking/people/spencer_tracking_metrics/scripts/online_analysis.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_tracking_metrics/launch" TYPE DIRECTORY FILES "/home/wwh/qqq/src/spencer_people_tracking/tracking/people/spencer_tracking_metrics/launch/" REGEX "/\\.svn$" EXCLUDE)
endif()

