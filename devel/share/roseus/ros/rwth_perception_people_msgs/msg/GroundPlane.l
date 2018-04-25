;; Auto-generated. Do not edit!


(when (boundp 'rwth_perception_people_msgs::GroundPlane)
  (if (not (find-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
    (make-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
  (shadow 'GroundPlane (find-package "RWTH_PERCEPTION_PEOPLE_MSGS")))
(unless (find-package "RWTH_PERCEPTION_PEOPLE_MSGS::GROUNDPLANE")
  (make-package "RWTH_PERCEPTION_PEOPLE_MSGS::GROUNDPLANE"))

(in-package "ROS")
;;//! \htmlinclude GroundPlane.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rwth_perception_people_msgs::GroundPlane
  :super ros::object
  :slots (_header _n _d ))

(defmethod rwth_perception_people_msgs::GroundPlane
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:n __n) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _n __n)
   (setq _d (float __d))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _n
    (* 8    (length _n)) 4
    ;; float64 _d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _n
     (write-long (length _n) s)
     (dotimes (i (length _n))
       (sys::poke (elt _n i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _d
       (sys::poke _d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _n
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _n (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _n i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _d
     (setq _d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rwth_perception_people_msgs::GroundPlane :md5sum-) "304eb2260bc88a91236784c7dd166ffd")
(setf (get rwth_perception_people_msgs::GroundPlane :datatype-) "rwth_perception_people_msgs/GroundPlane")
(setf (get rwth_perception_people_msgs::GroundPlane :definition-)
      "Header header
float64[] n 	# 3x1 vector containing the normal of the ground plane
float64   d     # d is the ditance ax+by+cz = d

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



(provide :rwth_perception_people_msgs/GroundPlane "304eb2260bc88a91236784c7dd166ffd")


