const mongoose = require('mongoose');
const levelSchema = new mongoose.Schema({
  temperature: {
    type: Number,
    required: true
  },
  oxygen: {
    type: Number,
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
}
})

const Level = mongoose.model('levels', levelSchema);
module.exports = Level;