
(cl:in-package :asdf)

(defsystem "actor_services-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetVel" :depends-on ("_package_GetVel"))
    (:file "_package_GetVel" :depends-on ("_package"))
    (:file "SetPose" :depends-on ("_package_SetPose"))
    (:file "_package_SetPose" :depends-on ("_package"))
  ))