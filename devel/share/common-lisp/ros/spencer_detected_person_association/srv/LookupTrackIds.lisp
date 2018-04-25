; Auto-generated. Do not edit!


(cl:in-package spencer_detected_person_association-srv)


;//! \htmlinclude LookupTrackIds-request.msg.html

(cl:defclass <LookupTrackIds-request> (roslisp-msg-protocol:ros-message)
  ((detection_ids
    :reader detection_ids
    :initarg :detection_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass LookupTrackIds-request (<LookupTrackIds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookupTrackIds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookupTrackIds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_detected_person_association-srv:<LookupTrackIds-request> is deprecated: use spencer_detected_person_association-srv:LookupTrackIds-request instead.")))

(cl:ensure-generic-function 'detection_ids-val :lambda-list '(m))
(cl:defmethod detection_ids-val ((m <LookupTrackIds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_detected_person_association-srv:detection_ids-val is deprecated.  Use spencer_detected_person_association-srv:detection_ids instead.")
  (detection_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookupTrackIds-request>) ostream)
  "Serializes a message object of type '<LookupTrackIds-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detection_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'detection_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookupTrackIds-request>) istream)
  "Deserializes a message object of type '<LookupTrackIds-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detection_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detection_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookupTrackIds-request>)))
  "Returns string type for a service object of type '<LookupTrackIds-request>"
  "spencer_detected_person_association/LookupTrackIdsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookupTrackIds-request)))
  "Returns string type for a service object of type 'LookupTrackIds-request"
  "spencer_detected_person_association/LookupTrackIdsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookupTrackIds-request>)))
  "Returns md5sum for a message object of type '<LookupTrackIds-request>"
  "fdbfb9d136dcf8dca2f9e4ae81a993ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookupTrackIds-request)))
  "Returns md5sum for a message object of type 'LookupTrackIds-request"
  "fdbfb9d136dcf8dca2f9e4ae81a993ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookupTrackIds-request>)))
  "Returns full string definition for message of type '<LookupTrackIds-request>"
  (cl:format cl:nil "uint64[]      detection_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookupTrackIds-request)))
  "Returns full string definition for message of type 'LookupTrackIds-request"
  (cl:format cl:nil "uint64[]      detection_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookupTrackIds-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detection_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookupTrackIds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LookupTrackIds-request
    (cl:cons ':detection_ids (detection_ids msg))
))
;//! \htmlinclude LookupTrackIds-response.msg.html

(cl:defclass <LookupTrackIds-response> (roslisp-msg-protocol:ros-message)
  ((was_found
    :reader was_found
    :initarg :was_found
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (track_ids
    :reader track_ids
    :initarg :track_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass LookupTrackIds-response (<LookupTrackIds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookupTrackIds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookupTrackIds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_detected_person_association-srv:<LookupTrackIds-response> is deprecated: use spencer_detected_person_association-srv:LookupTrackIds-response instead.")))

(cl:ensure-generic-function 'was_found-val :lambda-list '(m))
(cl:defmethod was_found-val ((m <LookupTrackIds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_detected_person_association-srv:was_found-val is deprecated.  Use spencer_detected_person_association-srv:was_found instead.")
  (was_found m))

(cl:ensure-generic-function 'track_ids-val :lambda-list '(m))
(cl:defmethod track_ids-val ((m <LookupTrackIds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_detected_person_association-srv:track_ids-val is deprecated.  Use spencer_detected_person_association-srv:track_ids instead.")
  (track_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookupTrackIds-response>) ostream)
  "Serializes a message object of type '<LookupTrackIds-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'was_found))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'was_found))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'track_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'track_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookupTrackIds-response>) istream)
  "Deserializes a message object of type '<LookupTrackIds-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'was_found) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'was_found)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'track_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'track_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookupTrackIds-response>)))
  "Returns string type for a service object of type '<LookupTrackIds-response>"
  "spencer_detected_person_association/LookupTrackIdsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookupTrackIds-response)))
  "Returns string type for a service object of type 'LookupTrackIds-response"
  "spencer_detected_person_association/LookupTrackIdsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookupTrackIds-response>)))
  "Returns md5sum for a message object of type '<LookupTrackIds-response>"
  "fdbfb9d136dcf8dca2f9e4ae81a993ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookupTrackIds-response)))
  "Returns md5sum for a message object of type 'LookupTrackIds-response"
  "fdbfb9d136dcf8dca2f9e4ae81a993ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookupTrackIds-response>)))
  "Returns full string definition for message of type '<LookupTrackIds-response>"
  (cl:format cl:nil "bool[]        was_found~%uint64[]      track_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookupTrackIds-response)))
  "Returns full string definition for message of type 'LookupTrackIds-response"
  (cl:format cl:nil "bool[]        was_found~%uint64[]      track_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookupTrackIds-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'was_found) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'track_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookupTrackIds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LookupTrackIds-response
    (cl:cons ':was_found (was_found msg))
    (cl:cons ':track_ids (track_ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LookupTrackIds)))
  'LookupTrackIds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LookupTrackIds)))
  'LookupTrackIds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookupTrackIds)))
  "Returns string type for a service object of type '<LookupTrackIds>"
  "spencer_detected_person_association/LookupTrackIds")