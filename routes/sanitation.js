// * NPM Packages
const express = require('express');
const { check, validationResult } = require('express-validator');
const passport = require('passport');

const router = express.Router();

// * Controllers
const sanitationController = require('../controllers/sanitationcontrollers');


// * Middlewares
const { protectUser } = require('../middleware/auth'); 

router.post('/request',[protectUser],sanitationController.request);
router.post('/trash',[protectUser],sanitationController.trash);

module.exports = router;