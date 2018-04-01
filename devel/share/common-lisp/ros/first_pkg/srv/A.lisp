; Auto-generated. Do not edit!


(cl:in-package first_pkg-srv)


;//! \htmlinclude A-request.msg.html

(cl:defclass <A-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0))
)

(cl:defclass A-request (<A-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <A-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'A-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_pkg-srv:<A-request> is deprecated: use first_pkg-srv:A-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <A-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_pkg-srv:A-val is deprecated.  Use first_pkg-srv:A instead.")
  (A m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <A-request>) ostream)
  "Serializes a message object of type '<A-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <A-request>) istream)
  "Deserializes a message object of type '<A-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<A-request>)))
  "Returns string type for a service object of type '<A-request>"
  "first_pkg/ARequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'A-request)))
  "Returns string type for a service object of type 'A-request"
  "first_pkg/ARequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<A-request>)))
  "Returns md5sum for a message object of type '<A-request>"
  "cacada641c8116215aaa1be2ff0da518")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'A-request)))
  "Returns md5sum for a message object of type 'A-request"
  "cacada641c8116215aaa1be2ff0da518")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<A-request>)))
  "Returns full string definition for message of type '<A-request>"
  (cl:format cl:nil "int64 A~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'A-request)))
  "Returns full string definition for message of type 'A-request"
  (cl:format cl:nil "int64 A~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <A-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <A-request>))
  "Converts a ROS message object to a list"
  (cl:list 'A-request
    (cl:cons ':A (A msg))
))
;//! \htmlinclude A-response.msg.html

(cl:defclass <A-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass A-response (<A-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <A-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'A-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_pkg-srv:<A-response> is deprecated: use first_pkg-srv:A-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <A-response>) ostream)
  "Serializes a message object of type '<A-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <A-response>) istream)
  "Deserializes a message object of type '<A-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<A-response>)))
  "Returns string type for a service object of type '<A-response>"
  "first_pkg/AResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'A-response)))
  "Returns string type for a service object of type 'A-response"
  "first_pkg/AResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<A-response>)))
  "Returns md5sum for a message object of type '<A-response>"
  "cacada641c8116215aaa1be2ff0da518")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'A-response)))
  "Returns md5sum for a message object of type 'A-response"
  "cacada641c8116215aaa1be2ff0da518")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<A-response>)))
  "Returns full string definition for message of type '<A-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'A-response)))
  "Returns full string definition for message of type 'A-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <A-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <A-response>))
  "Converts a ROS message object to a list"
  (cl:list 'A-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'A)))
  'A-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'A)))
  'A-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'A)))
  "Returns string type for a service object of type '<A>"
  "first_pkg/A")