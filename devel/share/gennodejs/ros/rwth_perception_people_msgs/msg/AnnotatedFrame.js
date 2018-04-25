// Auto-generated. Do not edit!

// (in-package rwth_perception_people_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Annotation = require('./Annotation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AnnotatedFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame = null;
      this.timestamp = null;
      this.annotations = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('annotations')) {
        this.annotations = initObj.annotations
      }
      else {
        this.annotations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnnotatedFrame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.int64(obj.frame, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [annotations]
    // Serialize the length for message field [annotations]
    bufferOffset = _serializer.uint32(obj.annotations.length, buffer, bufferOffset);
    obj.annotations.forEach((val) => {
      bufferOffset = Annotation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnnotatedFrame
    let len;
    let data = new AnnotatedFrame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [annotations]
    // Deserialize array length for message field [annotations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.annotations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.annotations[i] = Annotation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.annotations.forEach((val) => {
      length += Annotation.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rwth_perception_people_msgs/AnnotatedFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82b48dede9c8aa960b68e052ed5ee37e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # frame (image)
    int64 frame
    # time stamp
    time timestamp
    # Array of annotation boxes
    Annotation[] annotations
    
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
    MSG: rwth_perception_people_msgs/Annotation
    Header header
    
    # frame id (backref)
    int64 frame
    # box id
    int64 id
    # top left x
    float64 tlx
    # top left y
    float64 tly
    # bbox width
    float64 width
    # bbox height
    float64 height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnnotatedFrame(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.annotations !== undefined) {
      resolved.annotations = new Array(msg.annotations.length);
      for (let i = 0; i < resolved.annotations.length; ++i) {
        resolved.annotations[i] = Annotation.Resolve(msg.annotations[i]);
      }
    }
    else {
      resolved.annotations = []
    }

    return resolved;
    }
};

module.exports = AnnotatedFrame;
