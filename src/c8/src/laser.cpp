#include <ros/ros.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <sensor_msgs/LaserScan.h>
using namespace std;

struct Laser{
    float angle;
    float distance;
};


int main(int argc, char** argv){
Laser laser[525][601];
ifstream infile;
string dir="/home/wwh/python_program/scandata/";
string fname;

 ros::init(argc, argv, "laser_scan_publisher");

 ros::NodeHandle n;
 ros::Publisher scan_pub = n.advertise<sensor_msgs::LaserScan>("scan", 50);

 unsigned int num_readings = 601;

 double laser_frequency = 40;

 double ranges[num_readings];

 double intensities[num_readings];

 int count = 0;

 ros::Rate r(5);

//generate some fake data for our laser scan

ros::Time scan_time = ros::Time::now();

//populate the LaserScan message

sensor_msgs::LaserScan scan;

scan.header.stamp = scan_time;

scan.header.frame_id = "base_link";

scan.angle_min = -2.617;

scan.angle_max = 2.617;

scan.angle_increment = 5.233 / num_readings;

scan.time_increment = (1 / laser_frequency) / (num_readings);

scan.range_min = 0.0;

scan.range_max = 20.0;

scan.ranges.resize(num_readings);

scan.intensities.resize(num_readings);
int times = 60;
while(n.ok())
// for(int times=0;times<100;times++)//525
{
    
    if(times<10) fname="00000"+to_string(times)+".txt";
    if(times>=10&&times<100) fname="0000"+to_string(times)+".txt";
    if(times>=100) fname="000"+to_string(times)+".txt";
    string filepath=dir+fname;
    const char *p=filepath.data();
    infile.open(p);
    int num=0;
    while(!infile.eof())
    {
        infile >>laser[times][num].angle>>laser[times][num].distance; 
        num++;  
    }
    // cout<<laser[times][600].angle<<"\t"<<laser[times][600].distance<<"\n"<<endl;
    infile.close();
    for(unsigned int i = 0; i < num_readings; ++i){
        scan.ranges[i] = laser[times][i].distance/100;
        //  cout<<scan.ranges[i]<<endl;
        scan.intensities[i] = 100;
    }
    scan_pub.publish(scan);
    ROS_INFO("%d",times);
    r.sleep();
    // ROS_INFO("ok\n");
    // if(times>100)break;
    times++;
    
}  

    // r.sleep();

}


