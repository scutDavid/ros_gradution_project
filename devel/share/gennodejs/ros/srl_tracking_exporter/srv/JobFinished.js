// Auto-generated. Do not edit!

// (in-package srl_tracking_exporter.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class JobFinishedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.job_name = null;
    }
    else {
      if (initObj.hasOwnProperty('job_name')) {
        this.job_name = initObj.job_name
      }
      else {
        this.job_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JobFinishedRequest
    // Serialize message field [job_name]
    bufferOffset = _serializer.string(obj.job_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JobFinishedRequest
    let len;
    let data = new JobFinishedRequest(null);
    // Deserialize message field [job_name]
    data.job_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.job_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srl_tracking_exporter/JobFinishedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd920fe80478d88b925da2abe2df35139';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string job_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JobFinishedRequest(null);
    if (msg.job_name !== undefined) {
      resolved.job_name = msg.job_name;
    }
    else {
      resolved.job_name = ''
    }

    return resolved;
    }
};

class JobFinishedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JobFinishedResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JobFinishedResponse
    let len;
    let data = new JobFinishedResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srl_tracking_exporter/JobFinishedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JobFinishedResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: JobFinishedRequest,
  Response: JobFinishedResponse,
  md5sum() { return 'd920fe80478d88b925da2abe2df35139'; },
  datatype() { return 'srl_tracking_exporter/JobFinished'; }
};
