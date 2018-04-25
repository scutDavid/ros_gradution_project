;; Auto-generated. Do not edit!


(when (boundp 'rwth_perception_people_msgs::PedestrianTrackingArray)
  (if (not (find-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
    (make-package "RWTH_PERCEPTION_PEOPLE_MSGS"))
  (shadow 'PedestrianTrackingArray (find-package "RWTH_PERCEPTION_PEOPLE_MSGS")))
(unless (find-package "RWTH_PERCEPTION_PEOPLE_MSGS::PEDESTRIANTRACKINGARRAY")
  (make-package "RWTH_PERCEPTION_PEOPLE_MSGS::PEDESTRIANTRACKINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude PedestrianTrackingArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rwth_perception_people_msgs::PedestrianTrackingArray
  :super ros::object
  :slots (_header _pedestrians ))

(defmethod rwth_perception_people_msgs::PedestrianTrackingArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pedestrians __pedestrians) (let (r) (dotimes (i 0) (push (instance rwth_perception_people_msgs::PedestrianTracking :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pedestrians __pedestrians)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pedestrians
   (&rest __pedestrians)
   (if (keywordp (car __pedestrians))
       (send* _pedestrians __pedestrians)
     (progn
       (if __pedestrians (setq _pedestrians (car __pedestrians)))
       _pedestrians)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rwth_perception_people_msgs/PedestrianTracking[] _pedestrians
    (apply #'+ (send-all _pedestrians :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rwth_perception_people_msgs/PedestrianTracking[] _pedestrians
     (write-long (length _pedestrians) s)
     (dolist (elem _pedestrians)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rwth_perception_people_msgs/PedestrianTracking[] _pedestrians
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pedestrians (let (r) (dotimes (i n) (push (instance rwth_perception_people_msgs::PedestrianTracking :init) r)) r))
     (dolist (elem- _pedestrians)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rwth_perception_people_msgs::PedestrianTrackingArray :md5sum-) "a9f67479ca0db5489cca876d9f98fd50")
(setf (get rwth_perception_people_msgs::PedestrianTrackingArray :datatype-) "rwth_perception_people_msgs/PedestrianTrackingArray")
(setf (get rwth_perception_people_msgs::PedestrianTrackingArray :definition-)
      "Header header
PedestrianTracking[] pedestrians

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
MSG: rwth_perception_people_msgs/PedestrianTracking
Header header
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

")



(provide :rwth_perception_people_msgs/PedestrianTrackingArray "a9f67479ca0db5489cca876d9f98fd50")


