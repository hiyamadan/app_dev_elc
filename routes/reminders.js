// * NPM Packages
const express = require('express');
const { check, validationResult } = require('express-validator');
const passport = require('passport');

const router = express.Router();

// * Controllers
const reminderController = require('../controllers/remindercontrollers');

// * Middlewares
const { protectUser } = require('../middleware/auth'); 

router.get('/getreminders',[protectUser],reminderController.getreminders);
router.post('/setreminders',[protectUser],reminderController.setreminders);

module.exports = router;