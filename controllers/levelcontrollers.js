// * Utils
const { check, validationResult } = require('express-validator');

// * Models
const Level = require('../models/level');

// @desc     Add level details
// @route    POST /api/level/add_level
// @access   Private
    module.exports.addLevel = async (req, res) => {
      const errors = validationResult(req);
      if (!errors.isEmpty()) {
      return res.status(400).send('error occured');
      }
      else
      {
              try{
                const {temperature, oxygen} = req.body;
                const newLevel = new Level({
                  temperature,
                  oxygen,
                  createdBy:req.user._id
                });
                console.log(newLevel)
                newLevel.save();
                if (newLevel.temperature <= 99)
                {
                  message1 = "Looks good!";
                }
                else if (newLevel.temperature>99 && newLevel.temperature<101)
                {
                  message1 = "Take medicine!";
                }
                else if (newLevel.temperature >= 101)
                {
                  message1 = "Consult a doctor!";
                }
                if (newLevel.oxygen >= 95)
                {
                  message2 = "Looks good!";
                }
                else if (newLevel.oxygen>90 && newLevel.oxygen<95)
                {
                  message2 = "On the margin!";
                }
                else if (newLevel.oxygen <= 90)
                {
                  message2 = "Contact doctor!";
                }
                return res.json({message1, message2, newLevel}).status(200);
              }catch(err){
                console.log(err)
                return res.status(404).send({ error: "Server error" });
              }
              
      }
    }

// @desc     Get a specific level
// @route    GET /api/level/get_level/:id
// @access   Private
module.exports.getALevel = async(req,res) =>{
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
  return res.status(400).send('error occured');
  }
    try {
      console.log(req.user._id);
    const myLevel = await Level.findById(req.params.id);
    if (!myLevel) {
      return next(new ErrorResponse('No level detail exists', 400));
    }
      res.status(200).json({
        success: true,
        data: myLevel,
      });
    } catch (err) {
      console.log(err);
      return  res.status(500).send({ error: "server error" });
    }
}

// @desc     Get all levels
// @route    GET /api/level/get_levels
// @access   Private
module.exports.getLevels = async(req,res) =>{
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
  return res.status(400).send('error occured');
  }
    try {
      console.log(req.user._id);
    const myLevels = await Level.find({ createdBy: req.user._id });
    if (!myLevels) {
      return next(new ErrorResponse('No level detail exists', 400));
    }
      res.status(200).json({
        success: true,
        data: myLevels,
      });
    } catch (err) {
      console.log(err);
      return  res.status(500).send({ error: "server error" });
    }
}

// @desc     Update a Level
// @route    PUT /api/level/update_level/:id
// @access   Private
module.exports.updateLevel = async(req,res) =>{
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
  return res.status(400).send('error occured');
  }
    try {
      let update_Level = await Level.findById(req.params.id).lean();
    if (!update_Level) {
      return next(new ErrorResponse('This level entry does not exist', 400));
    }
    let level = await Level.findByIdAndUpdate(req.params.id, req.body, {
      new: true,
      runVaildators: true,
    });
      res.status(200).json({
        success: true,
        data: level,
      });
    } catch (err) {
      console.log(err);
      return  res.status(500).send({ error: "server error" });
    }
}