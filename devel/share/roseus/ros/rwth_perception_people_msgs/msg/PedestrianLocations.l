;; Auto-generated. Do not edit!


(when (boundp 'rwth_perception_people_msgs::PedestrianLocations)
  (if (not (find-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
    (make-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
  (shadow 'PedestrianLocations (find-package "RWTH_PERCEPTION_PEOPLE_MSGS")))
(unless (find-package "RWTH_PERCEPTION_PEOPLE_MSGS::PEDESTRIANLOCATIONS")
  (make-package "RWTH_PERCEPTION_PEOPLE_MSGS::PEDESTRIANLOCATIONS"))

(in-package "ROS")
;;//! \htmlinclude PedestrianLocations.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rwth_perception_people_msgs::PedestrianLocations
  :super ros::object
  :slots (_header _ids _poses _distances _angles _min_distance _min_distance_angle ))

(defmethod rwth_perception_people_msgs::PedestrianLocations
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:distances __distances) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:min_distance __min_distance) 0.0)
    ((:min_distance_angle __min_distance_angle) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ids __ids)
   (setq _poses __poses)
   (setq _distances __distances)
   (setq _angles __angles)
   (setq _min_distance (float __min_distance))
   (setq _min_distance_angle (float __min_distance_angle))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:distances
   (&optional __distances)
   (if __distances (setq _distances __distances)) _distances)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:min_distance
   (&optional __min_distance)
   (if __min_distance (setq _min_distance __min_distance)) _min_distance)
  (:min_distance_angle
   (&optional __min_distance_angle)
   (if __min_distance_angle (setq _min_distance_angle __min_distance_angle)) _min_distance_angle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; float64[] _distances
    (* 8    (length _distances)) 4
    ;; float64[] _angles
    (* 8    (length _angles)) 4
    ;; float64 _min_distance
    8
    ;; float64 _min_distance_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; float64[] _distances
     (write-long (length _distances) s)
     (dotimes (i (length _distances))
       (sys::poke (elt _distances i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _min_distance
       (sys::poke _min_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_distance_angle
       (sys::poke _min_distance_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _distances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distances i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _min_distance
     (setq _min_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_distance_angle
     (setq _min_distance_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rwth_perception_people_msgs::PedestrianLocations :md5sum-) "0f1ff45be31c79c3b674556d26791dcd")
(setf (get rwth_perception_people_msgs::PedestrianLocations :datatype-) "rwth_perception_people_msgs/PedestrianLocations")
(setf (get rwth_perception_people_msgs::PedestrianLocations :definition-)
      "std_msgs/Header header
int32[] ids
geometry_msgs/Pose[] poses
float64[] distances
float64[] angles
float64 min_distance
float64 min_distance_angle

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :rwth_perception_people_msgs/PedestrianLocations "0f1ff45be31c79c3b674556d26791dcd")


