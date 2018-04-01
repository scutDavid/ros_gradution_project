
(cl:in-package :asdf)

(defsystem "first_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "A" :depends-on ("_package_A"))
    (:file "_package_A" :depends-on ("_package"))
  ))