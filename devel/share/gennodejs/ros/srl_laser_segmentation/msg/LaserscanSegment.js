// Auto-generated. Do not edit!

// (in-package srl_laser_segmentation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaserscanSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.measurement_indices = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
      }
      if (initObj.hasOwnProperty('measurement_indices')) {
        this.measurement_indices = initObj.measurement_indices
      }
      else {
        this.measurement_indices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserscanSegment
    // Serialize message field [label]
    bufferOffset = _serializer.int16(obj.label, buffer, bufferOffset);
    // Serialize message field [measurement_indices]
    bufferOffset = _arraySerializer.uint16(obj.measurement_indices, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserscanSegment
    let len;
    let data = new LaserscanSegment(null);
    // Deserialize message field [label]
    data.label = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [measurement_indices]
    data.measurement_indices = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.measurement_indices.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srl_laser_segmentation/LaserscanSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ceb0bfb38ee913705c3016ba43e532fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LaserscanSegment(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
    }

    if (msg.measurement_indices !== undefined) {
      resolved.measurement_indices = msg.measurement_indices;
    }
    else {
      resolved.measurement_indices = []
    }

    return resolved;
    }
};

module.exports = LaserscanSegment;
