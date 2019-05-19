// Auto-generated. Do not edit!

// (in-package robot_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robotJointAction = require('./robotJointAction.js');

//-----------------------------------------------------------

class robotPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robotAction = null;
    }
    else {
      if (initObj.hasOwnProperty('robotAction')) {
        this.robotAction = initObj.robotAction
      }
      else {
        this.robotAction = new Array(6).fill(new robotJointAction());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotPosition
    // Check that the constant length array field [robotAction] has the right length
    if (obj.robotAction.length !== 6) {
      throw new Error('Unable to serialize array field robotAction - length must be 6')
    }
    // Serialize message field [robotAction]
    obj.robotAction.forEach((val) => {
      bufferOffset = robotJointAction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotPosition
    let len;
    let data = new robotPosition(null);
    // Deserialize message field [robotAction]
    len = 6;
    data.robotAction = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robotAction[i] = robotJointAction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robotAction.forEach((val) => {
      length += robotJointAction.getMessageSize(val);
    });
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_pkg/robotPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c1462b9022dcefd95a1a401dee2a956';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotJointAction[6]           robotAction          # array of data to send each motor
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotPosition(null);
    if (msg.robotAction !== undefined) {
      resolved.robotAction = new Array(6)
      for (let i = 0; i < resolved.robotAction.length; ++i) {
        if (msg.robotAction.length > i) {
          resolved.robotAction[i] = robotJointAction.Resolve(msg.robotAction[i]);
        }
        else {
          resolved.robotAction[i] = new robotJointAction();
        }
      }
    }
    else {
      resolved.robotAction = new Array(6).fill(new robotJointAction())
    }

    return resolved;
    }
};

module.exports = robotPosition;
