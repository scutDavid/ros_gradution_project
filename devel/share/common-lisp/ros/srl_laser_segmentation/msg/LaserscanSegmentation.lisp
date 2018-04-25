; Auto-generated. Do not edit!


(cl:in-package srl_laser_segmentation-msg)


;//! \htmlinclude LaserscanSegmentation.msg.html

(cl:defclass <LaserscanSegmentation> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector srl_laser_segmentation-msg:LaserscanSegment)
   :initform (cl:make-array 0 :element-type 'srl_laser_segmentation-msg:LaserscanSegment :initial-element (cl:make-instance 'srl_laser_segmentation-msg:LaserscanSegment))))
)

(cl:defclass LaserscanSegmentation (<LaserscanSegmentation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserscanSegmentation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserscanSegmentation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srl_laser_segmentation-msg:<LaserscanSegmentation> is deprecated: use srl_laser_segmentation-msg:LaserscanSegmentation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaserscanSegmentation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srl_laser_segmentation-msg:header-val is deprecated.  Use srl_laser_segmentation-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <LaserscanSegmentation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srl_laser_segmentation-msg:segments-val is deprecated.  Use srl_laser_segmentation-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserscanSegmentation>) ostream)
  "Serializes a message object of type '<LaserscanSegmentation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserscanSegmentation>) istream)
  "Deserializes a message object of type '<LaserscanSegmentation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'srl_laser_segmentation-msg:LaserscanSegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserscanSegmentation>)))
  "Returns string type for a message object of type '<LaserscanSegmentation>"
  "srl_laser_segmentation/LaserscanSegmentation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserscanSegmentation)))
  "Returns string type for a message object of type 'LaserscanSegmentation"
  "srl_laser_segmentation/LaserscanSegmentation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserscanSegmentation>)))
  "Returns md5sum for a message object of type '<LaserscanSegmentation>"
  "4220e7e74ca923add2cd78d176946e12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserscanSegmentation)))
  "Returns md5sum for a message object of type 'LaserscanSegmentation"
  "4220e7e74ca923add2cd78d176946e12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserscanSegmentation>)))
  "Returns full string definition for message of type '<LaserscanSegmentation>"
  (cl:format cl:nil "# A LaserscanSegmentation divides the points of a sensor_msgs/Laserscan into segments of (usually neighbouring)~%# points. Each segment is assigned a label, which uniquely identifies the segment. Laserscan points that~%# are considered as scene background are not part of any segment.~%# LaserscanSegmentation messages can be used as an input to a classifier such as a person detector, or for annotating~%# sensor_msgs/Laserscan messages with groundtruth person tracks (in that case, a segment's label denotes a person track ID,~%# that is used consistently across multiple frames).~%~%# Standard message header~%# The timestamp of this header must be equal to the timestamp of the corresponding Laserscan message,~%# and can thus be used for synchronization of Laserscan and LaserscanSegmentation messages.~%std_msgs/Header     header~%~%# All segments of interest of the current laser scan. Anything that is not part of a LaserscanSegment is~%# implicitly defined as scene background. ~%LaserscanSegment[]  segments~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: srl_laser_segmentation/LaserscanSegment~%# The segment label assigned to this set of laser points, usually unique per sensor_msgs/Laserscan.~%# If the LaserscanSegmentation message is used to annotate groundtruth person tracks, each label~%# corresponds to the ID of a tracked person.~%# Note that laser points which are considered as background are not part of any LaserscanSegment!~%int16       label~%~%# Indices of the measurements in the sensor_msgs/Laserscan ranges[] and intensities[] arrays~%# that are part of this segment. For example, if measurement_indices contains the values~%# 0, 1 and 2 and the value of 'label' is 16, then the first three laser measurements (usually the~%# three left-most laser points in polar coordinates) are assigned to segment 16.~%uint16[]    measurement_indices~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserscanSegmentation)))
  "Returns full string definition for message of type 'LaserscanSegmentation"
  (cl:format cl:nil "# A LaserscanSegmentation divides the points of a sensor_msgs/Laserscan into segments of (usually neighbouring)~%# points. Each segment is assigned a label, which uniquely identifies the segment. Laserscan points that~%# are considered as scene background are not part of any segment.~%# LaserscanSegmentation messages can be used as an input to a classifier such as a person detector, or for annotating~%# sensor_msgs/Laserscan messages with groundtruth person tracks (in that case, a segment's label denotes a person track ID,~%# that is used consistently across multiple frames).~%~%# Standard message header~%# The timestamp of this header must be equal to the timestamp of the corresponding Laserscan message,~%# and can thus be used for synchronization of Laserscan and LaserscanSegmentation messages.~%std_msgs/Header     header~%~%# All segments of interest of the current laser scan. Anything that is not part of a LaserscanSegment is~%# implicitly defined as scene background. ~%LaserscanSegment[]  segments~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: srl_laser_segmentation/LaserscanSegment~%# The segment label assigned to this set of laser points, usually unique per sensor_msgs/Laserscan.~%# If the LaserscanSegmentation message is used to annotate groundtruth person tracks, each label~%# corresponds to the ID of a tracked person.~%# Note that laser points which are considered as background are not part of any LaserscanSegment!~%int16       label~%~%# Indices of the measurements in the sensor_msgs/Laserscan ranges[] and intensities[] arrays~%# that are part of this segment. For example, if measurement_indices contains the values~%# 0, 1 and 2 and the value of 'label' is 16, then the first three laser measurements (usually the~%# three left-most laser points in polar coordinates) are assigned to segment 16.~%uint16[]    measurement_indices~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserscanSegmentation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserscanSegmentation>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserscanSegmentation
    (cl:cons ':header (header msg))
    (cl:cons ':segments (segments msg))
))
