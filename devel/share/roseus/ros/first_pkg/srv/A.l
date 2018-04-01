;; Auto-generated. Do not edit!


(when (boundp 'first_pkg::A)
  (if (not (find-package "FIRST_PKG"))
    (make-package "FIRST_PKG"))
  (shadow 'A (find-package "FIRST_PKG")))
(unless (find-package "FIRST_PKG::A")
  (make-package "FIRST_PKG::A"))
(unless (find-package "FIRST_PKG::AREQUEST")
  (make-package "FIRST_PKG::AREQUEST"))
(unless (find-package "FIRST_PKG::ARESPONSE")
  (make-package "FIRST_PKG::ARESPONSE"))

(in-package "ROS")





(defclass first_pkg::ARequest
  :super ros::object
  :slots (_A ))

(defmethod first_pkg::ARequest
  (:init
   (&key
    ((:A __A) 0)
    )
   (send-super :init)
   (setq _A (round __A))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:serialization-length
   ()
   (+
    ;; int64 _A
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _A
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _A (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _A) (= (length (_A . bv)) 2)) ;; bignum
              (write-long (ash (elt (_A . bv) 0) 0) s)
              (write-long (ash (elt (_A . bv) 1) -1) s))
             ((and (class _A) (= (length (_A . bv)) 1)) ;; big1
              (write-long (elt (_A . bv) 0) s)
              (write-long (if (>= _A 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _A s)(write-long (if (>= _A 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _A
#+(or :alpha :irix6 :x86_64)
      (setf _A (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _A (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass first_pkg::AResponse
  :super ros::object
  :slots ())

(defmethod first_pkg::AResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass first_pkg::A
  :super ros::object
  :slots ())

(setf (get first_pkg::A :md5sum-) "cacada641c8116215aaa1be2ff0da518")
(setf (get first_pkg::A :datatype-) "first_pkg/A")
(setf (get first_pkg::A :request) first_pkg::ARequest)
(setf (get first_pkg::A :response) first_pkg::AResponse)

(defmethod first_pkg::ARequest
  (:response () (instance first_pkg::AResponse :init)))

(setf (get first_pkg::ARequest :md5sum-) "cacada641c8116215aaa1be2ff0da518")
(setf (get first_pkg::ARequest :datatype-) "first_pkg/ARequest")
(setf (get first_pkg::ARequest :definition-)
      "int64 A

---
")

(setf (get first_pkg::AResponse :md5sum-) "cacada641c8116215aaa1be2ff0da518")
(setf (get first_pkg::AResponse :datatype-) "first_pkg/AResponse")
(setf (get first_pkg::AResponse :definition-)
      "int64 A

---
")



(provide :first_pkg/A "cacada641c8116215aaa1be2ff0da518")


