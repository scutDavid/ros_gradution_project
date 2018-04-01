;; Auto-generated. Do not edit!


(when (boundp 'qq::Num)
  (if (not (find-package "QQ"))
    (make-package "QQ"))
  (shadow 'Num (find-package "QQ")))
(unless (find-package "QQ::NUM")
  (make-package "QQ::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass qq::Num
  :super ros::object
  :slots (_age ))

(defmethod qq::Num
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

(setf (get qq::Num :md5sum-) "b3419afdf362438ee3543a542267b428")
(setf (get qq::Num :datatype-) "qq/Num")
(setf (get qq::Num :definition-)
      "uint8 age

")



(provide :qq/Num "b3419afdf362438ee3543a542267b428")


