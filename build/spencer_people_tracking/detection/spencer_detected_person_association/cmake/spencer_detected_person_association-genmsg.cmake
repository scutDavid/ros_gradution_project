# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "spencer_detected_person_association: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(spencer_detected_person_association_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv" NAME_WE)
add_custom_target(_spencer_detected_person_association_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_detected_person_association" "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv" ""
)

get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv" NAME_WE)
add_custom_target(_spencer_detected_person_association_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_detected_person_association" "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_detected_person_association
)
_generate_srv_cpp(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_detected_person_association
)

### Generating Module File
_generate_module_cpp(spencer_detected_person_association
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_detected_person_association
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(spencer_detected_person_association_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(spencer_detected_person_association_generate_messages spencer_detected_person_association_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_cpp _spencer_detected_person_association_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_cpp _spencer_detected_person_association_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_detected_person_association_gencpp)
add_dependencies(spencer_detected_person_association_gencpp spencer_detected_person_association_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_detected_person_association_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spencer_detected_person_association
)
_generate_srv_eus(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spencer_detected_person_association
)

### Generating Module File
_generate_module_eus(spencer_detected_person_association
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spencer_detected_person_association
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(spencer_detected_person_association_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(spencer_detected_person_association_generate_messages spencer_detected_person_association_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_eus _spencer_detected_person_association_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_eus _spencer_detected_person_association_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_detected_person_association_geneus)
add_dependencies(spencer_detected_person_association_geneus spencer_detected_person_association_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_detected_person_association_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_detected_person_association
)
_generate_srv_lisp(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_detected_person_association
)

### Generating Module File
_generate_module_lisp(spencer_detected_person_association
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_detected_person_association
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(spencer_detected_person_association_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(spencer_detected_person_association_generate_messages spencer_detected_person_association_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_lisp _spencer_detected_person_association_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_lisp _spencer_detected_person_association_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_detected_person_association_genlisp)
add_dependencies(spencer_detected_person_association_genlisp spencer_detected_person_association_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_detected_person_association_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spencer_detected_person_association
)
_generate_srv_nodejs(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spencer_detected_person_association
)

### Generating Module File
_generate_module_nodejs(spencer_detected_person_association
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spencer_detected_person_association
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(spencer_detected_person_association_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(spencer_detected_person_association_generate_messages spencer_detected_person_association_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_nodejs _spencer_detected_person_association_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_nodejs _spencer_detected_person_association_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_detected_person_association_gennodejs)
add_dependencies(spencer_detected_person_association_gennodejs spencer_detected_person_association_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_detected_person_association_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_detected_person_association
)
_generate_srv_py(spencer_detected_person_association
  "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_detected_person_association
)

### Generating Module File
_generate_module_py(spencer_detected_person_association
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_detected_person_association
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(spencer_detected_person_association_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(spencer_detected_person_association_generate_messages spencer_detected_person_association_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackId.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_py _spencer_detected_person_association_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/spencer_people_tracking/detection/spencer_detected_person_association/srv/LookupTrackIds.srv" NAME_WE)
add_dependencies(spencer_detected_person_association_generate_messages_py _spencer_detected_person_association_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_detected_person_association_genpy)
add_dependencies(spencer_detected_person_association_genpy spencer_detected_person_association_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_detected_person_association_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_detected_person_association)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_detected_person_association
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(spencer_detected_person_association_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spencer_detected_person_association)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spencer_detected_person_association
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(spencer_detected_person_association_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_detected_person_association)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_detected_person_association
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(spencer_detected_person_association_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spencer_detected_person_association)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spencer_detected_person_association
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(spencer_detected_person_association_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_detected_person_association)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_detected_person_association\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_detected_person_association
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_detected_person_association
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_detected_person_association/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(spencer_detected_person_association_generate_messages_py std_msgs_generate_messages_py)
endif()
