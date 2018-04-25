
(cl:in-package :asdf)

(defsystem "spencer_bagfile_tools-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AdditionalOdometryData" :depends-on ("_package_AdditionalOdometryData"))
    (:file "_package_AdditionalOdometryData" :depends-on ("_package"))
  ))