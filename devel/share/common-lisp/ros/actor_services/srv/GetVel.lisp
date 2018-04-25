; Auto-generated. Do not edit!


(cl:in-package actor_services-srv)


;//! \htmlinclude GetVel-request.msg.html

(cl:defclass <GetVel-request> (roslisp-msg-protocol:ros-message)
  ((set_flag
    :reader set_flag
    :initarg :set_flag
    :type cl:boolean
    :initform cl:nil)
   (new_x
    :reader new_x
    :initarg :new_x
    :type cl:float
    :initform 0.0)
   (new_y
    :reader new_y
    :initarg :new_y
    :type cl:float
    :initform 0.0)
   (new_yaw
    :reader new_yaw
    :initarg :new_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetVel-request (<GetVel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actor_services-srv:<GetVel-request> is deprecated: use actor_services-srv:GetVel-request instead.")))

(cl:ensure-generic-function 'set_flag-val :lambda-list '(m))
(cl:defmethod set_flag-val ((m <GetVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actor_services-srv:set_flag-val is deprecated.  Use actor_services-srv:set_flag instead.")
  (set_flag m))

(cl:ensure-generic-function 'new_x-val :lambda-list '(m))
(cl:defmethod new_x-val ((m <GetVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actor_services-srv:new_x-val is deprecated.  Use actor_services-srv:new_x instead.")
  (new_x m))

(cl:ensure-generic-function 'new_y-val :lambda-list '(m))
(cl:defmethod new_y-val ((m <GetVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actor_services-srv:new_y-val is deprecated.  Use actor_services-srv:new_y instead.")
  (new_y m))

(cl:ensure-generic-function 'new_yaw-val :lambda-list '(m))
(cl:defmethod new_yaw-val ((m <GetVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actor_services-srv:new_yaw-val is deprecated.  Use actor_services-srv:new_yaw instead.")
  (new_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVel-request>) ostream)
  "Serializes a message object of type '<GetVel-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_flag) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'new_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'new_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'new_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVel-request>) istream)
  "Deserializes a message object of type '<GetVel-request>"
    (cl:setf (cl:slot-value msg 'set_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'new_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'new_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'new_yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVel-request>)))
  "Returns string type for a service object of type '<GetVel-request>"
  "actor_services/GetVelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVel-request)))
  "Returns string type for a service object of type 'GetVel-request"
  "actor_services/GetVelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVel-request>)))
  "Returns md5sum for a message object of type '<GetVel-request>"
  "f641daffe2334e864223c2a993ab4b8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVel-request)))
  "Returns md5sum for a message object of type 'GetVel-request"
  "f641daffe2334e864223c2a993ab4b8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVel-request>)))
  "Returns full string definition for message of type '<GetVel-request>"
  (cl:format cl:nil "bool set_flag~%float32 new_x~%float32 new_y~%float32 new_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVel-request)))
  "Returns full string definition for message of type 'GetVel-request"
  (cl:format cl:nil "bool set_flag~%float32 new_x~%float32 new_y~%float32 new_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVel-request>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVel-request
    (cl:cons ':set_flag (set_flag msg))
    (cl:cons ':new_x (new_x msg))
    (cl:cons ':new_y (new_y msg))
    (cl:cons ':new_yaw (new_yaw msg))
))
;//! \htmlinclude GetVel-response.msg.html

(cl:defclass <GetVel-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetVel-response (<GetVel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actor_services-srv:<GetVel-response> is deprecated: use actor_services-srv:GetVel-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actor_services-srv:x-val is deprecated.  Use actor_services-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actor_services-srv:y-val is deprecated.  Use actor_services-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <GetVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actor_services-srv:yaw-val is deprecated.  Use actor_services-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVel-response>) ostream)
  "Serializes a message object of type '<GetVel-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVel-response>) istream)
  "Deserializes a message object of type '<GetVel-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVel-response>)))
  "Returns string type for a service object of type '<GetVel-response>"
  "actor_services/GetVelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVel-response)))
  "Returns string type for a service object of type 'GetVel-response"
  "actor_services/GetVelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVel-response>)))
  "Returns md5sum for a message object of type '<GetVel-response>"
  "f641daffe2334e864223c2a993ab4b8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVel-response)))
  "Returns md5sum for a message object of type 'GetVel-response"
  "f641daffe2334e864223c2a993ab4b8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVel-response>)))
  "Returns full string definition for message of type '<GetVel-response>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVel-response)))
  "Returns full string definition for message of type 'GetVel-response"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVel-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVel-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':yaw (yaw msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVel)))
  'GetVel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVel)))
  'GetVel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVel)))
  "Returns string type for a service object of type '<GetVel>"
  "actor_services/GetVel")