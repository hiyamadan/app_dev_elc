const mongoose = require('mongoose');
const medicineOrderSchema = new mongoose.Schema({
  CovidKits:{
    type: Number,
    default: 0,
    required:true,

  },address: {
    type: String,
    required: true,
  },
  phone: {
    type: Number,
    minlength: 10,
    maxlength: 10,
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




const  medicineOrder= mongoose.model('medicineorders', medicineOrderSchema);
module.exports = medicineOrder;