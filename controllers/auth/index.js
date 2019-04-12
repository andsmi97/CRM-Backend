const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt-nodejs');
const db = require('knex')({
  client: 'pg',
  connection: process.env.POSTGRES_URI
});
const config = require('../../config/db');

const signUp = (req, res) => {
  const { username, password: userpassword, email: useremail } = req.body;
  if (!username || !userpassword || !useremail) {
    res.json({
      success: false,
      msg: 'Пожалуйтса введите имя пользователя и пароль'
    });
  } else {
    bcrypt.genSalt(10, (err, salt) => {
      if (err) return err;
      return bcrypt.hash(userpassword, salt, null, (err, hash) => {
        if (err) return err;
        // insert user
        return (async () => {
          const [userData] = await db('users')
            .insert({ username, userpassword: hash, useremail })
            .returning(['username', 'userpassword', 'usertype']);
          // send email confirmation
          //   sendActivation(userData);
          const token = jwt.sign(userData, config.secret, {
            expiresIn: '30d'
          });
          return res.json({ success: true, token: `JWT ${token}` });
        })();
      });
    });
  }
};

const signIn = (req, res) => {
  const { username, password } = req.body;
  (async () => {
    const [user] = await db
      .select('username', 'usertype', 'userpassword')
      .from('users')
      .where({ username });
    if (!user) {
      res.status(401).send({
        success: false,
        msg: 'Ошибка авторизации. Пользователь не найден.'
      });
    } else {
      // check if password matches
      bcrypt.compare(password, user.userpassword, (err, isMatch) => {
        if (isMatch && !err) {
          // if user is found and password is right create a token
          const token = jwt.sign(user, config.secret, {
            expiresIn: '30d'
          });
          // return the information including token as JSON
          return res.json({ success: true, token: `JWT ${token}` });
        }
        return res.status(401).send({
          success: false,
          msg: 'Ошибка авторизации. Неправильный пароль.'
        });
      });
    }
  })();
};

module.exports = {
  signUp,
  signIn,
};
