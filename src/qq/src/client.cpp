#include "ros/ros.h"
#include "/home/wwh/qqq/devel/include/qq/A.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "client");
  if (argc != 3)
  {
    ROS_INFO("usage: add_two_ints_client X Y");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<qq::A>("add_two_ints");
  qq::A srv;
  srv.request.A = atoll(argv[1]);
  srv.request.B = atoll(argv[2]);
  if (client.call(srv))
  {
    ROS_INFO("Sum1: %ld", (long int)srv.response.sum);
  }
  else
  {
    ROS_ERROR("Failed to call service add_two_ints");
    return 1;
  }

  return 0;
}