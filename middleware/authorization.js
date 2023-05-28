const jwt = require("jsonwebtoken");
require("dotenv").config();

const { SECRETKEY } = process.env;

module.exports = async (req, res, next) => {
  try {

    const jwtToken = req.headers.authorization;

    if (!jwtToken) {
      return res.status(403).json("not authorize");
    }

    const payload = jwt.verify(jwtToken, SECRETKEY);

req.userId = payload.id;
    next();
  } catch (err) {
    console.log(err.message);
    return res.status(403).json("not authorized");
  }
};