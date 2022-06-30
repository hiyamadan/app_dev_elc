    // * Utils
    const { check, validationResult } = require('express-validator');
    // *NPM Packages
    const jwt = require('jsonwebtoken');
    const bcrypt = require('bcryptjs');

    // * Models
    const Sanitation = require('../models/sanitization');
    const Trash = require('../models/trash');


    //Route to register User
    //matching passwords handled on the frontend
    module.exports.request = async (req, res) => {
        console.log('sanitation request route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                try{
                 
                  const {phone,homeaddress,time,date} = req.body;
                  const newOrder = new Sanitation({
                   
                    phone,
                    homeaddress,
                    time,
                    date,
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




      //Route to register User
    //matching passwords handled on the frontend
    module.exports.trash = async (req, res) => {
        console.log('trash request route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                try{
                 
                  const {phone,homeaddress,time,date} = req.body;
                  const newOrder = new Trash({
                   
                    phone,
                    homeaddress,
                    time,
                    date,
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
    

        
  
