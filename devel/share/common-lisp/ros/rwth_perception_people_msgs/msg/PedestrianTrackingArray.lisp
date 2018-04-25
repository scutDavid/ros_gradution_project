; Auto-generated. Do not edit!


(cl:in-package rwth_perception_people_msgs-msg)


;//! \htmlinclude PedestrianTrackingArray.msg.html

(cl:defclass <PedestrianTrackingArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pedestrians
    :reader pedestrians
    :initarg :pedestrians
    :type (cl:vector rwth_perception_people_msgs-msg:PedestrianTracking)
   :initform (cl:make-array 0 :element-type 'rwth_perception_people_msgs-msg:PedestrianTracking :initial-element (cl:make-instance 'rwth_perception_people_msgs-msg:PedestrianTracking))))
)

(cl:defclass PedestrianTrackingArray (<PedestrianTrackingArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PedestrianTrackingArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PedestrianTrackingArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rwth_perception_people_msgs-msg:<PedestrianTrackingArray> is deprecated: use rwth_perception_people_msgs-msg:PedestrianTrackingArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PedestrianTrackingArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:header-val is deprecated.  Use rwth_perception_people_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pedestrians-val :lambda-list '(m))
(cl:defmethod pedestrians-val ((m <PedestrianTrackingArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:pedestrians-val is deprecated.  Use rwth_perception_people_msgs-msg:pedestrians instead.")
  (pedestrians m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PedestrianTrackingArray>) ostream)
  "Serializes a message object of type '<PedestrianTrackingArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pedestrians))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pedestrians))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PedestrianTrackingArray>) istream)
  "Deserializes a message object of type '<PedestrianTrackingArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pedestrians) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pedestrians)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rwth_perception_people_msgs-msg:PedestrianTracking))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PedestrianTrackingArray>)))
  "Returns string type for a message object of type '<PedestrianTrackingArray>"
  "rwth_perception_people_msgs/PedestrianTrackingArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PedestrianTrackingArray)))
  "Returns string type for a message object of type 'PedestrianTrackingArray"
  "rwth_perception_people_msgs/PedestrianTrackingArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PedestrianTrackingArray>)))
  "Returns md5sum for a message object of type '<PedestrianTrackingArray>"
  "a9f67479ca0db5489cca876d9f98fd50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PedestrianTrackingArray)))
  "Returns md5sum for a message object of type 'PedestrianTrackingArray"
  "a9f67479ca0db5489cca876d9f98fd50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PedestrianTrackingArray>)))
  "Returns full string definition for message of type '<PedestrianTrackingArray>"
  (cl:format cl:nil "Header header~%PedestrianTracking[] pedestrians~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rwth_perception_people_msgs/PedestrianTracking~%Header header~%# position projected on the GP in world coordinates~%float64[] traj_x ~%float64[] traj_y ~%float64[] traj_z~%# position projected on the GP in camera coordinates~%float64[] traj_x_camera ~%float64[] traj_y_camera ~%float64[] traj_z_camera ~%float64[] dir 	~%float64 speed 	~%int64 id  ~%float64 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PedestrianTrackingArray)))
  "Returns full string definition for message of type 'PedestrianTrackingArray"
  (cl:format cl:nil "Header header~%PedestrianTracking[] pedestrians~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rwth_perception_people_msgs/PedestrianTracking~%Header header~%# position projected on the GP in world coordinates~%float64[] traj_x ~%float64[] traj_y ~%float64[] traj_z~%# position projected on the GP in camera coordinates~%float64[] traj_x_camera ~%float64[] traj_y_camera ~%float64[] traj_z_camera ~%float64[] dir 	~%float64 speed 	~%int64 id  ~%float64 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PedestrianTrackingArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pedestrians) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PedestrianTrackingArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PedestrianTrackingArray
    (cl:cons ':header (header msg))
    (cl:cons ':pedestrians (pedestrians msg))
))
