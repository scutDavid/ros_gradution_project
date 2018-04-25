;; Auto-generated. Do not edit!


(when (boundp 'actor_services::SetPose)
  (if (not (find-package "ACTOR_SERVICES"))
    (make-package "ACTOR_SERVICES"))
  (shadow 'SetPose (find-package "ACTOR_SERVICES")))
(unless (find-package "ACTOR_SERVICES::SETPOSE")
  (make-package "ACTOR_SERVICES::SETPOSE"))
(unless (find-package "ACTOR_SERVICES::SETPOSEREQUEST")
  (make-package "ACTOR_SERVICES::SETPOSEREQUEST"))
(unless (find-package "ACTOR_SERVICES::SETPOSERESPONSE")
  (make-package "ACTOR_SERVICES::SETPOSERESPONSE"))

(in-package "ROS")





(defclass actor_services::SetPoseRequest
  :super ros::object
  :slots (_set_flag _new_x _new_y ))

(defmethod actor_services::SetPoseRequest
  (:init
   (&key
    ((:set_flag __set_flag) nil)
    ((:new_x __new_x) 0.0)
    ((:new_y __new_y) 0.0)
    )
   (send-super :init)
   (setq _set_flag __set_flag)
   (setq _new_x (float __new_x))
   (setq _new_y (float __new_y))
   self)
  (:set_flag
   (&optional __set_flag)
   (if __set_flag (setq _set_flag __set_flag)) _set_flag)
  (:new_x
   (&optional __new_x)
   (if __new_x (setq _new_x __new_x)) _new_x)
  (:new_y
   (&optional __new_y)
   (if __new_y (setq _new_y __new_y)) _new_y)
  (:serialization-length
   ()
   (+
    ;; bool _set_flag
    1
    ;; float64 _new_x
    8
    ;; float64 _new_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_flag
       (if _set_flag (write-byte -1 s) (write-byte 0 s))
     ;; float64 _new_x
       (sys::poke _new_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _new_y
       (sys::poke _new_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_flag
     (setq _set_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _new_x
     (setq _new_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _new_y
     (setq _new_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass actor_services::SetPoseResponse
  :super ros::object
  :slots (_x _y ))

(defmethod actor_services::SetPoseResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass actor_services::SetPose
  :super ros::object
  :slots ())

(setf (get actor_services::SetPose :md5sum-) "d6701dc5a74a339cdbcd7f9e473eadfa")
(setf (get actor_services::SetPose :datatype-) "actor_services/SetPose")
(setf (get actor_services::SetPose :request) actor_services::SetPoseRequest)
(setf (get actor_services::SetPose :response) actor_services::SetPoseResponse)

(defmethod actor_services::SetPoseRequest
  (:response () (instance actor_services::SetPoseResponse :init)))

(setf (get actor_services::SetPoseRequest :md5sum-) "d6701dc5a74a339cdbcd7f9e473eadfa")
(setf (get actor_services::SetPoseRequest :datatype-) "actor_services/SetPoseRequest")
(setf (get actor_services::SetPoseRequest :definition-)
      "bool set_flag
float64 new_x
float64 new_y

---
float64 x
float64 y

")

(setf (get actor_services::SetPoseResponse :md5sum-) "d6701dc5a74a339cdbcd7f9e473eadfa")
(setf (get actor_services::SetPoseResponse :datatype-) "actor_services/SetPoseResponse")
(setf (get actor_services::SetPoseResponse :definition-)
      "bool set_flag
float64 new_x
float64 new_y

---
float64 x
float64 y

")



(provide :actor_services/SetPose "d6701dc5a74a339cdbcd7f9e473eadfa")


