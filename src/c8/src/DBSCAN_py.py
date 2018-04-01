#!/usr/bin/env python3
# -*- coding: utf-8 -*-

### care that the begin index is 0!!! which is different from it in the matlab
import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import math
from sklearn.cluster import DBSCAN
import time
#include <sensor_msgs/LaserScan.h>
from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import LaserEcho
# from Num.msg import *
import rospy
a=np.linspace(-60,60,num=241)
a=np.reshape(a,(241,1))
# b=np.zeros((241,1))
aa=np.zeros((241,2))
laser=np.zeros((241,2))

recevie_flag=0

def callback(data):
    # rospy.loginfo('I heared %s',data.ranges)
    rospy.loginfo('I haved heared ')
    # start = time.time()
    b=np.asarray(data.ranges)
    b=b[180:421]
    temp_tuple=[]
    cluster_range=np.zeros((8,4))
    # print(b.shape)
    global aa
    aa=np.c_[a,b]
    for i in range (0,240):
        if aa[i,1]>2000:
            aa[i,1]=0
        laser[i,0]=aa[i,1]*math.cos((aa[i,0]+90)/180*math.pi)
        laser[i,1]=aa[i,1]*math.sin((aa[i,0]+90)/180*math.pi)
    # test()
    db=DBSCAN(eps=0.2,min_samples=12).fit(laser)
    core_samples_mask = np.zeros_like(db.labels_, dtype=bool)
    core_samples_mask[db.core_sample_indices_] = True
    clusterLables= db.labels_
    uniqueClusterLables=set(clusterLables)
    print("cluster centers to send:\n")
    for i,cluster in enumerate(uniqueClusterLables):
        clusterindex=(clusterLables==cluster)
        coreSamples=laser[clusterindex&core_samples_mask]
        if coreSamples.shape[0]>10:
            temp=np.sort(coreSamples,axis=0)
            if (temp[-1,0]-temp[0,0])<0.5 and (temp[-1,1]-temp[0,1])<0.5 and(temp[-1,0]-temp[0,0])>0:
                cluster_range[i,:]=[temp[0,0],temp[-1,0],temp[0,1],temp[-1,1]]
                print(i,cluster_range[i,:])
    for i in range(0,8):            
        temp_tuple.append(cluster_range[i,0])           
        temp_tuple.append(cluster_range[i,1])
        temp_tuple.append(cluster_range[i,2])           
        temp_tuple.append(cluster_range[i,3])
    # end = time.time()  
    # print(str(end-start))
    pub.publish(temp_tuple) 

def listener():
    rospy.init_node('listener',anonymous=True)
    rospy.Subscriber('scan',LaserScan,callback,queue_size=1)
    rospy.spin()

    
if __name__=='__main__':
    print('begin\n')
    pub=rospy.Publisher('chatter',LaserEcho,queue_size=10)
    listener()
    # rospy.spin()

# for i in range (1,241):
#         if aa[i,1]>2000:
#             aa[i,1]=0
#         aa[i,1]=aa[i,1]/100
#         laser[i,0]=aa[i,1]*math.cos((aa[i,0]+90)/180*math.pi)
#         laser[i,1]=aa[i,1]*math.sin((aa[i,0]+90)/180*math.pi)
#     plt.figure(figsize=(15,15))
#     plt.scatter(laser[:,0],laser[:,1],marker='x',color='g',label='1',s=15)
#     plt.show()

#     db=DBSCAN(eps=0.2,min_samples=12).fit(laser)
#     core_samples_mask = np.zeros_like(db.labels_, dtype=bool)
#     core_samples_mask[db.core_sample_indices_] = True
#     clusterLables= db.labels_
#     uniqueClusterLables=set(clusterLables)

#     n_clusters_ = len(set(uniqueClusterLables)) - (-1 in clusterLables)
#     colors=['red','green','blue','black','gray','0#ff00ff','#ffff00']
#     markers=['v','o','^','x','h','d']
#     plt.figure(figsize=(15,15))
#     #设置坐标轴范围
#     #plt.xlim((-0.3, 1.5))
#     #plt.ylim((0, 1.5))
#     #设置坐标轴名称
#     #plt.xlabel('xxxxxxxxxxx')
#     #plt.ylabel('yyyyyyyyyyy') 
#     for i,cluster in enumerate(uniqueClusterLables):
#         clusterindex=(clusterLables==cluster)
#         coreSamples=laser[clusterindex&core_samples_mask]
#         if coreSamples.shape[0]>5:
#             temp=coreSamples[:,::-1].T
#             coreSamples=coreSamples[np.lexsort(temp)]
#             coreSamples=coreSamples[1:-2]
            
#             temp=coreSamples.T
#             coreSamples=coreSamples[np.lexsort(temp)]
#             coreSamples=coreSamples[1:-2]        
#             temp=np.sort(coreSamples,axis=0)
#             if (temp[-1,0]-temp[0,0])<0.5 and (temp[-1,1]-temp[0,1])<0.5:
#                 cluster_center=np.mean(coreSamples,axis=0)
#                 # print(colors[i],temp[-1,0]-temp[0,0],(temp[-1,1]-temp[0,1] ),cluster_center)
#                 plt.scatter(coreSamples[:,0],coreSamples[:,1],c=colors[i],marker=markers[i],s=20)
#                 plt.scatter(cluster_center[0],cluster_center[1],c=colors[i],marker='+',s=120)
                

#     plt.show()



# #获取目标文件夹的路径
# #filedir ='/home/wwh/python_program/scandata'
# #获取当前文件夹中的文件名称列表  
# #filenames=os.listdir(filedir)
# #打开当前目录下的result.txt文件，如果没有则创建
# a=np.loadtxt('/home/wwh/python_program/scandata/000250.txt') 
# a=a[180:421,:]
# laser=np.zeros((241,2))
# for i in range (1,241):
#     if a[i,1]>2000:
#         a[i,1]=0
#     a[i,1]=a[i,1]/100
#     laser[i,0]=a[i,1]*math.cos((a[i,0]+90)/180*math.pi)
#     laser[i,1]=a[i,1]*math.sin((a[i,0]+90)/180*math.pi)
# plt.figure(figsize=(15,15))
# plt.scatter(laser[:,0],laser[:,1],marker='x',color='g',label='1',s=15)

 
# db=DBSCAN(eps=0.2,min_samples=12).fit(laser)
# core_samples_mask = np.zeros_like(db.labels_, dtype=bool)
# core_samples_mask[db.core_sample_indices_] = True
# clusterLables= db.labels_
# uniqueClusterLables=set(clusterLables)
# #print(labels)
# # Number of clusters in labels, ignoring noise if present.
# n_clusters_ = len(set(uniqueClusterLables)) - (-1 in clusterLables)
# colors=['red','green','blue','black','gray','0#ff00ff','#ffff00']
# markers=['v','o','^','x','h','d']
# plt.figure(figsize=(15,15))
# #设置坐标轴范围
# #plt.xlim((-0.3, 1.5))
# #plt.ylim((0, 1.5))
# #设置坐标轴名称
# #plt.xlabel('xxxxxxxxxxx')
# #plt.ylabel('yyyyyyyyyyy') 
# for i,cluster in enumerate(uniqueClusterLables):
#     clusterindex=(clusterLables==cluster)
#     coreSamples=laser[clusterindex&core_samples_mask]
#     if coreSamples.shape[0]>5:
#         temp=coreSamples[:,::-1].T
#         coreSamples=coreSamples[np.lexsort(temp)]
#         coreSamples=coreSamples[1:-2]
        
#         temp=coreSamples.T
#         coreSamples=coreSamples[np.lexsort(temp)]
#         coreSamples=coreSamples[1:-2]        
#         temp=np.sort(coreSamples,axis=0)
#         if (temp[-1,0]-temp[0,0])<0.5 and (temp[-1,1]-temp[0,1])<0.5:
#             cluster_center=np.mean(coreSamples,axis=0)
#             print(colors[i],temp[-1,0]-temp[0,0],(temp[-1,1]-temp[0,1] ),cluster_center)
#             plt.scatter(coreSamples[:,0],coreSamples[:,1],c=colors[i],marker=markers[i],s=20)
#             plt.scatter(cluster_center[0],cluster_center[1],c=colors[i],marker='+',s=120)
            
# #    plt.scatter(coreSamples[:,0],coreSamples[:,1],c=colors[i],marker=markers[i],s=20)
    
# #    noiseSamples=laser[clusterindex&~core_samples_mask]
# #    plt.scatter(noiseSamples[:,0],noiseSamples[:,1],c=colors[i],marker='*',s=10)

# plt.show()
#plt.figure(figsize=(25,25)) 
#plt.scatter(laser[:,0],laser[:,1],c=db,marker='x',color='g',label='1',s=15)
#plt.show()

