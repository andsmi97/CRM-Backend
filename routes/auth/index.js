const express = require('express');
const authController = require('../../controllers/auth');

const router = express.Router();

router.post('/signup', authController.signUp);
router.post('/signin', authController.signIn);
module.exports = router;
