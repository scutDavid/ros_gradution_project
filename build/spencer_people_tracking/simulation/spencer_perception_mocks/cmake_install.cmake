# Install script for directory: /home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wwh/qqq/build/spencer_people_tracking/simulation/spencer_perception_mocks/catkin_generated/installspace/spencer_perception_mocks.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_perception_mocks/cmake" TYPE FILE FILES
    "/home/wwh/qqq/build/spencer_people_tracking/simulation/spencer_perception_mocks/catkin_generated/installspace/spencer_perception_mocksConfig.cmake"
    "/home/wwh/qqq/build/spencer_people_tracking/simulation/spencer_perception_mocks/catkin_generated/installspace/spencer_perception_mocksConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_perception_mocks" TYPE FILE FILES "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/spencer_perception_mocks" TYPE PROGRAM FILES
    "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/scripts/detected_and_tracked_persons.py"
    "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/scripts/driving_robot.py"
    "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/scripts/human_attributes.py"
    "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/scripts/social_activities.py"
    "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/scripts/social_relations.py"
    "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/scripts/spokespersons.py"
    "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/scripts/tracked_groups.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spencer_perception_mocks/launch" TYPE DIRECTORY FILES "/home/wwh/qqq/src/spencer_people_tracking/simulation/spencer_perception_mocks/launch/" REGEX "/\\.svn$" EXCLUDE)
endif()

