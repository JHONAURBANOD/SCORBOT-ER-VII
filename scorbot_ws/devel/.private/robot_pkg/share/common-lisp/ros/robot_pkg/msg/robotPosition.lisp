; Auto-generated. Do not edit!


(cl:in-package robot_pkg-msg)


;//! \htmlinclude robotPosition.msg.html

(cl:defclass <robotPosition> (roslisp-msg-protocol:ros-message)
  ((robotAction
    :reader robotAction
    :initarg :robotAction
    :type (cl:vector robot_pkg-msg:robotJointAction)
   :initform (cl:make-array 6 :element-type 'robot_pkg-msg:robotJointAction :initial-element (cl:make-instance 'robot_pkg-msg:robotJointAction))))
)

(cl:defclass robotPosition (<robotPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_pkg-msg:<robotPosition> is deprecated: use robot_pkg-msg:robotPosition instead.")))

(cl:ensure-generic-function 'robotAction-val :lambda-list '(m))
(cl:defmethod robotAction-val ((m <robotPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pkg-msg:robotAction-val is deprecated.  Use robot_pkg-msg:robotAction instead.")
  (robotAction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotPosition>) ostream)
  "Serializes a message object of type '<robotPosition>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robotAction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotPosition>) istream)
  "Deserializes a message object of type '<robotPosition>"
  (cl:setf (cl:slot-value msg 'robotAction) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'robotAction)))
    (cl:dotimes (i 6)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_pkg-msg:robotJointAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotPosition>)))
  "Returns string type for a message object of type '<robotPosition>"
  "robot_pkg/robotPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotPosition)))
  "Returns string type for a message object of type 'robotPosition"
  "robot_pkg/robotPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotPosition>)))
  "Returns md5sum for a message object of type '<robotPosition>"
  "3c1462b9022dcefd95a1a401dee2a956")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotPosition)))
  "Returns md5sum for a message object of type 'robotPosition"
  "3c1462b9022dcefd95a1a401dee2a956")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotPosition>)))
  "Returns full string definition for message of type '<robotPosition>"
  (cl:format cl:nil "robotJointAction[6]           robotAction          # array of data to send each motor~%~%================================================================================~%MSG: robot_pkg/robotJointAction~%~%Header           header~%int8           motor~%int8           action~%int16           position~%int16           velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotPosition)))
  "Returns full string definition for message of type 'robotPosition"
  (cl:format cl:nil "robotJointAction[6]           robotAction          # array of data to send each motor~%~%================================================================================~%MSG: robot_pkg/robotJointAction~%~%Header           header~%int8           motor~%int8           action~%int16           position~%int16           velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotPosition>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'robotAction) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'robotPosition
    (cl:cons ':robotAction (robotAction msg))
))
