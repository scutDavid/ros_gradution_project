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

class PedestrianTracking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.traj_x = null;
      this.traj_y = null;
      this.traj_z = null;
      this.traj_x_camera = null;
      this.traj_y_camera = null;
      this.traj_z_camera = null;
      this.dir = null;
      this.speed = null;
      this.id = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('traj_x')) {
        this.traj_x = initObj.traj_x
      }
      else {
        this.traj_x = [];
      }
      if (initObj.hasOwnProperty('traj_y')) {
        this.traj_y = initObj.traj_y
      }
      else {
        this.traj_y = [];
      }
      if (initObj.hasOwnProperty('traj_z')) {
        this.traj_z = initObj.traj_z
      }
      else {
        this.traj_z = [];
      }
      if (initObj.hasOwnProperty('traj_x_camera')) {
        this.traj_x_camera = initObj.traj_x_camera
      }
      else {
        this.traj_x_camera = [];
      }
      if (initObj.hasOwnProperty('traj_y_camera')) {
        this.traj_y_camera = initObj.traj_y_camera
      }
      else {
        this.traj_y_camera = [];
      }
      if (initObj.hasOwnProperty('traj_z_camera')) {
        this.traj_z_camera = initObj.traj_z_camera
      }
      else {
        this.traj_z_camera = [];
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = [];
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PedestrianTracking
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [traj_x]
    bufferOffset = _arraySerializer.float64(obj.traj_x, buffer, bufferOffset, null);
    // Serialize message field [traj_y]
    bufferOffset = _arraySerializer.float64(obj.traj_y, buffer, bufferOffset, null);
    // Serialize message field [traj_z]
    bufferOffset = _arraySerializer.float64(obj.traj_z, buffer, bufferOffset, null);
    // Serialize message field [traj_x_camera]
    bufferOffset = _arraySerializer.float64(obj.traj_x_camera, buffer, bufferOffset, null);
    // Serialize message field [traj_y_camera]
    bufferOffset = _arraySerializer.float64(obj.traj_y_camera, buffer, bufferOffset, null);
    // Serialize message field [traj_z_camera]
    bufferOffset = _arraySerializer.float64(obj.traj_z_camera, buffer, bufferOffset, null);
    // Serialize message field [dir]
    bufferOffset = _arraySerializer.float64(obj.dir, buffer, bufferOffset, null);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PedestrianTracking
    let len;
    let data = new PedestrianTracking(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [traj_x]
    data.traj_x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [traj_y]
    data.traj_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [traj_z]
    data.traj_z = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [traj_x_camera]
    data.traj_x_camera = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [traj_y_camera]
    data.traj_y_camera = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [traj_z_camera]
    data.traj_z_camera = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dir]
    data.dir = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.traj_x.length;
    length += 8 * object.traj_y.length;
    length += 8 * object.traj_z.length;
    length += 8 * object.traj_x_camera.length;
    length += 8 * object.traj_y_camera.length;
    length += 8 * object.traj_z_camera.length;
    length += 8 * object.dir.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rwth_perception_people_msgs/PedestrianTracking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09aa33b8051238d8dd3261c282a34984';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # position projected on the GP in world coordinates
    float64[] traj_x 
    float64[] traj_y 
    float64[] traj_z
    # position projected on the GP in camera coordinates
    float64[] traj_x_camera 
    float64[] traj_y_camera 
    float64[] traj_z_camera 
    float64[] dir 	
    float64 speed 	
    int64 id  
    float64 score
    
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
    const resolved = new PedestrianTracking(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.traj_x !== undefined) {
      resolved.traj_x = msg.traj_x;
    }
    else {
      resolved.traj_x = []
    }

    if (msg.traj_y !== undefined) {
      resolved.traj_y = msg.traj_y;
    }
    else {
      resolved.traj_y = []
    }

    if (msg.traj_z !== undefined) {
      resolved.traj_z = msg.traj_z;
    }
    else {
      resolved.traj_z = []
    }

    if (msg.traj_x_camera !== undefined) {
      resolved.traj_x_camera = msg.traj_x_camera;
    }
    else {
      resolved.traj_x_camera = []
    }

    if (msg.traj_y_camera !== undefined) {
      resolved.traj_y_camera = msg.traj_y_camera;
    }
    else {
      resolved.traj_y_camera = []
    }

    if (msg.traj_z_camera !== undefined) {
      resolved.traj_z_camera = msg.traj_z_camera;
    }
    else {
      resolved.traj_z_camera = []
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = []
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

module.exports = PedestrianTracking;
