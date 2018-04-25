; Auto-generated. Do not edit!


(cl:in-package spencer_detected_person_association-srv)


;//! \htmlinclude LookupTrackId-request.msg.html

(cl:defclass <LookupTrackId-request> (roslisp-msg-protocol:ros-message)
  ((detection_id
    :reader detection_id
    :initarg :detection_id
    :type cl:integer
    :initform 0))
)

(cl:defclass LookupTrackId-request (<LookupTrackId-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookupTrackId-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookupTrackId-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_detected_person_association-srv:<LookupTrackId-request> is deprecated: use spencer_detected_person_association-srv:LookupTrackId-request instead.")))

(cl:ensure-generic-function 'detection_id-val :lambda-list '(m))
(cl:defmethod detection_id-val ((m <LookupTrackId-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_detected_person_association-srv:detection_id-val is deprecated.  Use spencer_detected_person_association-srv:detection_id instead.")
  (detection_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookupTrackId-request>) ostream)
  "Serializes a message object of type '<LookupTrackId-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'detection_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookupTrackId-request>) istream)
  "Deserializes a message object of type '<LookupTrackId-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookupTrackId-request>)))
  "Returns string type for a service object of type '<LookupTrackId-request>"
  "spencer_detected_person_association/LookupTrackIdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookupTrackId-request)))
  "Returns string type for a service object of type 'LookupTrackId-request"
  "spencer_detected_person_association/LookupTrackIdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookupTrackId-request>)))
  "Returns md5sum for a message object of type '<LookupTrackId-request>"
  "d6b0b1132d3ddba53683fd3082b74b2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookupTrackId-request)))
  "Returns md5sum for a message object of type 'LookupTrackId-request"
  "d6b0b1132d3ddba53683fd3082b74b2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookupTrackId-request>)))
  "Returns full string definition for message of type '<LookupTrackId-request>"
  (cl:format cl:nil "uint64      detection_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookupTrackId-request)))
  "Returns full string definition for message of type 'LookupTrackId-request"
  (cl:format cl:nil "uint64      detection_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookupTrackId-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookupTrackId-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LookupTrackId-request
    (cl:cons ':detection_id (detection_id msg))
))
;//! \htmlinclude LookupTrackId-response.msg.html

(cl:defclass <LookupTrackId-response> (roslisp-msg-protocol:ros-message)
  ((was_found
    :reader was_found
    :initarg :was_found
    :type cl:boolean
    :initform cl:nil)
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0))
)

(cl:defclass LookupTrackId-response (<LookupTrackId-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookupTrackId-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookupTrackId-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_detected_person_association-srv:<LookupTrackId-response> is deprecated: use spencer_detected_person_association-srv:LookupTrackId-response instead.")))

(cl:ensure-generic-function 'was_found-val :lambda-list '(m))
(cl:defmethod was_found-val ((m <LookupTrackId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_detected_person_association-srv:was_found-val is deprecated.  Use spencer_detected_person_association-srv:was_found instead.")
  (was_found m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LookupTrackId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_detected_person_association-srv:track_id-val is deprecated.  Use spencer_detected_person_association-srv:track_id instead.")
  (track_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookupTrackId-response>) ostream)
  "Serializes a message object of type '<LookupTrackId-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'was_found) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookupTrackId-response>) istream)
  "Deserializes a message object of type '<LookupTrackId-response>"
    (cl:setf (cl:slot-value msg 'was_found) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookupTrackId-response>)))
  "Returns string type for a service object of type '<LookupTrackId-response>"
  "spencer_detected_person_association/LookupTrackIdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookupTrackId-response)))
  "Returns string type for a service object of type 'LookupTrackId-response"
  "spencer_detected_person_association/LookupTrackIdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookupTrackId-response>)))
  "Returns md5sum for a message object of type '<LookupTrackId-response>"
  "d6b0b1132d3ddba53683fd3082b74b2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookupTrackId-response)))
  "Returns md5sum for a message object of type 'LookupTrackId-response"
  "d6b0b1132d3ddba53683fd3082b74b2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookupTrackId-response>)))
  "Returns full string definition for message of type '<LookupTrackId-response>"
  (cl:format cl:nil "bool        was_found~%uint64      track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookupTrackId-response)))
  "Returns full string definition for message of type 'LookupTrackId-response"
  (cl:format cl:nil "bool        was_found~%uint64      track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookupTrackId-response>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookupTrackId-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LookupTrackId-response
    (cl:cons ':was_found (was_found msg))
    (cl:cons ':track_id (track_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LookupTrackId)))
  'LookupTrackId-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LookupTrackId)))
  'LookupTrackId-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookupTrackId)))
  "Returns string type for a service object of type '<LookupTrackId>"
  "spencer_detected_person_association/LookupTrackId")