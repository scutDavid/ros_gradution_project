; Auto-generated. Do not edit!


(cl:in-package srl_laser_segmentation-msg)


;//! \htmlinclude LaserscanSegment.msg.html

(cl:defclass <LaserscanSegment> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:fixnum
    :initform 0)
   (measurement_indices
    :reader measurement_indices
    :initarg :measurement_indices
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass LaserscanSegment (<LaserscanSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserscanSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserscanSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srl_laser_segmentation-msg:<LaserscanSegment> is deprecated: use srl_laser_segmentation-msg:LaserscanSegment instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <LaserscanSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srl_laser_segmentation-msg:label-val is deprecated.  Use srl_laser_segmentation-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'measurement_indices-val :lambda-list '(m))
(cl:defmethod measurement_indices-val ((m <LaserscanSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srl_laser_segmentation-msg:measurement_indices-val is deprecated.  Use srl_laser_segmentation-msg:measurement_indices instead.")
  (measurement_indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserscanSegment>) ostream)
  "Serializes a message object of type '<LaserscanSegment>"
  (cl:let* ((signed (cl:slot-value msg 'label)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'measurement_indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'measurement_indices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserscanSegment>) istream)
  "Deserializes a message object of type '<LaserscanSegment>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'measurement_indices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'measurement_indices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserscanSegment>)))
  "Returns string type for a message object of type '<LaserscanSegment>"
  "srl_laser_segmentation/LaserscanSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserscanSegment)))
  "Returns string type for a message object of type 'LaserscanSegment"
  "srl_laser_segmentation/LaserscanSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserscanSegment>)))
  "Returns md5sum for a message object of type '<LaserscanSegment>"
  "ceb0bfb38ee913705c3016ba43e532fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserscanSegment)))
  "Returns md5sum for a message object of type 'LaserscanSegment"
  "ceb0bfb38ee913705c3016ba43e532fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserscanSegment>)))
  "Returns full string definition for message of type '<LaserscanSegment>"
  (cl:format cl:nil "# The segment label assigned to this set of laser points, usually unique per sensor_msgs/Laserscan.~%# If the LaserscanSegmentation message is used to annotate groundtruth person tracks, each label~%# corresponds to the ID of a tracked person.~%# Note that laser points which are considered as background are not part of any LaserscanSegment!~%int16       label~%~%# Indices of the measurements in the sensor_msgs/Laserscan ranges[] and intensities[] arrays~%# that are part of this segment. For example, if measurement_indices contains the values~%# 0, 1 and 2 and the value of 'label' is 16, then the first three laser measurements (usually the~%# three left-most laser points in polar coordinates) are assigned to segment 16.~%uint16[]    measurement_indices~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserscanSegment)))
  "Returns full string definition for message of type 'LaserscanSegment"
  (cl:format cl:nil "# The segment label assigned to this set of laser points, usually unique per sensor_msgs/Laserscan.~%# If the LaserscanSegmentation message is used to annotate groundtruth person tracks, each label~%# corresponds to the ID of a tracked person.~%# Note that laser points which are considered as background are not part of any LaserscanSegment!~%int16       label~%~%# Indices of the measurements in the sensor_msgs/Laserscan ranges[] and intensities[] arrays~%# that are part of this segment. For example, if measurement_indices contains the values~%# 0, 1 and 2 and the value of 'label' is 16, then the first three laser measurements (usually the~%# three left-most laser points in polar coordinates) are assigned to segment 16.~%uint16[]    measurement_indices~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserscanSegment>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'measurement_indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserscanSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserscanSegment
    (cl:cons ':label (label msg))
    (cl:cons ':measurement_indices (measurement_indices msg))
))
