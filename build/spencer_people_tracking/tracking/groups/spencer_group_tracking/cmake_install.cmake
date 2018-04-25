# Install script for directory: /home/wwh/qqq/src/spencer_people_tracking/tracking/groups/spencer_group_tracking

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wwh/qqq/build/spencer_people_tracking/tracking/groups/spencer_group_tracking/catkin_generated/installspace/spencer_group_tracking.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_group_tracking/cmake" TYPE FILE FILES
    "/home/wwh/qqq/build/spencer_people_tracking/tracking/groups/spencer_group_tracking/catkin_generated/installspace/spencer_group_trackingConfig.cmake"
    "/home/wwh/qqq/build/spencer_people_tracking/tracking/groups/spencer_group_tracking/catkin_generated/installspace/spencer_group_trackingConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_group_tracking" TYPE FILE FILES "/home/wwh/qqq/src/spencer_people_tracking/tracking/groups/spencer_group_tracking/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/spencer_group_tracking" TYPE PROGRAM FILES "/home/wwh/qqq/src/spencer_people_tracking/tracking/groups/spencer_group_tracking/scripts/tracked_groups.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_group_tracking/launch" TYPE DIRECTORY FILES "/home/wwh/qqq/src/spencer_people_tracking/tracking/groups/spencer_group_tracking/launch/" REGEX "/\\.svn$" EXCLUDE)
endif()

