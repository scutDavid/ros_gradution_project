// Auto-generated. Do not edit!

// (in-package spencer_bagfile_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AdditionalOdometryData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hardwareTimestamp = null;
      this.totalDistance = null;
      this.theta = null;
      this.ticksLeft = null;
      this.ticksRight = null;
      this.calibOverallMultiplier = null;
      this.calibLeftEncMultiplier = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hardwareTimestamp')) {
        this.hardwareTimestamp = initObj.hardwareTimestamp
      }
      else {
        this.hardwareTimestamp = 0;
      }
      if (initObj.hasOwnProperty('totalDistance')) {
        this.totalDistance = initObj.totalDistance
      }
      else {
        this.totalDistance = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('ticksLeft')) {
        this.ticksLeft = initObj.ticksLeft
      }
      else {
        this.ticksLeft = 0;
      }
      if (initObj.hasOwnProperty('ticksRight')) {
        this.ticksRight = initObj.ticksRight
      }
      else {
        this.ticksRight = 0;
      }
      if (initObj.hasOwnProperty('calibOverallMultiplier')) {
        this.calibOverallMultiplier = initObj.calibOverallMultiplier
      }
      else {
        this.calibOverallMultiplier = 0.0;
      }
      if (initObj.hasOwnProperty('calibLeftEncMultiplier')) {
        this.calibLeftEncMultiplier = initObj.calibLeftEncMultiplier
      }
      else {
        this.calibLeftEncMultiplier = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdditionalOdometryData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hardwareTimestamp]
    bufferOffset = _serializer.uint64(obj.hardwareTimestamp, buffer, bufferOffset);
    // Serialize message field [totalDistance]
    bufferOffset = _serializer.float64(obj.totalDistance, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [ticksLeft]
    bufferOffset = _serializer.int64(obj.ticksLeft, buffer, bufferOffset);
    // Serialize message field [ticksRight]
    bufferOffset = _serializer.int64(obj.ticksRight, buffer, bufferOffset);
    // Serialize message field [calibOverallMultiplier]
    bufferOffset = _serializer.float64(obj.calibOverallMultiplier, buffer, bufferOffset);
    // Serialize message field [calibLeftEncMultiplier]
    bufferOffset = _serializer.float64(obj.calibLeftEncMultiplier, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdditionalOdometryData
    let len;
    let data = new AdditionalOdometryData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hardwareTimestamp]
    data.hardwareTimestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [totalDistance]
    data.totalDistance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ticksLeft]
    data.ticksLeft = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ticksRight]
    data.ticksRight = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [calibOverallMultiplier]
    data.calibOverallMultiplier = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [calibLeftEncMultiplier]
    data.calibLeftEncMultiplier = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spencer_bagfile_tools/AdditionalOdometryData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab677b3c60eb604fa8c19025b90f80c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header # message header
    
    uint64 hardwareTimestamp # milliseconds in hardware time since power-on
    
    float64 totalDistance # total absolute distance travelled so far (i.e. 10m forward, 10m backward => 20m)
    float64 theta # current theta angle in radians
    
    int64 ticksLeft # raw ticks of left encoder
    int64 ticksRight # raw ticks of right encoder
    
    float64 calibOverallMultiplier # calibration factor applied to both encoders' raw ticks
    float64 calibLeftEncMultiplier # calibration factor applied to only the left encoders' raw ticks, in addition to calibOverallMultiplier
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
    const resolved = new AdditionalOdometryData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hardwareTimestamp !== undefined) {
      resolved.hardwareTimestamp = msg.hardwareTimestamp;
    }
    else {
      resolved.hardwareTimestamp = 0
    }

    if (msg.totalDistance !== undefined) {
      resolved.totalDistance = msg.totalDistance;
    }
    else {
      resolved.totalDistance = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.ticksLeft !== undefined) {
      resolved.ticksLeft = msg.ticksLeft;
    }
    else {
      resolved.ticksLeft = 0
    }

    if (msg.ticksRight !== undefined) {
      resolved.ticksRight = msg.ticksRight;
    }
    else {
      resolved.ticksRight = 0
    }

    if (msg.calibOverallMultiplier !== undefined) {
      resolved.calibOverallMultiplier = msg.calibOverallMultiplier;
    }
    else {
      resolved.calibOverallMultiplier = 0.0
    }

    if (msg.calibLeftEncMultiplier !== undefined) {
      resolved.calibLeftEncMultiplier = msg.calibLeftEncMultiplier;
    }
    else {
      resolved.calibLeftEncMultiplier = 0.0
    }

    return resolved;
    }
};

module.exports = AdditionalOdometryData;
