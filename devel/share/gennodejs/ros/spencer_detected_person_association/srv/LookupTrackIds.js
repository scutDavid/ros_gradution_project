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

class LookupTrackIdsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detection_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('detection_ids')) {
        this.detection_ids = initObj.detection_ids
      }
      else {
        this.detection_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LookupTrackIdsRequest
    // Serialize message field [detection_ids]
    bufferOffset = _arraySerializer.uint64(obj.detection_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LookupTrackIdsRequest
    let len;
    let data = new LookupTrackIdsRequest(null);
    // Deserialize message field [detection_ids]
    data.detection_ids = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.detection_ids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spencer_detected_person_association/LookupTrackIdsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5d9524ed74ef6a68fc08108b7e0df13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64[]      detection_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LookupTrackIdsRequest(null);
    if (msg.detection_ids !== undefined) {
      resolved.detection_ids = msg.detection_ids;
    }
    else {
      resolved.detection_ids = []
    }

    return resolved;
    }
};

class LookupTrackIdsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.was_found = null;
      this.track_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('was_found')) {
        this.was_found = initObj.was_found
      }
      else {
        this.was_found = [];
      }
      if (initObj.hasOwnProperty('track_ids')) {
        this.track_ids = initObj.track_ids
      }
      else {
        this.track_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LookupTrackIdsResponse
    // Serialize message field [was_found]
    bufferOffset = _arraySerializer.bool(obj.was_found, buffer, bufferOffset, null);
    // Serialize message field [track_ids]
    bufferOffset = _arraySerializer.uint64(obj.track_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LookupTrackIdsResponse
    let len;
    let data = new LookupTrackIdsResponse(null);
    // Deserialize message field [was_found]
    data.was_found = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [track_ids]
    data.track_ids = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.was_found.length;
    length += 8 * object.track_ids.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spencer_detected_person_association/LookupTrackIdsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f75a3066dabe6cedc87592cb01e78f64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[]        was_found
    uint64[]      track_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LookupTrackIdsResponse(null);
    if (msg.was_found !== undefined) {
      resolved.was_found = msg.was_found;
    }
    else {
      resolved.was_found = []
    }

    if (msg.track_ids !== undefined) {
      resolved.track_ids = msg.track_ids;
    }
    else {
      resolved.track_ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: LookupTrackIdsRequest,
  Response: LookupTrackIdsResponse,
  md5sum() { return 'fdbfb9d136dcf8dca2f9e4ae81a993ad'; },
  datatype() { return 'spencer_detected_person_association/LookupTrackIds'; }
};
