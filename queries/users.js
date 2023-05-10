const db = require("../db/dbConfig")

const bcrypt = require("bcrypt");
const saltRounds = 10;

const newUser = async (user) => {
  const { username, email, password, address, native_language } = user;
  try {
    const salt = await bcrypt.genSalt(saltRounds);

    const hashedPassword = await bcrypt.hash(password, salt);

    const newUser = await db.one(
      "INSERT INTO users(username, email, password, address, native_language) VALUES($1, $2, $3, $4, $5) RETURNING *",
      [username, email, hashedPassword, address, native_language]
    );

    if (newUser) {
      return newUser;
    }
  } catch (err) {
    return err;
  }
};

const loginUser = async (user) => {
  const { password, username } = user;
  try {
    const oneUser = await db.one("SELECT * FROM users WHERE username=$1", [
      username,
    ]);
    if (oneUser) {
      const foundUser = await bcrypt.compare(password, oneUser.password);

      if (foundUser) {
        const { username } = oneUser;
        return { username };
      }
    }
  } catch (err) {
    return err;
  }
};

module.exports = { newUser, loginUser };

