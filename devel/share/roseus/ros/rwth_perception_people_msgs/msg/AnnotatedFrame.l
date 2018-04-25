;; Auto-generated. Do not edit!


(when (boundp 'rwth_perception_people_msgs::AnnotatedFrame)
  (if (not (find-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
    (make-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
  (shadow 'AnnotatedFrame (find-package "RWTH_PERCEPTION_PEOPLE_MSGS")))
(unless (find-package "RWTH_PERCEPTION_PEOPLE_MSGS::ANNOTATEDFRAME")
  (make-package "RWTH_PERCEPTION_PEOPLE_MSGS::ANNOTATEDFRAME"))

(in-package "ROS")
;;//! \htmlinclude AnnotatedFrame.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rwth_perception_people_msgs::AnnotatedFrame
  :super ros::object
  :slots (_header _frame _timestamp _annotations ))

(defmethod rwth_perception_people_msgs::AnnotatedFrame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame __frame) 0)
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:annotations __annotations) (let (r) (dotimes (i 0) (push (instance rwth_perception_people_msgs::Annotation :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame (round __frame))
   (setq _timestamp __timestamp)
   (setq _annotations __annotations)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:annotations
   (&rest __annotations)
   (if (keywordp (car __annotations))
       (send* _annotations __annotations)
     (progn
       (if __annotations (setq _annotations (car __annotations)))
       _annotations)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _frame
    8
    ;; time _timestamp
    8
    ;; rwth_perception_people_msgs/Annotation[] _annotations
    (apply #'+ (send-all _annotations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _frame
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame) (= (length (_frame . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame . bv) 0) 0) s)
              (write-long (ash (elt (_frame . bv) 1) -1) s))
             ((and (class _frame) (= (length (_frame . bv)) 1)) ;; big1
              (write-long (elt (_frame . bv) 0) s)
              (write-long (if (>= _frame 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame s)(write-long (if (>= _frame 0) 0 #xffffffff) s)))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; rwth_perception_people_msgs/Annotation[] _annotations
     (write-long (length _annotations) s)
     (dolist (elem _annotations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _frame
#+(or :alpha :irix6 :x86_64)
      (setf _frame (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rwth_perception_people_msgs/Annotation[] _annotations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _annotations (let (r) (dotimes (i n) (push (instance rwth_perception_people_msgs::Annotation :init) r)) r))
     (dolist (elem- _annotations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rwth_perception_people_msgs::AnnotatedFrame :md5sum-) "82b48dede9c8aa960b68e052ed5ee37e")
(setf (get rwth_perception_people_msgs::AnnotatedFrame :datatype-) "rwth_perception_people_msgs/AnnotatedFrame")
(setf (get rwth_perception_people_msgs::AnnotatedFrame :definition-)
      "Header header

# frame (image)
int64 frame
# time stamp
time timestamp
# Array of annotation boxes
Annotation[] annotations

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: rwth_perception_people_msgs/Annotation
Header header

# frame id (backref)
int64 frame
# box id
int64 id
# top left x
float64 tlx
# top left y
float64 tly
# bbox width
float64 width
# bbox height
float64 height

")



(provide :rwth_perception_people_msgs/AnnotatedFrame "82b48dede9c8aa960b68e052ed5ee37e")


