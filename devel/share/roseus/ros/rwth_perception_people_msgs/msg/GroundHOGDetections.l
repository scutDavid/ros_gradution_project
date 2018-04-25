;; Auto-generated. Do not edit!


(when (boundp 'rwth_perception_people_msgs::GroundHOGDetections)
  (if (not (find-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
    (make-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
  (shadow 'GroundHOGDetections (find-package "RWTH_PERCEPTION_PEOPLE_MSGS")))
(unless (find-package "RWTH_PERCEPTION_PEOPLE_MSGS::GROUNDHOGDETECTIONS")
  (make-package "RWTH_PERCEPTION_PEOPLE_MSGS::GROUNDHOGDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude GroundHOGDetections.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rwth_perception_people_msgs::GroundHOGDetections
  :super ros::object
  :slots (_header _pos_x _pos_y _width _height _scale _score ))

(defmethod rwth_perception_people_msgs::GroundHOGDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos_x __pos_x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pos_y __pos_y) (make-array 0 :initial-element 0 :element-type :integer))
    ((:width __width) (make-array 0 :initial-element 0 :element-type :integer))
    ((:height __height) (make-array 0 :initial-element 0 :element-type :integer))
    ((:scale __scale) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:score __score) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos_x __pos_x)
   (setq _pos_y __pos_y)
   (setq _width __width)
   (setq _height __height)
   (setq _scale __scale)
   (setq _score __score)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64[] _pos_x
    (* 8    (length _pos_x)) 4
    ;; int64[] _pos_y
    (* 8    (length _pos_y)) 4
    ;; int64[] _width
    (* 8    (length _width)) 4
    ;; int64[] _height
    (* 8    (length _height)) 4
    ;; float64[] _scale
    (* 8    (length _scale)) 4
    ;; float64[] _score
    (* 8    (length _score)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64[] _pos_x
     (write-long (length _pos_x) s)
     (dotimes (i (length _pos_x))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _pos_x i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _pos_x i)) (= (length ((elt _pos_x i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _pos_x i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _pos_x i) . bv) 1) -1) s))
             ((and (class (elt _pos_x i)) (= (length ((elt _pos_x i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _pos_x i) . bv) 0) s)
              (write-long (if (>= (elt _pos_x i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _pos_x i) s)(write-long (if (>= (elt _pos_x i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _pos_y
     (write-long (length _pos_y) s)
     (dotimes (i (length _pos_y))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _pos_y i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _pos_y i)) (= (length ((elt _pos_y i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _pos_y i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _pos_y i) . bv) 1) -1) s))
             ((and (class (elt _pos_y i)) (= (length ((elt _pos_y i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _pos_y i) . bv) 0) s)
              (write-long (if (>= (elt _pos_y i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _pos_y i) s)(write-long (if (>= (elt _pos_y i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _width
     (write-long (length _width) s)
     (dotimes (i (length _width))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _width i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _width i)) (= (length ((elt _width i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _width i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _width i) . bv) 1) -1) s))
             ((and (class (elt _width i)) (= (length ((elt _width i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _width i) . bv) 0) s)
              (write-long (if (>= (elt _width i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _width i) s)(write-long (if (>= (elt _width i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _height
     (write-long (length _height) s)
     (dotimes (i (length _height))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _height i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _height i)) (= (length ((elt _height i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _height i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _height i) . bv) 1) -1) s))
             ((and (class (elt _height i)) (= (length ((elt _height i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _height i) . bv) 0) s)
              (write-long (if (>= (elt _height i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _height i) s)(write-long (if (>= (elt _height i) 0) 0 #xffffffff) s)))
       )
     ;; float64[] _scale
     (write-long (length _scale) s)
     (dotimes (i (length _scale))
       (sys::poke (elt _scale i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _score
     (write-long (length _score) s)
     (dotimes (i (length _score))
       (sys::poke (elt _score i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64[] _pos_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_x (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _pos_x i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _pos_x i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _pos_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_y (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _pos_y i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _pos_y i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _width
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _width (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _width i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _width i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _height
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _height (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _height i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _height i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; float64[] _scale
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scale (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _scale i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _score i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get rwth_perception_people_msgs::GroundHOGDetections :md5sum-) "e278dfbcb40304bacf23536a71084dab")
(setf (get rwth_perception_people_msgs::GroundHOGDetections :datatype-) "rwth_perception_people_msgs/GroundHOGDetections")
(setf (get rwth_perception_people_msgs::GroundHOGDetections :definition-)
      "Header header
int64[] pos_x 	# upper left x corner of the bounding box
int64[] pos_y 	# upper left y corner of the bounding box
int64[] width 	# width of the bounding box
int64[] height 	# height of the bounding box
float64[] scale # scale of the detected object
float64[] score # score of the detected object

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

")



(provide :rwth_perception_people_msgs/GroundHOGDetections "e278dfbcb40304bacf23536a71084dab")


