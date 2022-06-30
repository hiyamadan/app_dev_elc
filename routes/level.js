// * NPM Packages
const express = require('express');
const { check, validationResult } = require('express-validator');
const passport = require('passport');

const router = express.Router();

// * Controllers
const levelController = require('../controllers/levelcontrollers');

// * Middlewares
const { protectUser } = require('../middleware/auth'); 

router.post('/add_level', levelController.addLevel);
router.get('/get_level/:id', levelController.getALevel);
router.get('/get_levels', levelController.getLevels);
router.put('/update_level/:id', levelController.updateLevel);

module.exports = router;