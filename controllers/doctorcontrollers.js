// * Utils
const { check, validationResult } = require('express-validator');

// * Models
const Doctor = require('../models/doctor');

// @desc     Add doctor
// @route    POST /api/doctor/add_doctor
// @access   Public
    module.exports.addDoctor = async (req, res) => {
      const errors = validationResult(req);
      if (!errors.isEmpty()) {
      return res.status(400).send('error occured');
      }
      else
      {
              try{
                const {name, phone, email, education, hospital, designation} = req.body;
                const newDoctor = new Doctor({
                  name, 
                  phone,
                  email,
                  education,
                  hospital,
                  designation
                });
                console.log(newDoctor)
                newDoctor.save();
                return res.json(newDoctor).status(200);
              }catch(err){
                console.log(err)
                return res.status(404).send({ error: "Server error" });
              }
      }
    }

// @desc     Get a specific doctor
// @route    GET /api/doctor/get_doctor/:id
// @access   Public
module.exports.getDoctor = async(req,res) =>{
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
  return res.status(400).send('error occured');
  }
    try {
    const doctor = await Doctor.findById(req.params.id);
    if (!doctor) {
      return next(new ErrorResponse('Doctor does not exist', 400));
    }
      res.status(200).json({
        success: true,
        data: doctor,
      });
    } catch (err) {
      console.log(err);
      return  res.status(500).send({ error: "server error" });
    }
}

// @desc     Get all doctors
// @route    GET /api/doctor/get_doctors
// @access   Public
module.exports.getAllDoctors = async(req,res) =>{
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
  return res.status(400).send('error occured');
  }
    try {
    const allDoctors = await Doctor.find();
    if (!allDoctors) {
      return next(new ErrorResponse('No doctor exists', 400));
    }
      res.status(200).json({
        success: true,
        data: allDoctors,
      });
    } catch (err) {
      console.log(err);
      return  res.status(500).send({ error: "server error" });
    }
}

// @desc     Update doctor
// @route    PUT /api/doctor/update_doctor/:id
// @access   Public
module.exports.updateDoctor = async(req,res) =>{
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
  return res.status(400).send('error occured');
  }
    try {
      let update_Doctor = await Doctor.findById(req.params.id).lean();
    if (!update_Doctor) {
      return next(new ErrorResponse('Doctor does not exist', 400));
    }
    let doctor = await Doctor.findByIdAndUpdate(req.params.id, req.body, {
      new: true,
      runVaildators: true,
    });
      res.status(200).json({
        success: true,
        data: doctor,
      });
    } catch (err) {
      console.log(err);
      return  res.status(500).send({ error: "server error" });
    }
}