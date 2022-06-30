// * NPM Packages
const express = require('express');
const { check, validationResult } = require('express-validator');
const passport = require('passport');

const router = express.Router();

// * Controllers
const doctorController = require('../controllers/doctorcontrollers');

// * Middlewares
const { protectUser } = require('../middleware/auth'); 

router.post('/add_doctor', doctorController.addDoctor);
router.get('/get_doctor/:id', doctorController.getDoctor);
router.get('/get_doctors', doctorController.getAllDoctors);
router.put('/update_doctor/:id', doctorController.updateDoctor);

module.exports = router;