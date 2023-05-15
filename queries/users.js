const db = require("../db/dbConfig")

const bcrypt = require("bcrypt");
const saltRounds = 10;

const signUpUser = async (user) => {
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

const userProfile = async (id) => {
  try {
    const user = await db.one("SELECT * FROM users WHERE id=$1", id);
    return user;
  } catch (err) {
    return err;
  }
};

const userListings = async (id) => {
  try {
    const listings = await db.one(
      "SELECT * FROM users INNER JOIN listings ON users.id = listings.user_id WHERE users.id=$1",
      id
    );
   
    return listings;
  } catch (err) {
    return err;
  }
};

const userDiscussion = async (id) => {
  try {
    const discussion = await db.one(
      "SELECT * FROM users INNER JOIN discussions_board ON users.id = discussions_board.user_id WHERE users.id=$1",
      id
    );
    return discussion;
  } catch (err) {
    return err;
  }
};

const userJob = async (id) => {
  try {
    const job = await db.one(
      "SELECT * FROM users INNER JOIN jobs ON users.id = jobs.user_id WHERE users.id=$1",
      id
    );
    return job;
  } catch (err) {
    return err;
  }
};

module.exports = { signUpUser, loginUser, userProfile, userListings,userDiscussion, userJob };

