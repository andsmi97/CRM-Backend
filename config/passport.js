const passport = require('passport');
const { Strategy, ExtractJwt } = require('passport-jwt');
const db = require('knex')({
  client: 'pg',
  connection: process.env.POSTGRES_URI
});
const config = require('../config/db');
// get db config file
class PassportManager {
  static initialize() {
    const opts = {
      jwtFromRequest: ExtractJwt.fromAuthHeaderWithScheme('jwt'),
      secretOrKey: config.secret
    };
    passport.use(
      new Strategy(opts, (jwtPayload, done) => {
        (async () => {
          const user = await db
            .select('*')
            .from('users')
            .where({ userid: jwtPayload.userid });
          if (user) {
            done(null, user);
          } else {
            done(null, false);
          }
        })();
      })
    );
    return passport.initialize();
  }

  static authenticate(req, res, next) {
    passport.authenticate('jwt', (err, user, info) => {
      if (err) {
        return next(err);
      }
      if (!user) {
        if (info.name === 'TokenExpiredError') {
          return res.status(401).json({ message: 'Your token has expired.' });
        }
        return res.status(401).json({ message: info.message });
      }
      req.user = user;
      return next();
    })(req, res, next);
  }
}
module.exports = new PassportManager();
