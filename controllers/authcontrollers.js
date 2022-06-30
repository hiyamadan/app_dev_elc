    // * Utils
    const { check, validationResult } = require('express-validator');
    // *NPM Packages
    const jwt = require('jsonwebtoken');
    const bcrypt = require('bcryptjs');

    // * Models
    const User = require('../models/user');


    //Route to register User
    //matching passwords handled on the frontend
    module.exports.signup = async (req, res) => {
        console.log('signup-route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                try{
                 
                  const { name,email,phone,password} = req.body;
                  const user = await User.findOne({ email: email })
                  if (user) {
                console.log("User already exists");
                return res.status(500).send({ error: "user already exist" });
                
                      }
                      function generateAccessToken(user) {
                        return jwt.sign(user, process.env.TOKEN_SECRET);
                      }
                  
                  const newUser = new User({
                   
                    name,
                    email,
                    phone,
                    password
                   
                  }) ;
                  console.log(newUser.id)
                  newUser.save();
                  const token = generateAccessToken({_id: newUser.id });
                
                
                  return res.json(token).status(200);
                }catch(err){
                  console.log(err)
                  return res.status(404).send({ error: "server error" });
                }
                
        }
      }
    

        
    //Route to login user

      module.exports.login = async (req, res) => {
        console.log('login-route')
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
          return res.status(404).send({ error: "validation error" });
        }
        const { email, password } = req.body;
        //to check if the user  exists
        try {
          let user = await User.findOne({ email: email });

      
          if (!user) {
            return res.status(404).send({ error: "user does not exist" });
          }
          const isMatch = await bcrypt.compare(password, user.password);
          if (!isMatch) {
            return res.status(404).send({ error: "Invalid credentials" });
           
          }
           function generateAccessToken(user) {
                        return jwt.sign(user, process.env.TOKEN_SECRET);
                      
           }
           const token = generateAccessToken({_id: user.id });
                        return res.json(token).status(200);
          console.log('logged in ');
          
        } catch (err) {
          console.log(err);
          return res.status(500).send({ error: "server error" });
         
        }
    

        
      };


    //Route to get user profile
    module.exports.myprofile = async(req,res) =>{
      const errors = validationResult(req);
      if (!errors.isEmpty()) {
      return res.status(400).send('error occured');
      }
        try {
          //console.log(req.user);
          const user = await User.findById(req.user.id);
          const water = await Water.findOne({belongsTo:req.user.id})
          const calories = await Calories.findOne({belongsTo:req.user.id})
          const steps = await Steps.findOne({belongsTo:req.user.id})
          const username=user.name;
          const height=user.height
          const weight=user.weight
          const dashboard ={
           username,
           weight,
           height,
            water,
            calories,
            steps,
            
          }

          if (!user) {
            return  res.status(400).send({ error: "No user found" });
           
          }
          res.status(200).json({
            success: true,
            data: dashboard,
          });
        } catch (err) {
          console.log(err);
          return  res.status(500).send({ error: "server error" });
         
        }
     

    }

