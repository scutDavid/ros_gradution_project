#include <ros/ros.h>
#include <iostream>
#include <cv_bridge/cv_bridge.h>
#include<image_transport/image_transport.h>
#include <stdio.h>

#include<opencv2/core/core.hpp>
#include<opencv2/highgui/highgui.hpp>
#include<opencv2/imgproc/imgproc.hpp>
#include <opencv2/objdetect/objdetect.hpp>
using namespace std;
using namespace cv;
static const std::string Input="Input";
// 打开一张图并显示
int main(int argc,char** argv)
{
    // cout<<"begin ok"<<endl;
    // ros::init(argc,argv,"image_pub");
    // ros::NodeHandle nh;
    // image_transport::ImageTransport it(nh);
    // image_transport::Publisher pub=it.advertise("camera/image",1);
    // cv::Mat image = cv::imread("/home/wwh/qqq/src/qq/src/webwxgetmsgimg.jpg");
    // if(image.empty()){
    //     printf("open error\n");
    // }
    // sensor_msgs::ImagePtr msg= cv_bridge ::CvImage(std_msgs::Header(),"bgr8",image).toImageMsg();
    // ros::Rate r(5);
    // while(nh.ok())
    // {
    //     pub.publish(msg);
    //     ros::spinOnce();
    //     printf("send done\n");
    //     r.sleep();
    // }
    // return 0;
    cv::Mat image = imread("/home/wwh/kdev_ros/src/sec/src/p1.png", CV_LOAD_IMAGE_GRAYSCALE );
//     printf("col:%d\trow:%d",image.cols,image.rows);
    
//     Mat gx,gy;
//     Sobel(image,gx,CV_32F,1,0,1);
//     Sobel(image,gy,CV_32F,0,1,1);
//     imshow("gx",gx);
//     imshow("gy",gy);
    vector<Rect> found;
    HOGDescriptor defaultHOG;
    defaultHOG.setSVMDetector(HOGDescriptor::getDefaultPeopleDetector());
    defaultHOG.detectMultiScale(image,found,0,Size(8, 8),Size(32, 32),1.05,2,0);
    // printf("%d",found.size());
    for (int i=0;i<found.size();i++)
    {
        Rect r=found[i];
        rectangle(image,r.tl(),r.br(),Scalar(0,0,255),3);
    }
    cv::imshow("detect",image);
    waitKey(0);
    return 0;
    
}
// Mat Process(Mat &A,double sig1,double sig2,Size Ksize)
// {
// 	Mat AF,out,out1,out2;
// 	A.convertTo(AF,CV_32FC1);
// 	GaussianBlur(AF,out1,Ksize,sig1,0);
// 	GaussianBlur(AF,out2,Ksize,sig2,0);
// 	subtract(out1,out2,out);
// 	return out;
// }

// Mat getExtrema(Mat &A,Mat &B,Mat &C,int thresh)
// {
// 	Mat block;
// 	Mat extr = Mat::zeros(A.rows,A.cols,CV_32FC1);
// 	double minv,maxv;
// 	Point minLoc,maxLoc;
// 	for (int i = 1; i < A.rows-2; i++)
// 	{
// 		for (int j=1;j<A.cols-2;j++)
// 		{
// 			block.release();
// 			block.push_back(A(Range(i-1,i+2),Range(j-1,j+2)));
// 			block.push_back(B(Range(i-1,i+2),Range(j-1,j+2)));
// 			block.push_back(C(Range(i-1,i+2),Range(j-1,j+2)));
// 			minMaxLoc(block,&minv,&maxv,&minLoc,&maxLoc);
// 			if((maxLoc.x==1&&maxLoc.y==4)&&maxv>(double)thresh)
// 				extr.at<float>(i,j)=1;
// 			if((maxLoc.x==1&&maxLoc.y==4)&&minv<(double)(-thresh))
// 				extr.at<float>(i,j)=-1;
// 		}
		
// 		/* code for loop body */
// 	}
// 	return	extr;
// }
// void drawExtrema(Mat &img, Mat &extr)
// {
//     Point center;
//     int r = 2;
//     for (int i = 0; i < img.rows; i++)
//     {
//         for (int j = 0; j < img.cols; j++)
//         {
//             if (extr.at<float>(i, j) == -1)
//             {
//                 center = Point(j, i);
//                 circle(img, center, r, Scalar(0, 255, 0));
//             }
//             if (extr.at<float>(i, j) == 1)
//             {
//                 center = Point(j, i);
//                 circle(img, center, r, Scalar(0, 0, 255));
//             }
//         }
//     }

//     namedWindow("DoG");
//     imshow("DoG", img);
//     waitKey(0);
// }

// int main(int argc, char** argv)
// {
//     char file_name[] = "/home/wwh/qqq/src/qq/src/1.jpg";
//     Mat img = imread(file_name, 0);
//     Mat A, B, C, a;
//     int threshold = 3;
//     A = Process(img, 0.3, 0.4, Size(5, 5));
//     B = Process(img, 0.6, 0.7, Size(5, 5));
//     C = Process(img, 0.7, 0.8, Size(5, 5));
//     a = getExtrema(A, B, C, threshold);
//     // const char* filename = "output.txt";
//     // writeMatToFile(B, filename);
//     Mat imgB = imread(file_name,0);
//     drawExtrema(imgB, a);
//     return 0;
// }
// int main(int argc, char *argv[])
// {
//     printf("begin\n");
//     cv::Mat image = imread("/home/wwh/kdev_ros/src/sec/src/1.png", cv::IMREAD_COLOR );
//     cv::Mat templateImage = imread("/home/wwh/kdev_ros/src/sec/src/template.png", cv::IMREAD_COLOR);
//     namedWindow("DoG");
//     imshow("111", image);
    
//     int result_cols =  image.cols - templateImage.cols + 1;
//     int result_rows = image.rows - templateImage.rows + 1;

//     cv::Mat result = cv::Mat( result_cols, result_rows, CV_32FC1 );
//     cv::matchTemplate(image, templateImage, result, CV_TM_SQDIFF);

//     double minVal, maxVal;
//     cv::Point minLoc, maxLoc, matchLoc;
//     cv::minMaxLoc( result, &minVal, &maxVal, &minLoc, &maxLoc, Mat() );
//     matchLoc = minLoc;

//     cv::rectangle( image, cv::Rect(matchLoc, cv::Size(templateImage.cols, templateImage.rows) ), Scalar(0, 0, 255), 2, 8, 0 );
//     namedWindow("DoG2");
//     imshow("image", image);
//     printf("end\n");
//     return 0;
// }