;; Auto-generated. Do not edit!


(when (boundp 'first_pkg::Num)
  (if (not (find-package "FIRST_PKG"))
    (make-package "FIRST_PKG"))
  (shadow 'Num (find-package "FIRST_PKG")))
(unless (find-package "FIRST_PKG::NUM")
  (make-package "FIRST_PKG::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass first_pkg::Num
  :super ros::object
  :slots (_age ))

(defmethod first_pkg::Num
  (:init
   (&key
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _age (round __age))
   self)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; uint8 _age
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _age
       (write-byte _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get first_pkg::Num :md5sum-) "b3419afdf362438ee3543a542267b428")
(setf (get first_pkg::Num :datatype-) "first_pkg/Num")
(setf (get first_pkg::Num :definition-)
      "uint8 age

")



(provide :first_pkg/Num "b3419afdf362438ee3543a542267b428")


