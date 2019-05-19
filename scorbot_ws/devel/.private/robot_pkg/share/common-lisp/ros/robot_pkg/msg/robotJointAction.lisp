; Auto-generated. Do not edit!


(cl:in-package robot_pkg-msg)


;//! \htmlinclude robotJointAction.msg.html

(cl:defclass <robotJointAction> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor
    :reader motor
    :initarg :motor
    :type cl:fixnum
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass robotJointAction (<robotJointAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotJointAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotJointAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_pkg-msg:<robotJointAction> is deprecated: use robot_pkg-msg:robotJointAction instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <robotJointAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pkg-msg:header-val is deprecated.  Use robot_pkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <robotJointAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pkg-msg:motor-val is deprecated.  Use robot_pkg-msg:motor instead.")
  (motor m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <robotJointAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pkg-msg:action-val is deprecated.  Use robot_pkg-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <robotJointAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pkg-msg:position-val is deprecated.  Use robot_pkg-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <robotJointAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pkg-msg:velocity-val is deprecated.  Use robot_pkg-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotJointAction>) ostream)
  "Serializes a message object of type '<robotJointAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotJointAction>) istream)
  "Deserializes a message object of type '<robotJointAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotJointAction>)))
  "Returns string type for a message object of type '<robotJointAction>"
  "robot_pkg/robotJointAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotJointAction)))
  "Returns string type for a message object of type 'robotJointAction"
  "robot_pkg/robotJointAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotJointAction>)))
  "Returns md5sum for a message object of type '<robotJointAction>"
  "d0326b0598c600658f7dc5ddec01e4b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotJointAction)))
  "Returns md5sum for a message object of type 'robotJointAction"
  "d0326b0598c600658f7dc5ddec01e4b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotJointAction>)))
  "Returns full string definition for message of type '<robotJointAction>"
  (cl:format cl:nil "~%Header           header~%int8           motor~%int8           action~%int16           position~%int16           velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotJointAction)))
  "Returns full string definition for message of type 'robotJointAction"
  (cl:format cl:nil "~%Header           header~%int8           motor~%int8           action~%int16           position~%int16           velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotJointAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotJointAction>))
  "Converts a ROS message object to a list"
  (cl:list 'robotJointAction
    (cl:cons ':header (header msg))
    (cl:cons ':motor (motor msg))
    (cl:cons ':action (action msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
))
