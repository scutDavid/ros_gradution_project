// Auto-generated. Do not edit!

// (in-package rwth_perception_people_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PedestrianTracking = require('./PedestrianTracking.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PedestrianTrackingArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pedestrians = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pedestrians')) {
        this.pedestrians = initObj.pedestrians
      }
      else {
        this.pedestrians = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PedestrianTrackingArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pedestrians]
    // Serialize the length for message field [pedestrians]
    bufferOffset = _serializer.uint32(obj.pedestrians.length, buffer, bufferOffset);
    obj.pedestrians.forEach((val) => {
      bufferOffset = PedestrianTracking.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PedestrianTrackingArray
    let len;
    let data = new PedestrianTrackingArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pedestrians]
    // Deserialize array length for message field [pedestrians]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pedestrians = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pedestrians[i] = PedestrianTracking.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.pedestrians.forEach((val) => {
      length += PedestrianTracking.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rwth_perception_people_msgs/PedestrianTrackingArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9f67479ca0db5489cca876d9f98fd50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    PedestrianTracking[] pedestrians
    
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
    
    ================================================================================
    MSG: rwth_perception_people_msgs/PedestrianTracking
    Header header
    # position projected on the GP in world coordinates
    float64[] traj_x 
    float64[] traj_y 
    float64[] traj_z
    # position projected on the GP in camera coordinates
    float64[] traj_x_camera 
    float64[] traj_y_camera 
    float64[] traj_z_camera 
    float64[] dir 	
    float64 speed 	
    int64 id  
    float64 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PedestrianTrackingArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pedestrians !== undefined) {
      resolved.pedestrians = new Array(msg.pedestrians.length);
      for (let i = 0; i < resolved.pedestrians.length; ++i) {
        resolved.pedestrians[i] = PedestrianTracking.Resolve(msg.pedestrians[i]);
      }
    }
    else {
      resolved.pedestrians = []
    }

    return resolved;
    }
};

module.exports = PedestrianTrackingArray;
