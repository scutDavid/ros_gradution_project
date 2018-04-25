; Auto-generated. Do not edit!


(cl:in-package rwth_perception_people_msgs-msg)


;//! \htmlinclude AnnotatedFrame.msg.html

(cl:defclass <AnnotatedFrame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (annotations
    :reader annotations
    :initarg :annotations
    :type (cl:vector rwth_perception_people_msgs-msg:Annotation)
   :initform (cl:make-array 0 :element-type 'rwth_perception_people_msgs-msg:Annotation :initial-element (cl:make-instance 'rwth_perception_people_msgs-msg:Annotation))))
)

(cl:defclass AnnotatedFrame (<AnnotatedFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotatedFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotatedFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rwth_perception_people_msgs-msg:<AnnotatedFrame> is deprecated: use rwth_perception_people_msgs-msg:AnnotatedFrame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AnnotatedFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:header-val is deprecated.  Use rwth_perception_people_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <AnnotatedFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:frame-val is deprecated.  Use rwth_perception_people_msgs-msg:frame instead.")
  (frame m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <AnnotatedFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:timestamp-val is deprecated.  Use rwth_perception_people_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'annotations-val :lambda-list '(m))
(cl:defmethod annotations-val ((m <AnnotatedFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:annotations-val is deprecated.  Use rwth_perception_people_msgs-msg:annotations instead.")
  (annotations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotatedFrame>) ostream)
  "Serializes a message object of type '<AnnotatedFrame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'frame)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotatedFrame>) istream)
  "Deserializes a message object of type '<AnnotatedFrame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'annotations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'annotations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rwth_perception_people_msgs-msg:Annotation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotatedFrame>)))
  "Returns string type for a message object of type '<AnnotatedFrame>"
  "rwth_perception_people_msgs/AnnotatedFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedFrame)))
  "Returns string type for a message object of type 'AnnotatedFrame"
  "rwth_perception_people_msgs/AnnotatedFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotatedFrame>)))
  "Returns md5sum for a message object of type '<AnnotatedFrame>"
  "82b48dede9c8aa960b68e052ed5ee37e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotatedFrame)))
  "Returns md5sum for a message object of type 'AnnotatedFrame"
  "82b48dede9c8aa960b68e052ed5ee37e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotatedFrame>)))
  "Returns full string definition for message of type '<AnnotatedFrame>"
  (cl:format cl:nil "Header header~%~%# frame (image)~%int64 frame~%# time stamp~%time timestamp~%# Array of annotation boxes~%Annotation[] annotations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rwth_perception_people_msgs/Annotation~%Header header~%~%# frame id (backref)~%int64 frame~%# box id~%int64 id~%# top left x~%float64 tlx~%# top left y~%float64 tly~%# bbox width~%float64 width~%# bbox height~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotatedFrame)))
  "Returns full string definition for message of type 'AnnotatedFrame"
  (cl:format cl:nil "Header header~%~%# frame (image)~%int64 frame~%# time stamp~%time timestamp~%# Array of annotation boxes~%Annotation[] annotations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rwth_perception_people_msgs/Annotation~%Header header~%~%# frame id (backref)~%int64 frame~%# box id~%int64 id~%# top left x~%float64 tlx~%# top left y~%float64 tly~%# bbox width~%float64 width~%# bbox height~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotatedFrame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotatedFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotatedFrame
    (cl:cons ':header (header msg))
    (cl:cons ':frame (frame msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':annotations (annotations msg))
))
