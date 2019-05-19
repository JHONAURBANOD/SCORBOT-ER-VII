;; Auto-generated. Do not edit!


(when (boundp 'robot_pkg::robotJointAction)
  (if (not (find-package "ROBOT_PKG"))
    (make-package "ROBOT_PKG"))
  (shadow 'robotJointAction (find-package "ROBOT_PKG")))
(unless (find-package "ROBOT_PKG::ROBOTJOINTACTION")
  (make-package "ROBOT_PKG::ROBOTJOINTACTION"))

(in-package "ROS")
;;//! \htmlinclude robotJointAction.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_pkg::robotJointAction
  :super ros::object
  :slots (_header _motor _action _position _velocity ))

(defmethod robot_pkg::robotJointAction
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor __motor) 0)
    ((:action __action) 0)
    ((:position __position) 0)
    ((:velocity __velocity) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor (round __motor))
   (setq _action (round __action))
   (setq _position (round __position))
   (setq _velocity (round __velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor
   (&optional __motor)
   (if __motor (setq _motor __motor)) _motor)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _motor
    1
    ;; int8 _action
    1
    ;; int16 _position
    2
    ;; int16 _velocity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _motor
       (write-byte _motor s)
     ;; int8 _action
       (write-byte _action s)
     ;; int16 _position
       (write-word _position s)
     ;; int16 _velocity
       (write-word _velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _motor
     (setq _motor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _motor 127) (setq _motor (- _motor 256)))
   ;; int8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action 127) (setq _action (- _action 256)))
   ;; int16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _velocity
     (setq _velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robot_pkg::robotJointAction :md5sum-) "d0326b0598c600658f7dc5ddec01e4b4")
(setf (get robot_pkg::robotJointAction :datatype-) "robot_pkg/robotJointAction")
(setf (get robot_pkg::robotJointAction :definition-)
      "
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



(provide :robot_pkg/robotJointAction "d0326b0598c600658f7dc5ddec01e4b4")


