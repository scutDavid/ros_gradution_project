; Auto-generated. Do not edit!


(cl:in-package srl_tracking_exporter-srv)


;//! \htmlinclude JobFinished-request.msg.html

(cl:defclass <JobFinished-request> (roslisp-msg-protocol:ros-message)
  ((job_name
    :reader job_name
    :initarg :job_name
    :type cl:string
    :initform ""))
)

(cl:defclass JobFinished-request (<JobFinished-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JobFinished-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JobFinished-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srl_tracking_exporter-srv:<JobFinished-request> is deprecated: use srl_tracking_exporter-srv:JobFinished-request instead.")))

(cl:ensure-generic-function 'job_name-val :lambda-list '(m))
(cl:defmethod job_name-val ((m <JobFinished-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srl_tracking_exporter-srv:job_name-val is deprecated.  Use srl_tracking_exporter-srv:job_name instead.")
  (job_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JobFinished-request>) ostream)
  "Serializes a message object of type '<JobFinished-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'job_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'job_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JobFinished-request>) istream)
  "Deserializes a message object of type '<JobFinished-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'job_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'job_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JobFinished-request>)))
  "Returns string type for a service object of type '<JobFinished-request>"
  "srl_tracking_exporter/JobFinishedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JobFinished-request)))
  "Returns string type for a service object of type 'JobFinished-request"
  "srl_tracking_exporter/JobFinishedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JobFinished-request>)))
  "Returns md5sum for a message object of type '<JobFinished-request>"
  "d920fe80478d88b925da2abe2df35139")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JobFinished-request)))
  "Returns md5sum for a message object of type 'JobFinished-request"
  "d920fe80478d88b925da2abe2df35139")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JobFinished-request>)))
  "Returns full string definition for message of type '<JobFinished-request>"
  (cl:format cl:nil "string job_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JobFinished-request)))
  "Returns full string definition for message of type 'JobFinished-request"
  (cl:format cl:nil "string job_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JobFinished-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'job_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JobFinished-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JobFinished-request
    (cl:cons ':job_name (job_name msg))
))
;//! \htmlinclude JobFinished-response.msg.html

(cl:defclass <JobFinished-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass JobFinished-response (<JobFinished-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JobFinished-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JobFinished-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srl_tracking_exporter-srv:<JobFinished-response> is deprecated: use srl_tracking_exporter-srv:JobFinished-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JobFinished-response>) ostream)
  "Serializes a message object of type '<JobFinished-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JobFinished-response>) istream)
  "Deserializes a message object of type '<JobFinished-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JobFinished-response>)))
  "Returns string type for a service object of type '<JobFinished-response>"
  "srl_tracking_exporter/JobFinishedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JobFinished-response)))
  "Returns string type for a service object of type 'JobFinished-response"
  "srl_tracking_exporter/JobFinishedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JobFinished-response>)))
  "Returns md5sum for a message object of type '<JobFinished-response>"
  "d920fe80478d88b925da2abe2df35139")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JobFinished-response)))
  "Returns md5sum for a message object of type 'JobFinished-response"
  "d920fe80478d88b925da2abe2df35139")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JobFinished-response>)))
  "Returns full string definition for message of type '<JobFinished-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JobFinished-response)))
  "Returns full string definition for message of type 'JobFinished-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JobFinished-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JobFinished-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JobFinished-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JobFinished)))
  'JobFinished-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JobFinished)))
  'JobFinished-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JobFinished)))
  "Returns string type for a service object of type '<JobFinished>"
  "srl_tracking_exporter/JobFinished")