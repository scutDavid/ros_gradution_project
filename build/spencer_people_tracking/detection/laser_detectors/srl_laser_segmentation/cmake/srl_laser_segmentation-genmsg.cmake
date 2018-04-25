# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "srl_laser_segmentation: 2 messages, 0 services")

set(MSG_I_FLAGS "-Isrl_laser_segmentation:/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(srl_laser_segmentation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg" NAME_WE)
add_custom_target(_srl_laser_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srl_laser_segmentation" "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg" ""
)

get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg" NAME_WE)
add_custom_target(_srl_laser_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srl_laser_segmentation" "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg" "srl_laser_segmentation/LaserscanSegment:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srl_laser_segmentation
)
_generate_msg_cpp(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg"
  "${MSG_I_FLAGS}"
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srl_laser_segmentation
)

### Generating Services

### Generating Module File
_generate_module_cpp(srl_laser_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srl_laser_segmentation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(srl_laser_segmentation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(srl_laser_segmentation_generate_messages srl_laser_segmentation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_cpp _srl_laser_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_cpp _srl_laser_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srl_laser_segmentation_gencpp)
add_dependencies(srl_laser_segmentation_gencpp srl_laser_segmentation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srl_laser_segmentation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srl_laser_segmentation
)
_generate_msg_eus(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg"
  "${MSG_I_FLAGS}"
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srl_laser_segmentation
)

### Generating Services

### Generating Module File
_generate_module_eus(srl_laser_segmentation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srl_laser_segmentation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(srl_laser_segmentation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(srl_laser_segmentation_generate_messages srl_laser_segmentation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_eus _srl_laser_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_eus _srl_laser_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srl_laser_segmentation_geneus)
add_dependencies(srl_laser_segmentation_geneus srl_laser_segmentation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srl_laser_segmentation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srl_laser_segmentation
)
_generate_msg_lisp(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg"
  "${MSG_I_FLAGS}"
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srl_laser_segmentation
)

### Generating Services

### Generating Module File
_generate_module_lisp(srl_laser_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srl_laser_segmentation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(srl_laser_segmentation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(srl_laser_segmentation_generate_messages srl_laser_segmentation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_lisp _srl_laser_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_lisp _srl_laser_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srl_laser_segmentation_genlisp)
add_dependencies(srl_laser_segmentation_genlisp srl_laser_segmentation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srl_laser_segmentation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srl_laser_segmentation
)
_generate_msg_nodejs(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg"
  "${MSG_I_FLAGS}"
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srl_laser_segmentation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(srl_laser_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srl_laser_segmentation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(srl_laser_segmentation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(srl_laser_segmentation_generate_messages srl_laser_segmentation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_nodejs _srl_laser_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_nodejs _srl_laser_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srl_laser_segmentation_gennodejs)
add_dependencies(srl_laser_segmentation_gennodejs srl_laser_segmentation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srl_laser_segmentation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srl_laser_segmentation
)
_generate_msg_py(srl_laser_segmentation
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg"
  "${MSG_I_FLAGS}"
  "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srl_laser_segmentation
)

### Generating Services

### Generating Module File
_generate_module_py(srl_laser_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srl_laser_segmentation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(srl_laser_segmentation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(srl_laser_segmentation_generate_messages srl_laser_segmentation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegment.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_py _srl_laser_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/laser_detectors/srl_laser_segmentation/msg/LaserscanSegmentation.msg" NAME_WE)
add_dependencies(srl_laser_segmentation_generate_messages_py _srl_laser_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srl_laser_segmentation_genpy)
add_dependencies(srl_laser_segmentation_genpy srl_laser_segmentation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srl_laser_segmentation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srl_laser_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srl_laser_segmentation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(srl_laser_segmentation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(srl_laser_segmentation_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srl_laser_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srl_laser_segmentation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(srl_laser_segmentation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(srl_laser_segmentation_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srl_laser_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srl_laser_segmentation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(srl_laser_segmentation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(srl_laser_segmentation_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srl_laser_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srl_laser_segmentation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(srl_laser_segmentation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(srl_laser_segmentation_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srl_laser_segmentation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srl_laser_segmentation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srl_laser_segmentation
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srl_laser_segmentation
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srl_laser_segmentation/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(srl_laser_segmentation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(srl_laser_segmentation_generate_messages_py sensor_msgs_generate_messages_py)
endif()
