// Auto-generated. Do not edit!

// (in-package srl_laser_segmentation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaserscanSegment = require('./LaserscanSegment.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LaserscanSegmentation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.segments = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('segments')) {
        this.segments = initObj.segments
      }
      else {
        this.segments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserscanSegmentation
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [segments]
    // Serialize the length for message field [segments]
    bufferOffset = _serializer.uint32(obj.segments.length, buffer, bufferOffset);
    obj.segments.forEach((val) => {
      bufferOffset = LaserscanSegment.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserscanSegmentation
    let len;
    let data = new LaserscanSegmentation(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [segments]
    // Deserialize array length for message field [segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.segments[i] = LaserscanSegment.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.segments.forEach((val) => {
      length += LaserscanSegment.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srl_laser_segmentation/LaserscanSegmentation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4220e7e74ca923add2cd78d176946e12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A LaserscanSegmentation divides the points of a sensor_msgs/Laserscan into segments of (usually neighbouring)
    # points. Each segment is assigned a label, which uniquely identifies the segment. Laserscan points that
    # are considered as scene background are not part of any segment.
    # LaserscanSegmentation messages can be used as an input to a classifier such as a person detector, or for annotating
    # sensor_msgs/Laserscan messages with groundtruth person tracks (in that case, a segment's label denotes a person track ID,
    # that is used consistently across multiple frames).
    
    # Standard message header
    # The timestamp of this header must be equal to the timestamp of the corresponding Laserscan message,
    # and can thus be used for synchronization of Laserscan and LaserscanSegmentation messages.
    std_msgs/Header     header
    
    # All segments of interest of the current laser scan. Anything that is not part of a LaserscanSegment is
    # implicitly defined as scene background. 
    LaserscanSegment[]  segments
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
    MSG: srl_laser_segmentation/LaserscanSegment
    # The segment label assigned to this set of laser points, usually unique per sensor_msgs/Laserscan.
    # If the LaserscanSegmentation message is used to annotate groundtruth person tracks, each label
    # corresponds to the ID of a tracked person.
    # Note that laser points which are considered as background are not part of any LaserscanSegment!
    int16       label
    
    # Indices of the measurements in the sensor_msgs/Laserscan ranges[] and intensities[] arrays
    # that are part of this segment. For example, if measurement_indices contains the values
    # 0, 1 and 2 and the value of 'label' is 16, then the first three laser measurements (usually the
    # three left-most laser points in polar coordinates) are assigned to segment 16.
    uint16[]    measurement_indices
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaserscanSegmentation(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.segments !== undefined) {
      resolved.segments = new Array(msg.segments.length);
      for (let i = 0; i < resolved.segments.length; ++i) {
        resolved.segments[i] = LaserscanSegment.Resolve(msg.segments[i]);
      }
    }
    else {
      resolved.segments = []
    }

    return resolved;
    }
};

module.exports = LaserscanSegmentation;
