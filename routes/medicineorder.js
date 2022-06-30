// * NPM Packages
const express = require('express');
const { check, validationResult } = require('express-validator');
const passport = require('passport');

const router = express.Router();

// * Controllers
const medicineController = require('../controllers/medicinecontrollers');

// * Middlewares
const { protectUser } = require('../middleware/auth'); 

router.post('/placeorder',[protectUser],medicineController.placeorder);

module.exports = router;