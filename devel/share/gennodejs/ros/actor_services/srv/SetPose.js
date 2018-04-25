// Auto-generated. Do not edit!

// (in-package actor_services.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_flag = null;
      this.new_x = null;
      this.new_y = null;
    }
    else {
      if (initObj.hasOwnProperty('set_flag')) {
        this.set_flag = initObj.set_flag
      }
      else {
        this.set_flag = false;
      }
      if (initObj.hasOwnProperty('new_x')) {
        this.new_x = initObj.new_x
      }
      else {
        this.new_x = 0.0;
      }
      if (initObj.hasOwnProperty('new_y')) {
        this.new_y = initObj.new_y
      }
      else {
        this.new_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPoseRequest
    // Serialize message field [set_flag]
    bufferOffset = _serializer.bool(obj.set_flag, buffer, bufferOffset);
    // Serialize message field [new_x]
    bufferOffset = _serializer.float64(obj.new_x, buffer, bufferOffset);
    // Serialize message field [new_y]
    bufferOffset = _serializer.float64(obj.new_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPoseRequest
    let len;
    let data = new SetPoseRequest(null);
    // Deserialize message field [set_flag]
    data.set_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [new_x]
    data.new_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [new_y]
    data.new_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'actor_services/SetPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6146332decaacb7b17a1e1e01368bdf9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set_flag
    float64 new_x
    float64 new_y
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPoseRequest(null);
    if (msg.set_flag !== undefined) {
      resolved.set_flag = msg.set_flag;
    }
    else {
      resolved.set_flag = false
    }

    if (msg.new_x !== undefined) {
      resolved.new_x = msg.new_x;
    }
    else {
      resolved.new_x = 0.0
    }

    if (msg.new_y !== undefined) {
      resolved.new_y = msg.new_y;
    }
    else {
      resolved.new_y = 0.0
    }

    return resolved;
    }
};

class SetPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPoseResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPoseResponse
    let len;
    let data = new SetPoseResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'actor_services/SetPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '209f516d3eb691f0663e25cb750d67c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPoseResponse(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetPoseRequest,
  Response: SetPoseResponse,
  md5sum() { return 'd6701dc5a74a339cdbcd7f9e473eadfa'; },
  datatype() { return 'actor_services/SetPose'; }
};
