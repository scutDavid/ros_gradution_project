;; Auto-generated. Do not edit!


(when (boundp 'srl_laser_segmentation::LaserscanSegmentation)
  (if (not (find-package "SRL_LASER_SEGMENTATION"))
    (make-package "SRL_LASER_SEGMENTATION"))
  (shadow 'LaserscanSegmentation (find-package "SRL_LASER_SEGMENTATION")))
(unless (find-package "SRL_LASER_SEGMENTATION::LASERSCANSEGMENTATION")
  (make-package "SRL_LASER_SEGMENTATION::LASERSCANSEGMENTATION"))

(in-package "ROS")
;;//! \htmlinclude LaserscanSegmentation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass srl_laser_segmentation::LaserscanSegmentation
  :super ros::object
  :slots (_header _segments ))

(defmethod srl_laser_segmentation::LaserscanSegmentation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:segments __segments) (let (r) (dotimes (i 0) (push (instance srl_laser_segmentation::LaserscanSegment :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _segments __segments)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; srl_laser_segmentation/LaserscanSegment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; srl_laser_segmentation/LaserscanSegment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; srl_laser_segmentation/LaserscanSegment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance srl_laser_segmentation::LaserscanSegment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get srl_laser_segmentation::LaserscanSegmentation :md5sum-) "4220e7e74ca923add2cd78d176946e12")
(setf (get srl_laser_segmentation::LaserscanSegmentation :datatype-) "srl_laser_segmentation/LaserscanSegmentation")
(setf (get srl_laser_segmentation::LaserscanSegmentation :definition-)
      "# A LaserscanSegmentation divides the points of a sensor_msgs/Laserscan into segments of (usually neighbouring)
# points. Each segment is assigned a label, which uniquely identifies the segment. Laserscan points that
# are considered as scene background are not part of any segment.
# LaserscanSegmentation messages can be used as an input to a classifier such as a person detector, or for annotating
# sensor_msgs/Laserscan messages with groundtruth person tracks (in that case, a segment's label denotes a person track ID,
# that is used consistently across multiple frames).

# Standard message header
# The timestamp of this header must be equal to the timestamp of the corresponding Laserscan message,
# and can thus be used for synchronization of Laserscan and LaserscanSegmentation messages.
std_msgs/Header     header

# All segments of interest of the current laser scan. Anything that is not part of a LaserscanSegment is
# implicitly defined as scene background. 
LaserscanSegment[]  segments
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
MSG: srl_laser_segmentation/LaserscanSegment
# The segment label assigned to this set of laser points, usually unique per sensor_msgs/Laserscan.
# If the LaserscanSegmentation message is used to annotate groundtruth person tracks, each label
# corresponds to the ID of a tracked person.
# Note that laser points which are considered as background are not part of any LaserscanSegment!
int16       label

# Indices of the measurements in the sensor_msgs/Laserscan ranges[] and intensities[] arrays
# that are part of this segment. For example, if measurement_indices contains the values
# 0, 1 and 2 and the value of 'label' is 16, then the first three laser measurements (usually the
# three left-most laser points in polar coordinates) are assigned to segment 16.
uint16[]    measurement_indices
")



(provide :srl_laser_segmentation/LaserscanSegmentation "4220e7e74ca923add2cd78d176946e12")


