// Auto-generated. Do not edit!

// (in-package spencer_detected_person_association.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LookupTrackIdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detection_id = null;
    }
    else {
      if (initObj.hasOwnProperty('detection_id')) {
        this.detection_id = initObj.detection_id
      }
      else {
        this.detection_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LookupTrackIdRequest
    // Serialize message field [detection_id]
    bufferOffset = _serializer.uint64(obj.detection_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LookupTrackIdRequest
    let len;
    let data = new LookupTrackIdRequest(null);
    // Deserialize message field [detection_id]
    data.detection_id = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spencer_detected_person_association/LookupTrackIdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '429b45ef0055eafe06921700b8c599ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64      detection_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LookupTrackIdRequest(null);
    if (msg.detection_id !== undefined) {
      resolved.detection_id = msg.detection_id;
    }
    else {
      resolved.detection_id = 0
    }

    return resolved;
    }
};

class LookupTrackIdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.was_found = null;
      this.track_id = null;
    }
    else {
      if (initObj.hasOwnProperty('was_found')) {
        this.was_found = initObj.was_found
      }
      else {
        this.was_found = false;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LookupTrackIdResponse
    // Serialize message field [was_found]
    bufferOffset = _serializer.bool(obj.was_found, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LookupTrackIdResponse
    let len;
    let data = new LookupTrackIdResponse(null);
    // Deserialize message field [was_found]
    data.was_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spencer_detected_person_association/LookupTrackIdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '136927af1172c17b9b21fe747eac5b93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool        was_found
    uint64      track_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LookupTrackIdResponse(null);
    if (msg.was_found !== undefined) {
      resolved.was_found = msg.was_found;
    }
    else {
      resolved.was_found = false
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: LookupTrackIdRequest,
  Response: LookupTrackIdResponse,
  md5sum() { return 'd6b0b1132d3ddba53683fd3082b74b2a'; },
  datatype() { return 'spencer_detected_person_association/LookupTrackId'; }
};
