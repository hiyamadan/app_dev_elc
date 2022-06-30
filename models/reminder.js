const mongoose = require('mongoose');
const reminderSchema = new mongoose.Schema({
  medicines: {  
    type: String,
    required: true,
    time:{
      type: String,
      
    }

  },steam: {
    type: String,
    required: true,
  },
  water: {
    type: String,
    required: true,
  },
  rest:{
    type: String,
    required: true,
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

const Reminder = mongoose.model('reminders', reminderSchema);
module.exports = Reminder;
