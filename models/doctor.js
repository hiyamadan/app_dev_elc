const mongoose = require('mongoose');
const doctorSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  phone: {
    type: Number,
    minlength: 10,
    maxlength: 10,
  },
  email: {
    required: true,
    type: String,
    unique: true,
    trim: true,
  },
  education: {
    required: true,
    type: String,
    trim: true,
  },
  hospital: {
    required: true,
    type: String,
    trim: true,
  },
  designation: {
    required: true,
    type: String,
    trim: true,
  }
})

const Doctor = mongoose.model('doctors', doctorSchema);
module.exports = Doctor;