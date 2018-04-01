# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qq: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iqq:/home/wwh/qqq/src/qq/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qq_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wwh/qqq/src/qq/srv/A.srv" NAME_WE)
add_custom_target(_qq_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qq" "/home/wwh/qqq/src/qq/srv/A.srv" ""
)

get_filename_component(_filename "/home/wwh/qqq/src/qq/msg/Num.msg" NAME_WE)
add_custom_target(_qq_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qq" "/home/wwh/qqq/src/qq/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(qq
  "/home/wwh/qqq/src/qq/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qq
)

### Generating Services
_generate_srv_cpp(qq
  "/home/wwh/qqq/src/qq/srv/A.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qq
)

### Generating Module File
_generate_module_cpp(qq
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qq
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qq_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qq_generate_messages qq_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/qq/srv/A.srv" NAME_WE)
add_dependencies(qq_generate_messages_cpp _qq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/qq/msg/Num.msg" NAME_WE)
add_dependencies(qq_generate_messages_cpp _qq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qq_gencpp)
add_dependencies(qq_gencpp qq_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qq_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(qq
  "/home/wwh/qqq/src/qq/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qq
)

### Generating Services
_generate_srv_eus(qq
  "/home/wwh/qqq/src/qq/srv/A.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qq
)

### Generating Module File
_generate_module_eus(qq
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qq
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(qq_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(qq_generate_messages qq_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/qq/srv/A.srv" NAME_WE)
add_dependencies(qq_generate_messages_eus _qq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/qq/msg/Num.msg" NAME_WE)
add_dependencies(qq_generate_messages_eus _qq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qq_geneus)
add_dependencies(qq_geneus qq_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qq_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(qq
  "/home/wwh/qqq/src/qq/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qq
)

### Generating Services
_generate_srv_lisp(qq
  "/home/wwh/qqq/src/qq/srv/A.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qq
)

### Generating Module File
_generate_module_lisp(qq
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qq
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qq_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qq_generate_messages qq_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/qq/srv/A.srv" NAME_WE)
add_dependencies(qq_generate_messages_lisp _qq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/qq/msg/Num.msg" NAME_WE)
add_dependencies(qq_generate_messages_lisp _qq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qq_genlisp)
add_dependencies(qq_genlisp qq_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qq_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(qq
  "/home/wwh/qqq/src/qq/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qq
)

### Generating Services
_generate_srv_nodejs(qq
  "/home/wwh/qqq/src/qq/srv/A.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qq
)

### Generating Module File
_generate_module_nodejs(qq
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qq
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(qq_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(qq_generate_messages qq_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/qq/srv/A.srv" NAME_WE)
add_dependencies(qq_generate_messages_nodejs _qq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/qq/msg/Num.msg" NAME_WE)
add_dependencies(qq_generate_messages_nodejs _qq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qq_gennodejs)
add_dependencies(qq_gennodejs qq_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qq_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(qq
  "/home/wwh/qqq/src/qq/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qq
)

### Generating Services
_generate_srv_py(qq
  "/home/wwh/qqq/src/qq/srv/A.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qq
)

### Generating Module File
_generate_module_py(qq
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qq
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qq_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qq_generate_messages qq_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wwh/qqq/src/qq/srv/A.srv" NAME_WE)
add_dependencies(qq_generate_messages_py _qq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wwh/qqq/src/qq/msg/Num.msg" NAME_WE)
add_dependencies(qq_generate_messages_py _qq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qq_genpy)
add_dependencies(qq_genpy qq_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qq_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qq
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(qq_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qq
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(qq_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qq
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(qq_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qq
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(qq_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qq)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qq\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qq
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(qq_generate_messages_py std_msgs_generate_messages_py)
endif()
