; Auto-generated. Do not edit!


(cl:in-package rwth_perception_people_msgs-msg)


;//! \htmlinclude VisualOdometry.msg.html

(cl:defclass <VisualOdometry> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (change_reference_frame
    :reader change_reference_frame
    :initarg :change_reference_frame
    :type cl:boolean
    :initform cl:nil)
   (fast_threshold
    :reader fast_threshold
    :initarg :fast_threshold
    :type cl:integer
    :initform 0)
   (num_total_detected_keypoints
    :reader num_total_detected_keypoints
    :initarg :num_total_detected_keypoints
    :type cl:integer
    :initform 0)
   (num_detected_keypoints
    :reader num_detected_keypoints
    :initarg :num_detected_keypoints
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (num_total_keypoints
    :reader num_total_keypoints
    :initarg :num_total_keypoints
    :type cl:integer
    :initform 0)
   (num_keypoints
    :reader num_keypoints
    :initarg :num_keypoints
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (motion_estimate_status_code
    :reader motion_estimate_status_code
    :initarg :motion_estimate_status_code
    :type cl:integer
    :initform 0)
   (motion_estimate_status
    :reader motion_estimate_status
    :initarg :motion_estimate_status
    :type cl:string
    :initform "")
   (motion_estimate_valid
    :reader motion_estimate_valid
    :initarg :motion_estimate_valid
    :type cl:boolean
    :initform cl:nil)
   (num_matches
    :reader num_matches
    :initarg :num_matches
    :type cl:integer
    :initform 0)
   (num_inliers
    :reader num_inliers
    :initarg :num_inliers
    :type cl:integer
    :initform 0)
   (num_reprojection_failures
    :reader num_reprojection_failures
    :initarg :num_reprojection_failures
    :type cl:integer
    :initform 0)
   (runtime
    :reader runtime
    :initarg :runtime
    :type cl:float
    :initform 0.0)
   (transformation_matrix
    :reader transformation_matrix
    :initarg :transformation_matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass VisualOdometry (<VisualOdometry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisualOdometry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisualOdometry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rwth_perception_people_msgs-msg:<VisualOdometry> is deprecated: use rwth_perception_people_msgs-msg:VisualOdometry instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:header-val is deprecated.  Use rwth_perception_people_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'change_reference_frame-val :lambda-list '(m))
(cl:defmethod change_reference_frame-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:change_reference_frame-val is deprecated.  Use rwth_perception_people_msgs-msg:change_reference_frame instead.")
  (change_reference_frame m))

(cl:ensure-generic-function 'fast_threshold-val :lambda-list '(m))
(cl:defmethod fast_threshold-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:fast_threshold-val is deprecated.  Use rwth_perception_people_msgs-msg:fast_threshold instead.")
  (fast_threshold m))

(cl:ensure-generic-function 'num_total_detected_keypoints-val :lambda-list '(m))
(cl:defmethod num_total_detected_keypoints-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:num_total_detected_keypoints-val is deprecated.  Use rwth_perception_people_msgs-msg:num_total_detected_keypoints instead.")
  (num_total_detected_keypoints m))

(cl:ensure-generic-function 'num_detected_keypoints-val :lambda-list '(m))
(cl:defmethod num_detected_keypoints-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:num_detected_keypoints-val is deprecated.  Use rwth_perception_people_msgs-msg:num_detected_keypoints instead.")
  (num_detected_keypoints m))

(cl:ensure-generic-function 'num_total_keypoints-val :lambda-list '(m))
(cl:defmethod num_total_keypoints-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:num_total_keypoints-val is deprecated.  Use rwth_perception_people_msgs-msg:num_total_keypoints instead.")
  (num_total_keypoints m))

(cl:ensure-generic-function 'num_keypoints-val :lambda-list '(m))
(cl:defmethod num_keypoints-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:num_keypoints-val is deprecated.  Use rwth_perception_people_msgs-msg:num_keypoints instead.")
  (num_keypoints m))

(cl:ensure-generic-function 'motion_estimate_status_code-val :lambda-list '(m))
(cl:defmethod motion_estimate_status_code-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:motion_estimate_status_code-val is deprecated.  Use rwth_perception_people_msgs-msg:motion_estimate_status_code instead.")
  (motion_estimate_status_code m))

(cl:ensure-generic-function 'motion_estimate_status-val :lambda-list '(m))
(cl:defmethod motion_estimate_status-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:motion_estimate_status-val is deprecated.  Use rwth_perception_people_msgs-msg:motion_estimate_status instead.")
  (motion_estimate_status m))

(cl:ensure-generic-function 'motion_estimate_valid-val :lambda-list '(m))
(cl:defmethod motion_estimate_valid-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:motion_estimate_valid-val is deprecated.  Use rwth_perception_people_msgs-msg:motion_estimate_valid instead.")
  (motion_estimate_valid m))

(cl:ensure-generic-function 'num_matches-val :lambda-list '(m))
(cl:defmethod num_matches-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:num_matches-val is deprecated.  Use rwth_perception_people_msgs-msg:num_matches instead.")
  (num_matches m))

(cl:ensure-generic-function 'num_inliers-val :lambda-list '(m))
(cl:defmethod num_inliers-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:num_inliers-val is deprecated.  Use rwth_perception_people_msgs-msg:num_inliers instead.")
  (num_inliers m))

(cl:ensure-generic-function 'num_reprojection_failures-val :lambda-list '(m))
(cl:defmethod num_reprojection_failures-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:num_reprojection_failures-val is deprecated.  Use rwth_perception_people_msgs-msg:num_reprojection_failures instead.")
  (num_reprojection_failures m))

(cl:ensure-generic-function 'runtime-val :lambda-list '(m))
(cl:defmethod runtime-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:runtime-val is deprecated.  Use rwth_perception_people_msgs-msg:runtime instead.")
  (runtime m))

(cl:ensure-generic-function 'transformation_matrix-val :lambda-list '(m))
(cl:defmethod transformation_matrix-val ((m <VisualOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rwth_perception_people_msgs-msg:transformation_matrix-val is deprecated.  Use rwth_perception_people_msgs-msg:transformation_matrix instead.")
  (transformation_matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisualOdometry>) ostream)
  "Serializes a message object of type '<VisualOdometry>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'change_reference_frame) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'fast_threshold)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_total_detected_keypoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'num_detected_keypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'num_detected_keypoints))
  (cl:let* ((signed (cl:slot-value msg 'num_total_keypoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'num_keypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'num_keypoints))
  (cl:let* ((signed (cl:slot-value msg 'motion_estimate_status_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motion_estimate_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motion_estimate_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motion_estimate_valid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_matches)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_inliers)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_reprojection_failures)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'runtime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transformation_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'transformation_matrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisualOdometry>) istream)
  "Deserializes a message object of type '<VisualOdometry>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'change_reference_frame) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fast_threshold) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_total_detected_keypoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'num_detected_keypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'num_detected_keypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_total_keypoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'num_keypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'num_keypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion_estimate_status_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion_estimate_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motion_estimate_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'motion_estimate_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_matches) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_inliers) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_reprojection_failures) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'runtime) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transformation_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transformation_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisualOdometry>)))
  "Returns string type for a message object of type '<VisualOdometry>"
  "rwth_perception_people_msgs/VisualOdometry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisualOdometry)))
  "Returns string type for a message object of type 'VisualOdometry"
  "rwth_perception_people_msgs/VisualOdometry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisualOdometry>)))
  "Returns md5sum for a message object of type '<VisualOdometry>"
  "7438c791aea79027f990e123fc30b7f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisualOdometry)))
  "Returns md5sum for a message object of type 'VisualOdometry"
  "7438c791aea79027f990e123fc30b7f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisualOdometry>)))
  "Returns full string definition for message of type '<VisualOdometry>"
  (cl:format cl:nil "# Internal information on the~%# fovis algorithm parameters~%# and results~%~%Header header~%~%# True if in the next run the reference~%# frame will be changed. This is the case~%# when the number of inliers drops below~%# a threshold or the previous motion estimate~%# failed in last motion estimation.~%bool change_reference_frame~%~%# The threshold that is currently~%# used for the FAST feature detector.~%int32 fast_threshold~%~%# total number of detected keypoints in raw image~%int32 num_total_detected_keypoints~%~%# same as above per pyramid level, starting at 0~%int32[] num_detected_keypoints~%~%# total number of keypoints after bucketing and~%# edge and depth filter~%int32 num_total_keypoints~%~%# same as above per pyramid level, starting at 0~%int32[] num_keypoints~%~%# info from motion estimator~%int32 motion_estimate_status_code~%string motion_estimate_status~%bool motion_estimate_valid~%int32 num_matches~%int32 num_inliers~%int32 num_reprojection_failures~%~%# runtime of last iteration in seconds~%float64 runtime~%~%# motion estimation - in matrix (4x4) form [R|t]~%float64[] transformation_matrix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisualOdometry)))
  "Returns full string definition for message of type 'VisualOdometry"
  (cl:format cl:nil "# Internal information on the~%# fovis algorithm parameters~%# and results~%~%Header header~%~%# True if in the next run the reference~%# frame will be changed. This is the case~%# when the number of inliers drops below~%# a threshold or the previous motion estimate~%# failed in last motion estimation.~%bool change_reference_frame~%~%# The threshold that is currently~%# used for the FAST feature detector.~%int32 fast_threshold~%~%# total number of detected keypoints in raw image~%int32 num_total_detected_keypoints~%~%# same as above per pyramid level, starting at 0~%int32[] num_detected_keypoints~%~%# total number of keypoints after bucketing and~%# edge and depth filter~%int32 num_total_keypoints~%~%# same as above per pyramid level, starting at 0~%int32[] num_keypoints~%~%# info from motion estimator~%int32 motion_estimate_status_code~%string motion_estimate_status~%bool motion_estimate_valid~%int32 num_matches~%int32 num_inliers~%int32 num_reprojection_failures~%~%# runtime of last iteration in seconds~%float64 runtime~%~%# motion estimation - in matrix (4x4) form [R|t]~%float64[] transformation_matrix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisualOdometry>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'num_detected_keypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'num_keypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:length (cl:slot-value msg 'motion_estimate_status))
     1
     4
     4
     4
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transformation_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisualOdometry>))
  "Converts a ROS message object to a list"
  (cl:list 'VisualOdometry
    (cl:cons ':header (header msg))
    (cl:cons ':change_reference_frame (change_reference_frame msg))
    (cl:cons ':fast_threshold (fast_threshold msg))
    (cl:cons ':num_total_detected_keypoints (num_total_detected_keypoints msg))
    (cl:cons ':num_detected_keypoints (num_detected_keypoints msg))
    (cl:cons ':num_total_keypoints (num_total_keypoints msg))
    (cl:cons ':num_keypoints (num_keypoints msg))
    (cl:cons ':motion_estimate_status_code (motion_estimate_status_code msg))
    (cl:cons ':motion_estimate_status (motion_estimate_status msg))
    (cl:cons ':motion_estimate_valid (motion_estimate_valid msg))
    (cl:cons ':num_matches (num_matches msg))
    (cl:cons ':num_inliers (num_inliers msg))
    (cl:cons ':num_reprojection_failures (num_reprojection_failures msg))
    (cl:cons ':runtime (runtime msg))
    (cl:cons ':transformation_matrix (transformation_matrix msg))
))
