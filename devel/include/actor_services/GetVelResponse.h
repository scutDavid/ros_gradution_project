// Generated by gencpp from file actor_services/GetVelResponse.msg
// DO NOT EDIT!


#ifndef ACTOR_SERVICES_MESSAGE_GETVELRESPONSE_H
#define ACTOR_SERVICES_MESSAGE_GETVELRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace actor_services
{
template <class ContainerAllocator>
struct GetVelResponse_
{
  typedef GetVelResponse_<ContainerAllocator> Type;

  GetVelResponse_()
    : x(0.0)
    , y(0.0)
    , yaw(0.0)  {
    }
  GetVelResponse_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::actor_services::GetVelResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actor_services::GetVelResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetVelResponse_

typedef ::actor_services::GetVelResponse_<std::allocator<void> > GetVelResponse;

typedef boost::shared_ptr< ::actor_services::GetVelResponse > GetVelResponsePtr;
typedef boost::shared_ptr< ::actor_services::GetVelResponse const> GetVelResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actor_services::GetVelResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actor_services::GetVelResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace actor_services

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::actor_services::GetVelResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actor_services::GetVelResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actor_services::GetVelResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actor_services::GetVelResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actor_services::GetVelResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actor_services::GetVelResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actor_services::GetVelResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47802147045815b06859cca542c21d31";
  }

  static const char* value(const ::actor_services::GetVelResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47802147045815b0ULL;
  static const uint64_t static_value2 = 0x6859cca542c21d31ULL;
};

template<class ContainerAllocator>
struct DataType< ::actor_services::GetVelResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actor_services/GetVelResponse";
  }

  static const char* value(const ::actor_services::GetVelResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actor_services::GetVelResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n\
float32 y\n\
float32 yaw\n\
\n\
";
  }

  static const char* value(const ::actor_services::GetVelResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actor_services::GetVelResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetVelResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actor_services::GetVelResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::actor_services::GetVelResponse_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTOR_SERVICES_MESSAGE_GETVELRESPONSE_H