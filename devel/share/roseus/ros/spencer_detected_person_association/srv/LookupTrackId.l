;; Auto-generated. Do not edit!


(when (boundp 'spencer_detected_person_association::LookupTrackId)
  (if (not (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION"))
    (make-package "SPENCER_DETECTED_PERSON_ASSOCIATION"))
  (shadow 'LookupTrackId (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION")))
(unless (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKID")
  (make-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKID"))
(unless (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDREQUEST")
  (make-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDREQUEST"))
(unless (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDRESPONSE")
  (make-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDRESPONSE"))

(in-package "ROS")





(defclass spencer_detected_person_association::LookupTrackIdRequest
  :super ros::object
  :slots (_detection_id ))

(defmethod spencer_detected_person_association::LookupTrackIdRequest
  (:init
   (&key
    ((:detection_id __detection_id) 0)
    )
   (send-super :init)
   (setq _detection_id (round __detection_id))
   self)
  (:detection_id
   (&optional __detection_id)
   (if __detection_id (setq _detection_id __detection_id)) _detection_id)
  (:serialization-length
   ()
   (+
    ;; uint64 _detection_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _detection_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _detection_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _detection_id) (= (length (_detection_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_detection_id . bv) 0) 0) s)
              (write-long (ash (elt (_detection_id . bv) 1) -1) s))
             ((and (class _detection_id) (= (length (_detection_id . bv)) 1)) ;; big1
              (write-long (elt (_detection_id . bv) 0) s)
              (write-long (if (>= _detection_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _detection_id s)(write-long (if (>= _detection_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _detection_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _detection_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _detection_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass spencer_detected_person_association::LookupTrackIdResponse
  :super ros::object
  :slots (_was_found _track_id ))

(defmethod spencer_detected_person_association::LookupTrackIdResponse
  (:init
   (&key
    ((:was_found __was_found) nil)
    ((:track_id __track_id) 0)
    )
   (send-super :init)
   (setq _was_found __was_found)
   (setq _track_id (round __track_id))
   self)
  (:was_found
   (&optional __was_found)
   (if __was_found (setq _was_found __was_found)) _was_found)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:serialization-length
   ()
   (+
    ;; bool _was_found
    1
    ;; uint64 _track_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _was_found
       (if _was_found (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _was_found
     (setq _was_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _track_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass spencer_detected_person_association::LookupTrackId
  :super ros::object
  :slots ())

(setf (get spencer_detected_person_association::LookupTrackId :md5sum-) "d6b0b1132d3ddba53683fd3082b74b2a")
(setf (get spencer_detected_person_association::LookupTrackId :datatype-) "spencer_detected_person_association/LookupTrackId")
(setf (get spencer_detected_person_association::LookupTrackId :request) spencer_detected_person_association::LookupTrackIdRequest)
(setf (get spencer_detected_person_association::LookupTrackId :response) spencer_detected_person_association::LookupTrackIdResponse)

(defmethod spencer_detected_person_association::LookupTrackIdRequest
  (:response () (instance spencer_detected_person_association::LookupTrackIdResponse :init)))

(setf (get spencer_detected_person_association::LookupTrackIdRequest :md5sum-) "d6b0b1132d3ddba53683fd3082b74b2a")
(setf (get spencer_detected_person_association::LookupTrackIdRequest :datatype-) "spencer_detected_person_association/LookupTrackIdRequest")
(setf (get spencer_detected_person_association::LookupTrackIdRequest :definition-)
      "uint64      detection_id
---
bool        was_found
uint64      track_id
")

(setf (get spencer_detected_person_association::LookupTrackIdResponse :md5sum-) "d6b0b1132d3ddba53683fd3082b74b2a")
(setf (get spencer_detected_person_association::LookupTrackIdResponse :datatype-) "spencer_detected_person_association/LookupTrackIdResponse")
(setf (get spencer_detected_person_association::LookupTrackIdResponse :definition-)
      "uint64      detection_id
---
bool        was_found
uint64      track_id
")



(provide :spencer_detected_person_association/LookupTrackId "d6b0b1132d3ddba53683fd3082b74b2a")


