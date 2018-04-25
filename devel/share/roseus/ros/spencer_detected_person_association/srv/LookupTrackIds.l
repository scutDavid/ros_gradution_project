;; Auto-generated. Do not edit!


(when (boundp 'spencer_detected_person_association::LookupTrackIds)
  (if (not (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION"))
    (make-package "SPENCER_DETECTED_PERSON_ASSOCIATION"))
  (shadow 'LookupTrackIds (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION")))
(unless (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDS")
  (make-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDS"))
(unless (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDSREQUEST")
  (make-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDSREQUEST"))
(unless (find-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDSRESPONSE")
  (make-package "SPENCER_DETECTED_PERSON_ASSOCIATION::LOOKUPTRACKIDSRESPONSE"))

(in-package "ROS")





(defclass spencer_detected_person_association::LookupTrackIdsRequest
  :super ros::object
  :slots (_detection_ids ))

(defmethod spencer_detected_person_association::LookupTrackIdsRequest
  (:init
   (&key
    ((:detection_ids __detection_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _detection_ids __detection_ids)
   self)
  (:detection_ids
   (&optional __detection_ids)
   (if __detection_ids (setq _detection_ids __detection_ids)) _detection_ids)
  (:serialization-length
   ()
   (+
    ;; uint64[] _detection_ids
    (* 8    (length _detection_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64[] _detection_ids
     (write-long (length _detection_ids) s)
     (dotimes (i (length _detection_ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _detection_ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _detection_ids i)) (= (length ((elt _detection_ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _detection_ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _detection_ids i) . bv) 1) -1) s))
             ((and (class (elt _detection_ids i)) (= (length ((elt _detection_ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _detection_ids i) . bv) 0) s)
              (write-long (if (>= (elt _detection_ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _detection_ids i) s)(write-long (if (>= (elt _detection_ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64[] _detection_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detection_ids (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _detection_ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _detection_ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass spencer_detected_person_association::LookupTrackIdsResponse
  :super ros::object
  :slots (_was_found _track_ids ))

(defmethod spencer_detected_person_association::LookupTrackIdsResponse
  (:init
   (&key
    ((:was_found __was_found) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:track_ids __track_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _was_found __was_found)
   (setq _track_ids __track_ids)
   self)
  (:was_found
   (&optional __was_found)
   (if __was_found (setq _was_found __was_found)) _was_found)
  (:track_ids
   (&optional __track_ids)
   (if __track_ids (setq _track_ids __track_ids)) _track_ids)
  (:serialization-length
   ()
   (+
    ;; bool[] _was_found
    (* 1    (length _was_found)) 4
    ;; uint64[] _track_ids
    (* 8    (length _track_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _was_found
     (write-long (length _was_found) s)
     (dotimes (i (length _was_found))
       (if (elt _was_found i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint64[] _track_ids
     (write-long (length _track_ids) s)
     (dotimes (i (length _track_ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _track_ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _track_ids i)) (= (length ((elt _track_ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _track_ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _track_ids i) . bv) 1) -1) s))
             ((and (class (elt _track_ids i)) (= (length ((elt _track_ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _track_ids i) . bv) 0) s)
              (write-long (if (>= (elt _track_ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _track_ids i) s)(write-long (if (>= (elt _track_ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _was_found
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _was_found (make-list n))
     (dotimes (i n)
     (setf (elt _was_found i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint64[] _track_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _track_ids (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _track_ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _track_ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass spencer_detected_person_association::LookupTrackIds
  :super ros::object
  :slots ())

(setf (get spencer_detected_person_association::LookupTrackIds :md5sum-) "fdbfb9d136dcf8dca2f9e4ae81a993ad")
(setf (get spencer_detected_person_association::LookupTrackIds :datatype-) "spencer_detected_person_association/LookupTrackIds")
(setf (get spencer_detected_person_association::LookupTrackIds :request) spencer_detected_person_association::LookupTrackIdsRequest)
(setf (get spencer_detected_person_association::LookupTrackIds :response) spencer_detected_person_association::LookupTrackIdsResponse)

(defmethod spencer_detected_person_association::LookupTrackIdsRequest
  (:response () (instance spencer_detected_person_association::LookupTrackIdsResponse :init)))

(setf (get spencer_detected_person_association::LookupTrackIdsRequest :md5sum-) "fdbfb9d136dcf8dca2f9e4ae81a993ad")
(setf (get spencer_detected_person_association::LookupTrackIdsRequest :datatype-) "spencer_detected_person_association/LookupTrackIdsRequest")
(setf (get spencer_detected_person_association::LookupTrackIdsRequest :definition-)
      "uint64[]      detection_ids
---
bool[]        was_found
uint64[]      track_ids
")

(setf (get spencer_detected_person_association::LookupTrackIdsResponse :md5sum-) "fdbfb9d136dcf8dca2f9e4ae81a993ad")
(setf (get spencer_detected_person_association::LookupTrackIdsResponse :datatype-) "spencer_detected_person_association/LookupTrackIdsResponse")
(setf (get spencer_detected_person_association::LookupTrackIdsResponse :definition-)
      "uint64[]      detection_ids
---
bool[]        was_found
uint64[]      track_ids
")



(provide :spencer_detected_person_association/LookupTrackIds "fdbfb9d136dcf8dca2f9e4ae81a993ad")


