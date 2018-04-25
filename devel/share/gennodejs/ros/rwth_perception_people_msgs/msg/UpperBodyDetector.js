// Auto-generated. Do not edit!

// (in-package rwth_perception_people_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UpperBodyDetector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pos_x = null;
      this.pos_y = null;
      this.width = null;
      this.height = null;
      this.dist = null;
      this.median_depth = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = [];
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = [];
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = [];
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = [];
      }
      if (initObj.hasOwnProperty('median_depth')) {
        this.median_depth = initObj.median_depth
      }
      else {
        this.median_depth = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpperBodyDetector
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pos_x]
    bufferOffset = _arraySerializer.int64(obj.pos_x, buffer, bufferOffset, null);
    // Serialize message field [pos_y]
    bufferOffset = _arraySerializer.int64(obj.pos_y, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _arraySerializer.int64(obj.width, buffer, bufferOffset, null);
    // Serialize message field [height]
    bufferOffset = _arraySerializer.int64(obj.height, buffer, bufferOffset, null);
    // Serialize message field [dist]
    bufferOffset = _arraySerializer.float64(obj.dist, buffer, bufferOffset, null);
    // Serialize message field [median_depth]
    bufferOffset = _arraySerializer.float64(obj.median_depth, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpperBodyDetector
    let len;
    let data = new UpperBodyDetector(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_x]
    data.pos_x = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [pos_y]
    data.pos_y = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [height]
    data.height = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [dist]
    data.dist = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [median_depth]
    data.median_depth = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.pos_x.length;
    length += 8 * object.pos_y.length;
    length += 8 * object.width.length;
    length += 8 * object.height.length;
    length += 8 * object.dist.length;
    length += 8 * object.median_depth.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rwth_perception_people_msgs/UpperBodyDetector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1565008f1da6caedd235c0aedddd12ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int64[] pos_x 	# upper left x corner of the bounding box
    int64[] pos_y 	# upper left y corner of the bounding box
    int64[] width 	# width of the bounding box
    int64[] height 	# height of the bounding box
    float64[] dist  # distance of the overlaid area and the template
    float64[] median_depth # median_depth inside the detected bounding box
    
    
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
    const resolved = new UpperBodyDetector(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = []
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = []
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = []
    }

    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = []
    }

    if (msg.median_depth !== undefined) {
      resolved.median_depth = msg.median_depth;
    }
    else {
      resolved.median_depth = []
    }

    return resolved;
    }
};

module.exports = UpperBodyDetector;
