const app = require('express')();
// libs
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const morgan = require('morgan');
const helmet = require('helmet');
const passportManager = require('./config/passport');
const router = require('./routes');


// Middleware
app.use(bodyParser.json());
const whitelist = ['http://localhost:3000'];
const corsOptions = {
  origin(origin, callback) {
    if (whitelist.indexOf(origin) !== -1) {
      callback(null, true);
    } else {
      callback(new Error('Not allowed by CORS'));
    }
  }
};

// app.use(cors(corsOptions));
app.use(cors());
app.use(morgan('combined'));
app.use(helmet());
app.use(express.json());
app.use('/', express.static('build'));

// routes setup
// app.use('/', router);

// error handler
app.use((err, req, res, next) => {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  // res.render("error");
});

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
  next();
});

// app.use(passportManager.initialize());

// Don't stop server in production
process.on('uncaughtException', (err) => {
  console.log(err);
});

app.listen(process.env.PORT || 8080, () => {
  console.log('server is running on port 8080');
});
