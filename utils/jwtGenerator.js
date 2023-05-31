const jwt = require("jsonwebtoken")

require("dotenv").config()

const { SECRETKEY } = process.env

function jwtGenerator(user_id) {
  const payload = {
    id: user_id,
  }
  return jwt.sign(payload, SECRETKEY, { expiresIn: "24hr" })
}
module.exports = jwtGenerator
