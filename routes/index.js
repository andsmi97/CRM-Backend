const router = require('express').Router();
const dbRouter = require('./db');
const authRouter = require('./auth');
const userRouter = require('./user');

// router.use('/db', dbRouter);
// router.use('/api/auth', authRouter);
// router.use('/api/user', userRouter);
module.exports = router;
