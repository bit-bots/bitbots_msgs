cmake_minimum_required(VERSION 2.8.3)
project(bitbots_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  message_generation
  geometry_msgs
  std_msgs
  sensor_msgs
)

add_message_files(
  FILES
  ColorSpace.msg
  Config.msg
  CpuMessage.msg
  FootPressure.msg
  JointCommand.msg
  JointTorque.msg
  WalkCommand.msg
)

add_service_files(
   FILES
   ManualPenalize.srv
)


generate_messages(
  DEPENDENCIES
  geometry_msgs
  std_msgs
  sensor_msgs
)

catkin_package(
  CATKIN_DEPENDS roscpp geometry_msgs std_msgs sensor_msgs
)
