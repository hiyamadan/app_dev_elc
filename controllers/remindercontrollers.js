    // * Utils
    const { check, validationResult } = require('express-validator');

    // * Models
    const Reminder = require('../models/reminder');



    //Route to add reminder details
    module.exports.setreminders = async (req, res) => {
        console.log('set reminder route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                try{
                 
                  const {medicines,steam,water,rest} = req.body;
                  const newReminder = new Reminder({
                    medicines,
                    steam,
                    water,
                    rest,
                    createdBy:req.user.id
                   
                   
                  }) ;
                  console.log(newReminder)
                  newReminder.save();
                  
                
                
                  return res.json(newReminder).status(200);
                }catch(err){
                  console.log(err)
                  return res.status(404).send({ error: "server error" });
                }
                
        }
      }

    //Route to get reminders
    module.exports.getreminders = async (req, res) => {
        console.log('get reminders route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                try{
                 
                  
                  const reminders= await Reminder.find({createdBy:req.user.id})
                  if(reminders.medicines.time==='4 am')
                  {
                    console.log(reminders)
                    return res.json(reminders).status(200);
                  }
                 
                }catch(err){
                  console.log(err)
                  return res.status(404).send({ error: "server error" });
                }
                
        }
      }
    

        
  
