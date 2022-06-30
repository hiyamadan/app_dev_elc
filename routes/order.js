// * NPM Packages
const express = require('express');
const { check, validationResult } = require('express-validator');
const passport = require('passport');

const router = express.Router();

// * Controllers
const orderController = require('../controllers/ordercontrollers');

// * Middlewares
const { protectUser } = require('../middleware/auth'); 

router.post('/placeorder',[protectUser],orderController.placeorder);

module.exports = router;