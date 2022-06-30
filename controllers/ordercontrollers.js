    // * Utils
    const { check, validationResult } = require('express-validator');
    // *NPM Packages
    const jwt = require('jsonwebtoken');
    const bcrypt = require('bcryptjs');

    // * Models
    const Order = require('../models/order');


    //Route to register User
    //matching passwords handled on the frontend
    module.exports.placeorder = async (req, res) => {
        console.log('place order route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                try{
                 
                  const {meals,address,phone} = req.body;
                  const newOrder = new Order({
                   
                    meals,
                    address,
                    phone,
                    createdBy:req.user.id
                   
                  }) ;
                  console.log(newOrder)
                  newOrder.save();
                  
                
                
                  return res.json(newOrder).status(200);
                }catch(err){
                  console.log(err)
                  return res.status(404).send({ error: "server error" });
                }
                
        }
      }
    

        
  
