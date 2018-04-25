
(cl:in-package :asdf)

(defsystem "srl_laser_segmentation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LaserscanSegment" :depends-on ("_package_LaserscanSegment"))
    (:file "_package_LaserscanSegment" :depends-on ("_package"))
    (:file "LaserscanSegmentation" :depends-on ("_package_LaserscanSegmentation"))
    (:file "_package_LaserscanSegmentation" :depends-on ("_package"))
  ))