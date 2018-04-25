#include "simple_layer.h"
#include <pluginlib/class_list_macros.h>
#include <iostream>
using namespace std;

PLUGINLIB_EXPORT_CLASS(simple_layer_namespace::SimpleLayer, costmap_2d::Layer)

using costmap_2d::LETHAL_OBSTACLE;

namespace simple_layer_namespace
{

SimpleLayer::SimpleLayer() {}

void SimpleLayer::onInitialize()
{
  ros::NodeHandle nh("~/" + name_);
  window_radius_ =1;
  decay_constant_=10;
  current_ = true;
  update_ratio_=5;
  update_steps_=1;
  dsrv_ = new dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>(nh);
  dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>::CallbackType cb = boost::bind(
      &SimpleLayer::reconfigureCB, this, _1, _2);
  dsrv_->setCallback(cb);
}


void SimpleLayer::reconfigureCB(costmap_2d::GenericPluginConfig &config, uint32_t level)
{
  enabled_ = config.enabled;
}

void SimpleLayer::updateBounds(double origin_x, double origin_y, double origin_yaw, double* min_x,
                                           double* min_y, double* max_x, double* max_y)
{
  if (!enabled_)
    return;
  // cout<<"origin x  "<<origin_x<<'\t'<<origin_y<<'\t'<<origin_yaw<<endl;
  // mark_x_ = origin_x + 3*cos(origin_yaw);
  // mark_y_ = origin_y + 3*sin(origin_yaw);

  if( ++count_ % update_ratio_ == 0 ) {
  count_ %= update_steps_;
  clearing_ = mark_;
  mark_.clear();
  

  for (int cot=0;cot<4;cot++)
  {
    double temp1=cot/5;
    mark_x_ = origin_x-cot;
    mark_y_ = origin_y-cot;
    std::pair<double, double> mark(mark_x_, mark_y_);
    mark_.push_back(mark);
    *min_x = std::min(*min_x, mark_x_);
    *min_y = std::min(*min_y, mark_y_);
    *max_x = std::max(*max_x, mark_x_);
    *max_y = std::max(*max_y, mark_y_);

  }
  update_costs_ = true;
  }
  
  cout<<"mark_x  "<<mark_x_<<'\t'<<mark_y_<<endl;

  
}

void SimpleLayer::updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i,                                         int max_j)
{
  if (!enabled_)
    return;
  unsigned int mx,cx;
  unsigned int my,cy;

  
 if( update_costs_ ) {
    unsigned int mx, cx;
    unsigned int my, cy;
    // for(unsigned int i=0; i<clearing_.size(); ++i) {
    //   if( master_grid.worldToMap(clearing_[i].first, clearing_[i].second, cx, cy) ) { 
    //     for(int i=(-1)*window_radius_; i<window_radius_+1; ++i) 
    //       for(int j=(-1)*window_radius_; j<window_radius_+1; ++j) 
    //         master_grid.setCost(cx-i, cy-j, 0);
    //   }
    // }
    for(unsigned int i=0; i<mark_.size(); ++i) {
      if( master_grid.worldToMap(mark_[i].first, mark_[i].second, mx, my) ) {
        for(int i=(-1)*window_radius_; i<window_radius_+1; ++i) 
          for(int j=(-1)*window_radius_; j<window_radius_+1; ++j) 
            master_grid.setCost(mx-i, my-j, this->pedestrian_cost(mx,my,i,j));
        master_grid.setCost(mx, my, 254);
      }
    }
 
    update_costs_ = false;
 }
  // if(master_grid.worldToMap(mark_x_, mark_y_, mx, my)){
  //   master_grid.setCost(mx, my, LETHAL_OBSTACLE);
  //   std::cout<<"setcost   "<<mx<<'\t'<<my<<std::endl;
  // }
}
int  SimpleLayer::pedestrian_cost(unsigned int mx, unsigned int my, int i, int j)
{
  double d = std::sqrt(double(i*i+j*j)); 
  return int(std::exp(-0.001*decay_constant_*d*d)*(253-1)*(d <= window_radius_)); 
}
} // end namespace