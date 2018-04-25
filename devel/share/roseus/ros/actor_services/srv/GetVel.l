;; Auto-generated. Do not edit!


(when (boundp 'actor_services::GetVel)
  (if (not (find-package "ACTOR_SERVICES"))
    (make-package "ACTOR_SERVICES"))
  (shadow 'GetVel (find-package "ACTOR_SERVICES")))
(unless (find-package "ACTOR_SERVICES::GETVEL")
  (make-package "ACTOR_SERVICES::GETVEL"))
(unless (find-package "ACTOR_SERVICES::GETVELREQUEST")
  (make-package "ACTOR_SERVICES::GETVELREQUEST"))
(unless (find-package "ACTOR_SERVICES::GETVELRESPONSE")
  (make-package "ACTOR_SERVICES::GETVELRESPONSE"))

(in-package "ROS")





(defclass actor_services::GetVelRequest
  :super ros::object
  :slots (_set_flag _new_x _new_y _new_yaw ))

(defmethod actor_services::GetVelRequest
  (:init
   (&key
    ((:set_flag __set_flag) nil)
    ((:new_x __new_x) 0.0)
    ((:new_y __new_y) 0.0)
    ((:new_yaw __new_yaw) 0.0)
    )
   (send-super :init)
   (setq _set_flag __set_flag)
   (setq _new_x (float __new_x))
   (setq _new_y (float __new_y))
   (setq _new_yaw (float __new_yaw))
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
  (:new_yaw
   (&optional __new_yaw)
   (if __new_yaw (setq _new_yaw __new_yaw)) _new_yaw)
  (:serialization-length
   ()
   (+
    ;; bool _set_flag
    1
    ;; float32 _new_x
    4
    ;; float32 _new_y
    4
    ;; float32 _new_yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_flag
       (if _set_flag (write-byte -1 s) (write-byte 0 s))
     ;; float32 _new_x
       (sys::poke _new_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _new_y
       (sys::poke _new_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _new_yaw
       (sys::poke _new_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_flag
     (setq _set_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _new_x
     (setq _new_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _new_y
     (setq _new_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _new_yaw
     (setq _new_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass actor_services::GetVelResponse
  :super ros::object
  :slots (_x _y _yaw ))

(defmethod actor_services::GetVelResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass actor_services::GetVel
  :super ros::object
  :slots ())

(setf (get actor_services::GetVel :md5sum-) "f641daffe2334e864223c2a993ab4b8b")
(setf (get actor_services::GetVel :datatype-) "actor_services/GetVel")
(setf (get actor_services::GetVel :request) actor_services::GetVelRequest)
(setf (get actor_services::GetVel :response) actor_services::GetVelResponse)

(defmethod actor_services::GetVelRequest
  (:response () (instance actor_services::GetVelResponse :init)))

(setf (get actor_services::GetVelRequest :md5sum-) "f641daffe2334e864223c2a993ab4b8b")
(setf (get actor_services::GetVelRequest :datatype-) "actor_services/GetVelRequest")
(setf (get actor_services::GetVelRequest :definition-)
      "bool set_flag
float32 new_x
float32 new_y
float32 new_yaw
---
float32 x
float32 y
float32 yaw

")

(setf (get actor_services::GetVelResponse :md5sum-) "f641daffe2334e864223c2a993ab4b8b")
(setf (get actor_services::GetVelResponse :datatype-) "actor_services/GetVelResponse")
(setf (get actor_services::GetVelResponse :definition-)
      "bool set_flag
float32 new_x
float32 new_y
float32 new_yaw
---
float32 x
float32 y
float32 yaw

")



(provide :actor_services/GetVel "f641daffe2334e864223c2a993ab4b8b")


