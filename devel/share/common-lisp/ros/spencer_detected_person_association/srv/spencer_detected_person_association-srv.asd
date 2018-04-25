
(cl:in-package :asdf)

(defsystem "spencer_detected_person_association-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LookupTrackId" :depends-on ("_package_LookupTrackId"))
    (:file "_package_LookupTrackId" :depends-on ("_package"))
    (:file "LookupTrackIds" :depends-on ("_package_LookupTrackIds"))
    (:file "_package_LookupTrackIds" :depends-on ("_package"))
  ))