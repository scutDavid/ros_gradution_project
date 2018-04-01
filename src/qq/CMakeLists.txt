cmake_minimum_required(VERSION 2.8.3)
project(qq)
set( CMAKE_CXX_FLAGS "-std=c++11" )
 
set(OpenCV_DIR /opt/ros/kinetic/share/OpenCV)
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs message_generation sensor_msgs cv_bridge image_transport)
find_package(OpenCV 3 REQUIRED )
add_message_files(
  FILES
  Num.msg
 )
add_service_files(
   FILES
   A.srv
 )
generate_messages(
  DEPENDENCIES
   std_msgs
 )

catkin_package(
CATKIN_DEPENDS roscpp rospy std_msgs
CATKIN_DEPENDS message_runtime 
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
)

add_executable(talker /home/wwh/qqq/src/qq/src/talker.cpp)
target_link_libraries(talker ${catkin_LIBRARIES})
add_dependencies(talker qq_generate_messages_cpp)



add_executable(listener src/listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES})
add_dependencies(talker qq_generate_messages_cpp)

add_executable(server src/server.cpp)
target_link_libraries(server ${catkin_LIBRARIES})
add_dependencies(server qq_gencpp)

add_executable( client src/client.cpp)
target_link_libraries(client ${catkin_LIBRARIES})
add_dependencies(client qq_gencpp)

add_executable( client2 src/client2.cpp)
target_link_libraries(client2 ${catkin_LIBRARIES})
add_dependencies(client2 qq_gencpp)


add_executable(DoG src/DoG.cpp)
target_link_libraries(DoG ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
add_dependencies(DoG qq_generate_messages_cpp)