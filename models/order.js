const mongoose = require('mongoose');
const orderSchema = new mongoose.Schema({
  meals:{
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




const Order = mongoose.model('orders', orderSchema);
module.exports = Order;
