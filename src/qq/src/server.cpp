# include "ros/ros.h"
#include "/home/wwh/qqq/devel/include/qq/A.h"
#include<iostream>
using namespace std;
bool add(qq::A::Request &req,
              qq::A::Response &res	)
{
    res.sum=req.A+req.B;
    ROS_INFO("request: x=%ld,y=%ld,",(long int )req.A,(long int)req.B);
    ROS_INFO("sending back response :[%ld]",(long int)res.sum);
    return true;
}

int main(int argc,char **argv)
{
    ros::init(argc,argv,"server");
    ros::NodeHandle n;

    ros::ServiceServer service =n.advertiseService("add_two_ints",add);
    cout<<service<<endl;
    ROS_INFO("Ready to add two ints.");
    ros::spin();
    return 0;
}