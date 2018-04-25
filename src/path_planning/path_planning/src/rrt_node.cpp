#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/Point.h>
#include <path_planning/rrt.h>
#include <path_planning/obstacles.h>
#include <iostream>
#include <cmath>
#include <math.h>
#include <stdlib.h>
#include <unistd.h>
#include <vector>
#include <time.h>

#define success false
#define running true

using namespace rrt;
using namespace std;
bool status = running;

void initializeMarkers(visualization_msgs::Marker &sourcePoint,
    visualization_msgs::Marker &goalPoint,
    visualization_msgs::Marker &randomPoint,
    visualization_msgs::Marker &rrtTreeMarker,
    visualization_msgs::Marker &originpath,
    visualization_msgs::Marker &finalPath)
{
    //init headers
	sourcePoint.header.frame_id    = goalPoint.header.frame_id    = randomPoint.header.frame_id    = rrtTreeMarker.header.frame_id    = originpath.header.frame_id    = finalPath.header.frame_id    = "path_planner";
	sourcePoint.header.stamp       = goalPoint.header.stamp       = randomPoint.header.stamp       = rrtTreeMarker.header.stamp       = originpath.header.stamp       = finalPath.header.stamp       = ros::Time::now();
	sourcePoint.ns                 = goalPoint.ns                 = randomPoint.ns                 = rrtTreeMarker.ns                 = originpath.ns                 = finalPath.ns               = "path_planner";
	sourcePoint.action             = goalPoint.action             = randomPoint.action             = rrtTreeMarker.action             = originpath.action             = finalPath.action              = visualization_msgs::Marker::ADD;
	sourcePoint.pose.orientation.w = goalPoint.pose.orientation.w = randomPoint.pose.orientation.w = rrtTreeMarker.pose.orientation.w = originpath.pose.orientation.w = finalPath.pose.orientation.w = 1.0;

    //setting id for each marker
    sourcePoint.id    = 0;
	goalPoint.id      = 1;
	randomPoint.id    = 2;
	rrtTreeMarker.id  = 3;
    originpath.id     = 5;
    finalPath.id      = 4;

	//defining types
	rrtTreeMarker.type                                    = visualization_msgs::Marker::LINE_LIST;
	originpath.type                                       = visualization_msgs::Marker::LINE_STRIP;
	finalPath.type                                        = visualization_msgs::Marker::LINE_STRIP;
	sourcePoint.type  = goalPoint.type = randomPoint.type = visualization_msgs::Marker::SPHERE;

	//setting scale
	rrtTreeMarker.scale.x = 0.2;
	originpath.scale.x     = 0.6;
	finalPath.scale.x     = 1;
	sourcePoint.scale.x   = goalPoint.scale.x = randomPoint.scale.x = 2;
    sourcePoint.scale.y   = goalPoint.scale.y = randomPoint.scale.y = 2;
    sourcePoint.scale.z   = goalPoint.scale.z = randomPoint.scale.z = 1;

    //assigning colors
	sourcePoint.color.r   = 1.0f;
	goalPoint.color.g     = 1.0f;
    randomPoint.color.b   = 1.0f;

	rrtTreeMarker.color.r = 0.8f;
	rrtTreeMarker.color.g = 0.4f;

	originpath.color.r = 0.5f;
	originpath.color.g = 0.5f;
	originpath.color.b = 1.0f;

	finalPath.color.r = 0.9f;
	finalPath.color.g = 0.9f;
	finalPath.color.b = 1.0f;

	sourcePoint.color.a = goalPoint.color.a = randomPoint.color.a = rrtTreeMarker.color.a = originpath.color.a =finalPath.color.a= 1.0f;
}

vector< vector<geometry_msgs::Point> > getObstacles()
{
    obstacles obst;
    return obst.getObstacleArray();
}

void addBranchtoRRTTree(visualization_msgs::Marker &rrtTreeMarker, RRT::rrtNode &tempNode, RRT &myRRT)
{

geometry_msgs::Point point;

point.x = tempNode.posX;
point.y = tempNode.posY;
point.z = 0;
rrtTreeMarker.points.push_back(point);

RRT::rrtNode parentNode = myRRT.getParent(tempNode.nodeID);

point.x = parentNode.posX;
point.y = parentNode.posY;
point.z = 0;

rrtTreeMarker.points.push_back(point);
}

bool checkIfInsideBoundary(RRT::rrtNode &tempNode)
{
    if(tempNode.posX < 0 || tempNode.posY < 0  || tempNode.posX > 100 || tempNode.posY > 100 ) return false;
    else return true;
}

// bool checkIfOutsideObstacles(vector< vector<geometry_msgs::Point> > &obstArray, RRT::rrtNode &tempNode)
// {
//     bool result=true;
//     for(int i=0;i<obstArray.size();i++)
//     {
//         for(int j=0;j<obstArray[i].size();j++)
//         {
//             double slope=(obstArray[i][j+1].y-obstArray[i][j].y)/(obstArray[i][j+1].x-obstArray[i][j].x);
//             bool cond1=(obstArray[i][j].x<=tempNode.posX)&&(tempNode.posX<obstArray[i][j+1].x);
//             bool cond2=(obstArray[i][j+1].x<=tempNode.posX)&&(tempNode.posX<obstArray[i][j].x);
//             bool above=(tempNode.posY<slope*(tempNode.posX-obstArray[i][j].x)+obstArray[i][j].y);
//             if((cond1||cond2)&&above) result= !result;               
//         }        
//         return result;    
//     }
    
// }

bool checkIfOutsideObstacles(vector< vector<geometry_msgs::Point> > &obstArray, RRT::rrtNode &tempNode)
{
    int i, j, c = 1;

        for (i = 0, j = obstArray[0].size()-1; i < obstArray[0].size(); j = i++) 
        {
            if ( ((obstArray[0][i].y>tempNode.posY) != (obstArray[0][j].y>tempNode.posY)) &&
                (tempNode.posX < (obstArray[0][j].x-obstArray[0][j].x) * (tempNode.posY-obstArray[0][i].y) / (obstArray[0][j].y-obstArray[0][i].y) + obstArray[0][i].x) )
                c = !c;
        }    
    return c;
}
// bool checkIfOutsideObstacles(vector< vector<geometry_msgs::Point> > &obstArray, RRT::rrtNode &tempNode)
// {
//     double AB, AD, AMAB, AMAD;

//     for(int i=0; i<obstArray.size(); i++)
//     {
//         AB = (pow(obstArray[i][0].x - obstArray[i][1].x,2) + pow(obstArray[i][0].y - obstArray[i][1].y,2));
//         AD = (pow(obstArray[i][0].x - obstArray[i][3].x,2) + pow(obstArray[i][0].y - obstArray[i][3].y,2));
//         AMAB = (((tempNode.posX - obstArray[i][0].x) * (obstArray[i][1].x - obstArray[i][0].x)) + (( tempNode.posY - obstArray[i][0].y) * (obstArray[i][1].y - obstArray[i][0].y)));
//         AMAD = (((tempNode.posX - obstArray[i][0].x) * (obstArray[i][3].x - obstArray[i][0].x)) + (( tempNode.posY - obstArray[i][0].y) * (obstArray[i][3].y - obstArray[i][0].y)));
//          //(0<AM⋅AB<AB⋅AB)∧(0<AM⋅AD<AD⋅AD)
//         if((0 < AMAB) && (AMAB < AB) && (0 < AMAD) && (AMAD < AD))
//         {
//             return false;
//         }
//     }
//     return true;
// }

bool isEdgefree(vector< vector<geometry_msgs::Point> > &obstArray, RRT::rrtNode &startNode,RRT::rrtNode &endNode)
{
    RRT::rrtNode tempNode;
    double theta = atan2(endNode.posY - startNode.posY,endNode.posX - startNode.posX);
    double distance = sqrt(pow(endNode.posX - startNode.posX,2)+pow(endNode.posY - startNode.posY,2))/50;
    tempNode.posX=startNode.posX;
    tempNode.posY=startNode.posY;
    for(int i=1;i<51;i++)
    {
        tempNode.posX = tempNode.posX + (distance * cos(theta));
        tempNode.posY = tempNode.posY + (distance * sin(theta));
        if(!checkIfOutsideObstacles(obstArray,tempNode))
            return false; 
    }
    return true;
    
}

void generateTempPoint(RRT::rrtNode &tempNode,int goalX, int goalY)
{
    float p=rand()/double(RAND_MAX);
    // cout<<p<<endl;
    if(p<0.3)
    {
        tempNode.posX = goalX;
        tempNode.posY = goalY;
    }
    else 
    {
        tempNode.posX = rand() % 150 + 1;
        tempNode.posY = rand() % 150 + 1;
    }
    // std::cout<<"Random X: "<<tempNode.posX <<endl<<"Random Y: "<<tempNode.posY<<endl;
}

bool addNewPointtoRRT(RRT &myRRT, RRT::rrtNode &tempNode, int rrtStepSize, vector< vector<geometry_msgs::Point> > &obstArray)
{
    int nearestNodeID = myRRT.getNearestNodeID(tempNode.posX,tempNode.posY);

    RRT::rrtNode nearestNode = myRRT.getNode(nearestNodeID);

    double theta = atan2(tempNode.posY - nearestNode.posY,tempNode.posX - nearestNode.posX);

    tempNode.posX = nearestNode.posX + (rrtStepSize * cos(theta));
    tempNode.posY = nearestNode.posY + (rrtStepSize * sin(theta));

    // if(checkIfInsideBoundary(tempNode) && checkIfOutsideObstacles(obstArray,tempNode))
    if(isEdgefree(obstArray, nearestNode,tempNode))
    {
        tempNode.parentID = nearestNodeID;
        tempNode.nodeID = myRRT.getTreeSize();
        myRRT.addNewNode(tempNode);
        return true;
    }
    else
        return false;
}

bool checkNodetoGoal(int X, int Y, RRT::rrtNode &tempNode)
{
    double distance = sqrt(pow(X-tempNode.posX,2)+pow(Y-tempNode.posY,2));
    if(distance < 3)
    {
        return true;
    }
    return false;
}

void setFinalPathData(vector< vector<int> > &rrtPaths, RRT &myRRT, int i, visualization_msgs::Marker &originpath,visualization_msgs::Marker &finalpath, int goalX, int goalY,vector< vector<geometry_msgs::Point> > &obstArray)
{
    RRT::rrtNode tempNode;
    RRT::rrtNode startNode;
    RRT::rrtNode endNode;
    int currentIndex=0;
    int currentsmoothIndex=rrtPaths[i].size()-1;
    // cout<<"currentsmoothIndex_first=  "<<currentsmoothIndex<<endl;
    geometry_msgs::Point point;
    startNode=myRRT.getNode(0);
    point.x=startNode.posX;
    point.y=startNode.posY;
    finalpath.points.push_back(point);
    // cout<<originpath.points[0].x<<'\t'<<originpath.points[0].y<<endl;
    for(int j=0; j<rrtPaths[i].size();j++)
    {
        tempNode = myRRT.getNode(rrtPaths[i][j]);
        // cout<<rrtPaths[i][j]<<'\t';
        point.x = tempNode.posX;
        point.y = tempNode.posY;
        point.z = 0;
        originpath.points.push_back(point);
        cout<<originpath.points[j].x<<'\t'<<originpath.points[j].y<<endl;
    }
    
    while(currentIndex<rrtPaths[i].size()-1)
    {
        // cout<<"0000000000000000000000000"<<endl;
        while( currentIndex<currentsmoothIndex)
        {
            // cout<<"1111111111111111111111111"<<endl;
            // cout<<"currentsmoothIndex=  "<<currentsmoothIndex<<'\t'<<"currentIndex=  "<<currentIndex<<endl;
            startNode=myRRT.getNode(rrtPaths[i][currentIndex]);
            endNode=myRRT.getNode(rrtPaths[i][currentsmoothIndex]);
            if(isEdgefree(obstArray,startNode,endNode))
            {
                // cout<<"free sapce"<<endl;
                point.x=endNode.posX;
                point.y=endNode.posY;
                finalpath.points.push_back(point);
                currentIndex = currentsmoothIndex;
                break;
            }
            else
            {
            //    cout<<"not free space"<<endl;
               currentsmoothIndex = currentsmoothIndex - 1; 
            }
            
        }
        currentsmoothIndex=rrtPaths[i].size()-1;
    }

    point.x = goalX;
    point.y = goalY;
    finalpath.points.push_back(point);
    originpath.points.push_back(point);
}

int main(int argc,char** argv)
{
    //initializing ROS
    ros::init(argc,argv,"rrt_node");
	ros::NodeHandle n;

	//defining Publisher
	ros::Publisher rrt_publisher = n.advertise<visualization_msgs::Marker>("path_planner_rrt",1);

	//defining markers
    visualization_msgs::Marker sourcePoint;
    visualization_msgs::Marker goalPoint;
    visualization_msgs::Marker randomPoint;
    visualization_msgs::Marker rrtTreeMarker;
    visualization_msgs::Marker originpath;
    visualization_msgs::Marker finalPath;

    initializeMarkers(sourcePoint, goalPoint, randomPoint, rrtTreeMarker,originpath,finalPath);

    //setting source and goal
    sourcePoint.pose.position.x = 2;
    sourcePoint.pose.position.y = 2;

    goalPoint.pose.position.x = 95;
    goalPoint.pose.position.y = 95;

    rrt_publisher.publish(sourcePoint);
    rrt_publisher.publish(goalPoint);
    ros::spinOnce();
    ros::Duration(0.01).sleep();

    srand (time(NULL));
    //initialize rrt specific variables

    //initializing rrtTree
    RRT myRRT(2.0,2.0);
    int goalX, goalY;
    goalX = goalY = 95;

    int rrtStepSize = 3;

    vector< vector<int> > rrtPaths;
    vector<int> path;
    int rrtPathLimit = 1;

    int shortestPathLength = 9999;
    int shortestPath = 0;

    RRT::rrtNode tempNode;
    

    vector< vector<geometry_msgs::Point> >  obstacleList = getObstacles();

    bool addNodeResult = false, nodeToGoal = false;
    
    while(ros::ok() && status)
    {
        if(rrtPaths.size() < rrtPathLimit)
        {
            generateTempPoint(tempNode,goalX,goalY);
            //std::cout<<"tempnode generated"<<endl;
            addNodeResult = addNewPointtoRRT(myRRT,tempNode,rrtStepSize,obstacleList);
            if(addNodeResult)
            {
               // std::cout<<"tempnode accepted"<<endl;
                addBranchtoRRTTree(rrtTreeMarker,tempNode,myRRT);
               // std::cout<<"tempnode printed"<<endl;
                nodeToGoal = checkNodetoGoal(goalX, goalY,tempNode);
                if(nodeToGoal)
                {
                    path = myRRT.getRootToEndPath(tempNode.nodeID);
                    rrtPaths.push_back(path);
                    std::cout<<"New Path Found. Total paths "<<rrtPaths.size()<<endl;
                    //ros::Duration(10).sleep();
                    //std::cout<<"got Root Path"<<endl;
                }
            }
        }
        else //if(rrtPaths.size() >= rrtPathLimit)
        {
            status = success;
            std::cout<<"Finding Optimal Path"<<endl;
            cout<<"rrtPath.size "<<rrtPaths.size()<<endl;
            for(int i=0; i<rrtPaths.size();i++)
            {
                if(rrtPaths[i].size() < shortestPath)
                {
                    cout<<rrtPaths[i].size()<<"  I don't believe  "<<shortestPath<<endl;
                }
                if(rrtPaths[i].size() < shortestPath)
                {
                    shortestPath = i;
                    shortestPathLength = rrtPaths[i].size();
                }
            }            
            setFinalPathData(rrtPaths, myRRT, shortestPath, originpath,finalPath, goalX, goalY,obstacleList);
            rrt_publisher.publish(originpath);
        }
        
        
        rrt_publisher.publish(sourcePoint);
        rrt_publisher.publish(goalPoint);
        rrt_publisher.publish(rrtTreeMarker);        
        rrt_publisher.publish(finalPath);
        ros::spinOnce();
        ros::Duration(0.01).sleep();
    }
	return 1;
}
