// * NPM Packages
const express = require('express');
const { check, validationResult } = require('express-validator');
const passport = require('passport');

const router = express.Router();

// * Controllers
const activityController = require('../controllers/activitycontrollers');

// * Middlewares
const { protectUser } = require('../middleware/auth'); 

router.get('/breathing',activityController.breathing);
//router.get('/music',[protectUser],activityController.music);
//router.get('/quote',[protectUser],activityController.quote);
//router.get('/movie',[protectUser],activityController.movie);

module.exports = router;