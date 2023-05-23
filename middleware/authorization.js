const jwt = require("jsonwebtoken");
require("dotenv").config();

const { SECRETKEY } = process.env;

module.exports = async (req, res, next) => {
  try {

    //"token" did not work 
    //    const jwtToken = req.header("token");

    const jwtToken = req.headers.authorization;

    if (!jwtToken) {
      return res.status(403).json("not authorize");
    }

    const payload = jwt.verify(jwtToken, SECRETKEY);
//payload.user was undefined becuase it did not exist.
    //    req.user = payload.user;


req.userId = payload.id;
    next();
  } catch (err) {
    console.log(err.message);
    return res.status(403).json("not authorized");
  }
};