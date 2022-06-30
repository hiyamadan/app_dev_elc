const mongoose = require('mongoose');
const sanitationSchema = new mongoose.Schema({
  phone: {
    type: Number,
    minlength: 10,
    maxlength: 10,
    required: true,
  },
  homeaddress: {
    type: String,
    required: true,
  },
  time:{
    type:Number,
    default:Date.now(),
    timestamp:true,
    required: true
  },
  date:{
    type:String,
    default:Date.now(),
    timestamp:true,
    required: true
  },
 
  createdAt:{
    type: Number,
    default: Date.now,
    required:true,
},
 createdBy:{
    type: mongoose.Schema.ObjectId,
    ref: 'users',
    required: true,
},

})
const  Sanitation= mongoose.model('sanitationrequests', sanitationSchema);
module.exports = Sanitation;