;; Auto-generated. Do not edit!


(when (boundp 'srl_tracking_exporter::JobFinished)
  (if (not (find-package "SRL_TRACKING_EXPORTER"))
    (make-package "SRL_TRACKING_EXPORTER"))
  (shadow 'JobFinished (find-package "SRL_TRACKING_EXPORTER")))
(unless (find-package "SRL_TRACKING_EXPORTER::JOBFINISHED")
  (make-package "SRL_TRACKING_EXPORTER::JOBFINISHED"))
(unless (find-package "SRL_TRACKING_EXPORTER::JOBFINISHEDREQUEST")
  (make-package "SRL_TRACKING_EXPORTER::JOBFINISHEDREQUEST"))
(unless (find-package "SRL_TRACKING_EXPORTER::JOBFINISHEDRESPONSE")
  (make-package "SRL_TRACKING_EXPORTER::JOBFINISHEDRESPONSE"))

(in-package "ROS")





(defclass srl_tracking_exporter::JobFinishedRequest
  :super ros::object
  :slots (_job_name ))

(defmethod srl_tracking_exporter::JobFinishedRequest
  (:init
   (&key
    ((:job_name __job_name) "")
    )
   (send-super :init)
   (setq _job_name (string __job_name))
   self)
  (:job_name
   (&optional __job_name)
   (if __job_name (setq _job_name __job_name)) _job_name)
  (:serialization-length
   ()
   (+
    ;; string _job_name
    4 (length _job_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _job_name
       (write-long (length _job_name) s) (princ _job_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _job_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _job_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass srl_tracking_exporter::JobFinishedResponse
  :super ros::object
  :slots ())

(defmethod srl_tracking_exporter::JobFinishedResponse
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

(defclass srl_tracking_exporter::JobFinished
  :super ros::object
  :slots ())

(setf (get srl_tracking_exporter::JobFinished :md5sum-) "d920fe80478d88b925da2abe2df35139")
(setf (get srl_tracking_exporter::JobFinished :datatype-) "srl_tracking_exporter/JobFinished")
(setf (get srl_tracking_exporter::JobFinished :request) srl_tracking_exporter::JobFinishedRequest)
(setf (get srl_tracking_exporter::JobFinished :response) srl_tracking_exporter::JobFinishedResponse)

(defmethod srl_tracking_exporter::JobFinishedRequest
  (:response () (instance srl_tracking_exporter::JobFinishedResponse :init)))

(setf (get srl_tracking_exporter::JobFinishedRequest :md5sum-) "d920fe80478d88b925da2abe2df35139")
(setf (get srl_tracking_exporter::JobFinishedRequest :datatype-) "srl_tracking_exporter/JobFinishedRequest")
(setf (get srl_tracking_exporter::JobFinishedRequest :definition-)
      "string job_name
---
")

(setf (get srl_tracking_exporter::JobFinishedResponse :md5sum-) "d920fe80478d88b925da2abe2df35139")
(setf (get srl_tracking_exporter::JobFinishedResponse :datatype-) "srl_tracking_exporter/JobFinishedResponse")
(setf (get srl_tracking_exporter::JobFinishedResponse :definition-)
      "string job_name
---
")



(provide :srl_tracking_exporter/JobFinished "d920fe80478d88b925da2abe2df35139")


