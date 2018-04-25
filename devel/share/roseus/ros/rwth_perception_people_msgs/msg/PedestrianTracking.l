;; Auto-generated. Do not edit!


(when (boundp 'rwth_perception_people_msgs::PedestrianTracking)
  (if (not (find-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
    (make-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
  (shadow 'PedestrianTracking (find-package "RWTH_PERCEPTION_PEOPLE_MSGS")))
(unless (find-package "RWTH_PERCEPTION_PEOPLE_MSGS::PEDESTRIANTRACKING")
  (make-package "RWTH_PERCEPTION_PEOPLE_MSGS::PEDESTRIANTRACKING"))

(in-package "ROS")
;;//! \htmlinclude PedestrianTracking.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rwth_perception_people_msgs::PedestrianTracking
  :super ros::object
  :slots (_header _traj_x _traj_y _traj_z _traj_x_camera _traj_y_camera _traj_z_camera _dir _speed _id _score ))

(defmethod rwth_perception_people_msgs::PedestrianTracking
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:traj_x __traj_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:traj_y __traj_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:traj_z __traj_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:traj_x_camera __traj_x_camera) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:traj_y_camera __traj_y_camera) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:traj_z_camera __traj_z_camera) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dir __dir) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed __speed) 0.0)
    ((:id __id) 0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _traj_x __traj_x)
   (setq _traj_y __traj_y)
   (setq _traj_z __traj_z)
   (setq _traj_x_camera __traj_x_camera)
   (setq _traj_y_camera __traj_y_camera)
   (setq _traj_z_camera __traj_z_camera)
   (setq _dir __dir)
   (setq _speed (float __speed))
   (setq _id (round __id))
   (setq _score (float __score))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:traj_x
   (&optional __traj_x)
   (if __traj_x (setq _traj_x __traj_x)) _traj_x)
  (:traj_y
   (&optional __traj_y)
   (if __traj_y (setq _traj_y __traj_y)) _traj_y)
  (:traj_z
   (&optional __traj_z)
   (if __traj_z (setq _traj_z __traj_z)) _traj_z)
  (:traj_x_camera
   (&optional __traj_x_camera)
   (if __traj_x_camera (setq _traj_x_camera __traj_x_camera)) _traj_x_camera)
  (:traj_y_camera
   (&optional __traj_y_camera)
   (if __traj_y_camera (setq _traj_y_camera __traj_y_camera)) _traj_y_camera)
  (:traj_z_camera
   (&optional __traj_z_camera)
   (if __traj_z_camera (setq _traj_z_camera __traj_z_camera)) _traj_z_camera)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _traj_x
    (* 8    (length _traj_x)) 4
    ;; float64[] _traj_y
    (* 8    (length _traj_y)) 4
    ;; float64[] _traj_z
    (* 8    (length _traj_z)) 4
    ;; float64[] _traj_x_camera
    (* 8    (length _traj_x_camera)) 4
    ;; float64[] _traj_y_camera
    (* 8    (length _traj_y_camera)) 4
    ;; float64[] _traj_z_camera
    (* 8    (length _traj_z_camera)) 4
    ;; float64[] _dir
    (* 8    (length _dir)) 4
    ;; float64 _speed
    8
    ;; int64 _id
    8
    ;; float64 _score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _traj_x
     (write-long (length _traj_x) s)
     (dotimes (i (length _traj_x))
       (sys::poke (elt _traj_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _traj_y
     (write-long (length _traj_y) s)
     (dotimes (i (length _traj_y))
       (sys::poke (elt _traj_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _traj_z
     (write-long (length _traj_z) s)
     (dotimes (i (length _traj_z))
       (sys::poke (elt _traj_z i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _traj_x_camera
     (write-long (length _traj_x_camera) s)
     (dotimes (i (length _traj_x_camera))
       (sys::poke (elt _traj_x_camera i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _traj_y_camera
     (write-long (length _traj_y_camera) s)
     (dotimes (i (length _traj_y_camera))
       (sys::poke (elt _traj_y_camera i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _traj_z_camera
     (write-long (length _traj_z_camera) s)
     (dotimes (i (length _traj_z_camera))
       (sys::poke (elt _traj_z_camera i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dir
     (write-long (length _dir) s)
     (dotimes (i (length _dir))
       (sys::poke (elt _dir i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _traj_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traj_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _traj_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _traj_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traj_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _traj_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _traj_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traj_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _traj_z i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _traj_x_camera
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traj_x_camera (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _traj_x_camera i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _traj_y_camera
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traj_y_camera (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _traj_y_camera i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _traj_z_camera
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traj_z_camera (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _traj_z_camera i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dir
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dir (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dir i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rwth_perception_people_msgs::PedestrianTracking :md5sum-) "09aa33b8051238d8dd3261c282a34984")
(setf (get rwth_perception_people_msgs::PedestrianTracking :datatype-) "rwth_perception_people_msgs/PedestrianTracking")
(setf (get rwth_perception_people_msgs::PedestrianTracking :definition-)
      "Header header
# position projected on the GP in world coordinates
float64[] traj_x 
float64[] traj_y 
float64[] traj_z
# position projected on the GP in camera coordinates
float64[] traj_x_camera 
float64[] traj_y_camera 
float64[] traj_z_camera 
float64[] dir 	
float64 speed 	
int64 id  
float64 score

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



(provide :rwth_perception_people_msgs/PedestrianTracking "09aa33b8051238d8dd3261c282a34984")


