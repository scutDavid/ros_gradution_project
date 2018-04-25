; Auto-generated. Do not edit!


(cl:in-package spencer_bagfile_tools-msg)


;//! \htmlinclude AdditionalOdometryData.msg.html

(cl:defclass <AdditionalOdometryData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hardwareTimestamp
    :reader hardwareTimestamp
    :initarg :hardwareTimestamp
    :type cl:integer
    :initform 0)
   (totalDistance
    :reader totalDistance
    :initarg :totalDistance
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (ticksLeft
    :reader ticksLeft
    :initarg :ticksLeft
    :type cl:integer
    :initform 0)
   (ticksRight
    :reader ticksRight
    :initarg :ticksRight
    :type cl:integer
    :initform 0)
   (calibOverallMultiplier
    :reader calibOverallMultiplier
    :initarg :calibOverallMultiplier
    :type cl:float
    :initform 0.0)
   (calibLeftEncMultiplier
    :reader calibLeftEncMultiplier
    :initarg :calibLeftEncMultiplier
    :type cl:float
    :initform 0.0))
)

(cl:defclass AdditionalOdometryData (<AdditionalOdometryData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdditionalOdometryData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdditionalOdometryData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_bagfile_tools-msg:<AdditionalOdometryData> is deprecated: use spencer_bagfile_tools-msg:AdditionalOdometryData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AdditionalOdometryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_bagfile_tools-msg:header-val is deprecated.  Use spencer_bagfile_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hardwareTimestamp-val :lambda-list '(m))
(cl:defmethod hardwareTimestamp-val ((m <AdditionalOdometryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_bagfile_tools-msg:hardwareTimestamp-val is deprecated.  Use spencer_bagfile_tools-msg:hardwareTimestamp instead.")
  (hardwareTimestamp m))

(cl:ensure-generic-function 'totalDistance-val :lambda-list '(m))
(cl:defmethod totalDistance-val ((m <AdditionalOdometryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_bagfile_tools-msg:totalDistance-val is deprecated.  Use spencer_bagfile_tools-msg:totalDistance instead.")
  (totalDistance m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <AdditionalOdometryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_bagfile_tools-msg:theta-val is deprecated.  Use spencer_bagfile_tools-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'ticksLeft-val :lambda-list '(m))
(cl:defmethod ticksLeft-val ((m <AdditionalOdometryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_bagfile_tools-msg:ticksLeft-val is deprecated.  Use spencer_bagfile_tools-msg:ticksLeft instead.")
  (ticksLeft m))

(cl:ensure-generic-function 'ticksRight-val :lambda-list '(m))
(cl:defmethod ticksRight-val ((m <AdditionalOdometryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_bagfile_tools-msg:ticksRight-val is deprecated.  Use spencer_bagfile_tools-msg:ticksRight instead.")
  (ticksRight m))

(cl:ensure-generic-function 'calibOverallMultiplier-val :lambda-list '(m))
(cl:defmethod calibOverallMultiplier-val ((m <AdditionalOdometryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_bagfile_tools-msg:calibOverallMultiplier-val is deprecated.  Use spencer_bagfile_tools-msg:calibOverallMultiplier instead.")
  (calibOverallMultiplier m))

(cl:ensure-generic-function 'calibLeftEncMultiplier-val :lambda-list '(m))
(cl:defmethod calibLeftEncMultiplier-val ((m <AdditionalOdometryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_bagfile_tools-msg:calibLeftEncMultiplier-val is deprecated.  Use spencer_bagfile_tools-msg:calibLeftEncMultiplier instead.")
  (calibLeftEncMultiplier m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdditionalOdometryData>) ostream)
  "Serializes a message object of type '<AdditionalOdometryData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hardwareTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hardwareTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'hardwareTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'hardwareTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'hardwareTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'hardwareTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'hardwareTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'hardwareTimestamp)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'totalDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'ticksLeft)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ticksRight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'calibOverallMultiplier))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'calibLeftEncMultiplier))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdditionalOdometryData>) istream)
  "Deserializes a message object of type '<AdditionalOdometryData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hardwareTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hardwareTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'hardwareTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'hardwareTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'hardwareTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'hardwareTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'hardwareTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'hardwareTimestamp)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'totalDistance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ticksLeft) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ticksRight) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'calibOverallMultiplier) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'calibLeftEncMultiplier) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdditionalOdometryData>)))
  "Returns string type for a message object of type '<AdditionalOdometryData>"
  "spencer_bagfile_tools/AdditionalOdometryData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdditionalOdometryData)))
  "Returns string type for a message object of type 'AdditionalOdometryData"
  "spencer_bagfile_tools/AdditionalOdometryData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdditionalOdometryData>)))
  "Returns md5sum for a message object of type '<AdditionalOdometryData>"
  "ab677b3c60eb604fa8c19025b90f80c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdditionalOdometryData)))
  "Returns md5sum for a message object of type 'AdditionalOdometryData"
  "ab677b3c60eb604fa8c19025b90f80c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdditionalOdometryData>)))
  "Returns full string definition for message of type '<AdditionalOdometryData>"
  (cl:format cl:nil "Header header # message header~%~%uint64 hardwareTimestamp # milliseconds in hardware time since power-on~%~%float64 totalDistance # total absolute distance travelled so far (i.e. 10m forward, 10m backward => 20m)~%float64 theta # current theta angle in radians~%~%int64 ticksLeft # raw ticks of left encoder~%int64 ticksRight # raw ticks of right encoder~%~%float64 calibOverallMultiplier # calibration factor applied to both encoders' raw ticks~%float64 calibLeftEncMultiplier # calibration factor applied to only the left encoders' raw ticks, in addition to calibOverallMultiplier~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdditionalOdometryData)))
  "Returns full string definition for message of type 'AdditionalOdometryData"
  (cl:format cl:nil "Header header # message header~%~%uint64 hardwareTimestamp # milliseconds in hardware time since power-on~%~%float64 totalDistance # total absolute distance travelled so far (i.e. 10m forward, 10m backward => 20m)~%float64 theta # current theta angle in radians~%~%int64 ticksLeft # raw ticks of left encoder~%int64 ticksRight # raw ticks of right encoder~%~%float64 calibOverallMultiplier # calibration factor applied to both encoders' raw ticks~%float64 calibLeftEncMultiplier # calibration factor applied to only the left encoders' raw ticks, in addition to calibOverallMultiplier~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdditionalOdometryData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdditionalOdometryData>))
  "Converts a ROS message object to a list"
  (cl:list 'AdditionalOdometryData
    (cl:cons ':header (header msg))
    (cl:cons ':hardwareTimestamp (hardwareTimestamp msg))
    (cl:cons ':totalDistance (totalDistance msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':ticksLeft (ticksLeft msg))
    (cl:cons ':ticksRight (ticksRight msg))
    (cl:cons ':calibOverallMultiplier (calibOverallMultiplier msg))
    (cl:cons ':calibLeftEncMultiplier (calibLeftEncMultiplier msg))
))
