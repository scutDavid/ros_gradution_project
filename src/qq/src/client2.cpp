#include "ros/ros.h"
#include "/home/wwh/qqq/devel/include/qq/A.h"
#include <cstdlib>
int main(int argc, char **argv)
{
  ros::init(argc, argv, "client2");
//   if (argc != 3)
//   {
//     ROS_INFO("usage: add_two_ints_client X Y");
//     return 1;
//   }

  ros::NodeHandle n;
  ros::ServiceClient client2 = n.serviceClient<qq::A>("add_two_ints");
  qq::A srv;
  ros::Rate loop_rate(1);
  for (int i=0;i<100;i++)
  {
    srv.request.A = i;
    srv.request.B =i+1;
    if (client2.call(srv))
    {
      ROS_INFO("Sum2: %ld", (long int)srv.response.sum);
       loop_rate.sleep();
    }
    else
    {
      ROS_ERROR("Failed to call service add_two_ints");
      return 1;
  }
  }
  

  return 0;
}
