;; Auto-generated. Do not edit!


(when (boundp 'spencer_bagfile_tools::AdditionalOdometryData)
  (if (not (find-package "SPENCER_BAGFILE_TOOLS"))
    (make-package "SPENCER_BAGFILE_TOOLS"))
  (shadow 'AdditionalOdometryData (find-package "SPENCER_BAGFILE_TOOLS")))
(unless (find-package "SPENCER_BAGFILE_TOOLS::ADDITIONALODOMETRYDATA")
  (make-package "SPENCER_BAGFILE_TOOLS::ADDITIONALODOMETRYDATA"))

(in-package "ROS")
;;//! \htmlinclude AdditionalOdometryData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass spencer_bagfile_tools::AdditionalOdometryData
  :super ros::object
  :slots (_header _hardwareTimestamp _totalDistance _theta _ticksLeft _ticksRight _calibOverallMultiplier _calibLeftEncMultiplier ))

(defmethod spencer_bagfile_tools::AdditionalOdometryData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hardwareTimestamp __hardwareTimestamp) 0)
    ((:totalDistance __totalDistance) 0.0)
    ((:theta __theta) 0.0)
    ((:ticksLeft __ticksLeft) 0)
    ((:ticksRight __ticksRight) 0)
    ((:calibOverallMultiplier __calibOverallMultiplier) 0.0)
    ((:calibLeftEncMultiplier __calibLeftEncMultiplier) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _hardwareTimestamp (round __hardwareTimestamp))
   (setq _totalDistance (float __totalDistance))
   (setq _theta (float __theta))
   (setq _ticksLeft (round __ticksLeft))
   (setq _ticksRight (round __ticksRight))
   (setq _calibOverallMultiplier (float __calibOverallMultiplier))
   (setq _calibLeftEncMultiplier (float __calibLeftEncMultiplier))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hardwareTimestamp
   (&optional __hardwareTimestamp)
   (if __hardwareTimestamp (setq _hardwareTimestamp __hardwareTimestamp)) _hardwareTimestamp)
  (:totalDistance
   (&optional __totalDistance)
   (if __totalDistance (setq _totalDistance __totalDistance)) _totalDistance)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:ticksLeft
   (&optional __ticksLeft)
   (if __ticksLeft (setq _ticksLeft __ticksLeft)) _ticksLeft)
  (:ticksRight
   (&optional __ticksRight)
   (if __ticksRight (setq _ticksRight __ticksRight)) _ticksRight)
  (:calibOverallMultiplier
   (&optional __calibOverallMultiplier)
   (if __calibOverallMultiplier (setq _calibOverallMultiplier __calibOverallMultiplier)) _calibOverallMultiplier)
  (:calibLeftEncMultiplier
   (&optional __calibLeftEncMultiplier)
   (if __calibLeftEncMultiplier (setq _calibLeftEncMultiplier __calibLeftEncMultiplier)) _calibLeftEncMultiplier)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _hardwareTimestamp
    8
    ;; float64 _totalDistance
    8
    ;; float64 _theta
    8
    ;; int64 _ticksLeft
    8
    ;; int64 _ticksRight
    8
    ;; float64 _calibOverallMultiplier
    8
    ;; float64 _calibLeftEncMultiplier
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _hardwareTimestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _hardwareTimestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _hardwareTimestamp) (= (length (_hardwareTimestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_hardwareTimestamp . bv) 0) 0) s)
              (write-long (ash (elt (_hardwareTimestamp . bv) 1) -1) s))
             ((and (class _hardwareTimestamp) (= (length (_hardwareTimestamp . bv)) 1)) ;; big1
              (write-long (elt (_hardwareTimestamp . bv) 0) s)
              (write-long (if (>= _hardwareTimestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _hardwareTimestamp s)(write-long (if (>= _hardwareTimestamp 0) 0 #xffffffff) s)))
     ;; float64 _totalDistance
       (sys::poke _totalDistance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _ticksLeft
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ticksLeft (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ticksLeft) (= (length (_ticksLeft . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ticksLeft . bv) 0) 0) s)
              (write-long (ash (elt (_ticksLeft . bv) 1) -1) s))
             ((and (class _ticksLeft) (= (length (_ticksLeft . bv)) 1)) ;; big1
              (write-long (elt (_ticksLeft . bv) 0) s)
              (write-long (if (>= _ticksLeft 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ticksLeft s)(write-long (if (>= _ticksLeft 0) 0 #xffffffff) s)))
     ;; int64 _ticksRight
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ticksRight (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ticksRight) (= (length (_ticksRight . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ticksRight . bv) 0) 0) s)
              (write-long (ash (elt (_ticksRight . bv) 1) -1) s))
             ((and (class _ticksRight) (= (length (_ticksRight . bv)) 1)) ;; big1
              (write-long (elt (_ticksRight . bv) 0) s)
              (write-long (if (>= _ticksRight 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ticksRight s)(write-long (if (>= _ticksRight 0) 0 #xffffffff) s)))
     ;; float64 _calibOverallMultiplier
       (sys::poke _calibOverallMultiplier (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _calibLeftEncMultiplier
       (sys::poke _calibLeftEncMultiplier (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _hardwareTimestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _hardwareTimestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _hardwareTimestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _totalDistance
     (setq _totalDistance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _ticksLeft
#+(or :alpha :irix6 :x86_64)
      (setf _ticksLeft (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ticksLeft (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ticksRight
#+(or :alpha :irix6 :x86_64)
      (setf _ticksRight (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ticksRight (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _calibOverallMultiplier
     (setq _calibOverallMultiplier (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _calibLeftEncMultiplier
     (setq _calibLeftEncMultiplier (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get spencer_bagfile_tools::AdditionalOdometryData :md5sum-) "ab677b3c60eb604fa8c19025b90f80c1")
(setf (get spencer_bagfile_tools::AdditionalOdometryData :datatype-) "spencer_bagfile_tools/AdditionalOdometryData")
(setf (get spencer_bagfile_tools::AdditionalOdometryData :definition-)
      "Header header # message header

uint64 hardwareTimestamp # milliseconds in hardware time since power-on

float64 totalDistance # total absolute distance travelled so far (i.e. 10m forward, 10m backward => 20m)
float64 theta # current theta angle in radians

int64 ticksLeft # raw ticks of left encoder
int64 ticksRight # raw ticks of right encoder

float64 calibOverallMultiplier # calibration factor applied to both encoders' raw ticks
float64 calibLeftEncMultiplier # calibration factor applied to only the left encoders' raw ticks, in addition to calibOverallMultiplier
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



(provide :spencer_bagfile_tools/AdditionalOdometryData "ab677b3c60eb604fa8c19025b90f80c1")


