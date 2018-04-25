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

class GetVelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_flag = null;
      this.new_x = null;
      this.new_y = null;
      this.new_yaw = null;
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
      if (initObj.hasOwnProperty('new_yaw')) {
        this.new_yaw = initObj.new_yaw
      }
      else {
        this.new_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVelRequest
    // Serialize message field [set_flag]
    bufferOffset = _serializer.bool(obj.set_flag, buffer, bufferOffset);
    // Serialize message field [new_x]
    bufferOffset = _serializer.float32(obj.new_x, buffer, bufferOffset);
    // Serialize message field [new_y]
    bufferOffset = _serializer.float32(obj.new_y, buffer, bufferOffset);
    // Serialize message field [new_yaw]
    bufferOffset = _serializer.float32(obj.new_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVelRequest
    let len;
    let data = new GetVelRequest(null);
    // Deserialize message field [set_flag]
    data.set_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [new_x]
    data.new_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [new_y]
    data.new_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [new_yaw]
    data.new_yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'actor_services/GetVelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e85a32d0a0c58a5c26752fa5ab8e726a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set_flag
    float32 new_x
    float32 new_y
    float32 new_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetVelRequest(null);
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

    if (msg.new_yaw !== undefined) {
      resolved.new_yaw = msg.new_yaw;
    }
    else {
      resolved.new_yaw = 0.0
    }

    return resolved;
    }
};

class GetVelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.yaw = null;
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
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVelResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVelResponse
    let len;
    let data = new GetVelResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'actor_services/GetVelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47802147045815b06859cca542c21d31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 yaw
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetVelResponse(null);
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

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetVelRequest,
  Response: GetVelResponse,
  md5sum() { return 'f641daffe2334e864223c2a993ab4b8b'; },
  datatype() { return 'actor_services/GetVel'; }
};
