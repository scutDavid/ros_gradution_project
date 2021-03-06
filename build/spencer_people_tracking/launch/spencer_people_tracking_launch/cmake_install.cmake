# Install script for directory: /home/wwh/qqq/src/spencer_people_tracking/launch/spencer_people_tracking_launch

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wwh/qqq/build/spencer_people_tracking/launch/spencer_people_tracking_launch/catkin_generated/installspace/spencer_people_tracking_launch.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_people_tracking_launch/cmake" TYPE FILE FILES
    "/home/wwh/qqq/build/spencer_people_tracking/launch/spencer_people_tracking_launch/catkin_generated/installspace/spencer_people_tracking_launchConfig.cmake"
    "/home/wwh/qqq/build/spencer_people_tracking/launch/spencer_people_tracking_launch/catkin_generated/installspace/spencer_people_tracking_launchConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_people_tracking_launch" TYPE FILE FILES "/home/wwh/qqq/src/spencer_people_tracking/launch/spencer_people_tracking_launch/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_people_tracking_launch/launch" TYPE DIRECTORY FILES "/home/wwh/qqq/src/spencer_people_tracking/launch/spencer_people_tracking_launch/launch/" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_people_tracking_launch/rviz" TYPE DIRECTORY FILES "/home/wwh/qqq/src/spencer_people_tracking/launch/spencer_people_tracking_launch/rviz/" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/spencer_people_tracking_launch" TYPE PROGRAM FILES "/home/wwh/qqq/src/spencer_people_tracking/launch/spencer_people_tracking_launch/scripts/download_example_bagfiles.sh")
endif()

