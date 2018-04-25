
(cl:in-package :asdf)

(defsystem "rwth_perception_people_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AnnotatedFrame" :depends-on ("_package_AnnotatedFrame"))
    (:file "_package_AnnotatedFrame" :depends-on ("_package"))
    (:file "Annotation" :depends-on ("_package_Annotation"))
    (:file "_package_Annotation" :depends-on ("_package"))
    (:file "GroundHOGDetections" :depends-on ("_package_GroundHOGDetections"))
    (:file "_package_GroundHOGDetections" :depends-on ("_package"))
    (:file "GroundPlane" :depends-on ("_package_GroundPlane"))
    (:file "_package_GroundPlane" :depends-on ("_package"))
    (:file "PedestrianLocations" :depends-on ("_package_PedestrianLocations"))
    (:file "_package_PedestrianLocations" :depends-on ("_package"))
    (:file "PedestrianTracking" :depends-on ("_package_PedestrianTracking"))
    (:file "_package_PedestrianTracking" :depends-on ("_package"))
    (:file "PedestrianTrackingArray" :depends-on ("_package_PedestrianTrackingArray"))
    (:file "_package_PedestrianTrackingArray" :depends-on ("_package"))
    (:file "UpperBodyDetector" :depends-on ("_package_UpperBodyDetector"))
    (:file "_package_UpperBodyDetector" :depends-on ("_package"))
    (:file "VisualOdometry" :depends-on ("_package_VisualOdometry"))
    (:file "_package_VisualOdometry" :depends-on ("_package"))
  ))