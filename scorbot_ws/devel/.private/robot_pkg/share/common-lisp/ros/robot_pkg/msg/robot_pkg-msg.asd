
(cl:in-package :asdf)

(defsystem "robot_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ARMarker" :depends-on ("_package_ARMarker"))
    (:file "_package_ARMarker" :depends-on ("_package"))
    (:file "ARMarker" :depends-on ("_package_ARMarker"))
    (:file "_package_ARMarker" :depends-on ("_package"))
    (:file "robotJointAction" :depends-on ("_package_robotJointAction"))
    (:file "_package_robotJointAction" :depends-on ("_package"))
    (:file "robotJointAction" :depends-on ("_package_robotJointAction"))
    (:file "_package_robotJointAction" :depends-on ("_package"))
    (:file "robotPosition" :depends-on ("_package_robotPosition"))
    (:file "_package_robotPosition" :depends-on ("_package"))
    (:file "robotPosition" :depends-on ("_package_robotPosition"))
    (:file "_package_robotPosition" :depends-on ("_package"))
  ))