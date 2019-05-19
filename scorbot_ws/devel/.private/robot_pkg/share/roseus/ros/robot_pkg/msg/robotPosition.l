;; Auto-generated. Do not edit!


(when (boundp 'robot_pkg::robotPosition)
  (if (not (find-package "ROBOT_PKG"))
    (make-package "ROBOT_PKG"))
  (shadow 'robotPosition (find-package "ROBOT_PKG")))
(unless (find-package "ROBOT_PKG::ROBOTPOSITION")
  (make-package "ROBOT_PKG::ROBOTPOSITION"))

(in-package "ROS")
;;//! \htmlinclude robotPosition.msg.html


(defclass robot_pkg::robotPosition
  :super ros::object
  :slots (_robotAction ))

(defmethod robot_pkg::robotPosition
  (:init
   (&key
    ((:robotAction __robotAction) (let (r) (dotimes (i 6) (push (instance robot_pkg::robotJointAction :init) r)) r))
    )
   (send-super :init)
   (setq _robotAction __robotAction)
   self)
  (:robotAction
   (&rest __robotAction)
   (if (keywordp (car __robotAction))
       (send* _robotAction __robotAction)
     (progn
       (if __robotAction (setq _robotAction (car __robotAction)))
       _robotAction)))
  (:serialization-length
   ()
   (+
    ;; robot_pkg/robotJointAction[6] _robotAction
    (apply #'+ (send-all _robotAction :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_pkg/robotJointAction[6] _robotAction
     (dolist (elem _robotAction)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_pkg/robotJointAction[6] _robotAction
   (dotimes (i 6)
     (send (elt _robotAction i) :deserialize buf ptr-) (incf ptr- (send (elt _robotAction i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get robot_pkg::robotPosition :md5sum-) "3c1462b9022dcefd95a1a401dee2a956")
(setf (get robot_pkg::robotPosition :datatype-) "robot_pkg/robotPosition")
(setf (get robot_pkg::robotPosition :definition-)
      "robotJointAction[6]           robotAction          # array of data to send each motor

================================================================================
MSG: robot_pkg/robotJointAction

Header           header
int8           motor
int8           action
int16           position
int16           velocity

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :robot_pkg/robotPosition "3c1462b9022dcefd95a1a401dee2a956")


