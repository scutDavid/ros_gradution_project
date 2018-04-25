;; Auto-generated. Do not edit!


(when (boundp 'srl_laser_segmentation::LaserscanSegment)
  (if (not (find-package "SRL_LASER_SEGMENTATION"))
    (make-package "SRL_LASER_SEGMENTATION"))
  (shadow 'LaserscanSegment (find-package "SRL_LASER_SEGMENTATION")))
(unless (find-package "SRL_LASER_SEGMENTATION::LASERSCANSEGMENT")
  (make-package "SRL_LASER_SEGMENTATION::LASERSCANSEGMENT"))

(in-package "ROS")
;;//! \htmlinclude LaserscanSegment.msg.html


(defclass srl_laser_segmentation::LaserscanSegment
  :super ros::object
  :slots (_label _measurement_indices ))

(defmethod srl_laser_segmentation::LaserscanSegment
  (:init
   (&key
    ((:label __label) 0)
    ((:measurement_indices __measurement_indices) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _label (round __label))
   (setq _measurement_indices __measurement_indices)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:measurement_indices
   (&optional __measurement_indices)
   (if __measurement_indices (setq _measurement_indices __measurement_indices)) _measurement_indices)
  (:serialization-length
   ()
   (+
    ;; int16 _label
    2
    ;; uint16[] _measurement_indices
    (* 2    (length _measurement_indices)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _label
       (write-word _label s)
     ;; uint16[] _measurement_indices
     (write-long (length _measurement_indices) s)
     (dotimes (i (length _measurement_indices))
       (write-word (elt _measurement_indices i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _label
     (setq _label (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16[] _measurement_indices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _measurement_indices (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _measurement_indices i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get srl_laser_segmentation::LaserscanSegment :md5sum-) "ceb0bfb38ee913705c3016ba43e532fb")
(setf (get srl_laser_segmentation::LaserscanSegment :datatype-) "srl_laser_segmentation/LaserscanSegment")
(setf (get srl_laser_segmentation::LaserscanSegment :definition-)
      "# The segment label assigned to this set of laser points, usually unique per sensor_msgs/Laserscan.
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



(provide :srl_laser_segmentation/LaserscanSegment "ceb0bfb38ee913705c3016ba43e532fb")


