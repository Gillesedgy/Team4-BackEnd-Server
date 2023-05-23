const db = require("../db/dbConfig");

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
  const { username, password } = user;
  try {
    const oneUser = await db.one("SELECT * FROM users WHERE username=$1", [
      username,
    ]);
    if (oneUser) {
      const foundUser = await bcrypt.compare(password, oneUser.password);

      if (foundUser) {
        const { username, id } = oneUser;
        return { username, id };
      }
    }
  } catch (err) {
    return err;
  }
};

const userProfile = async (id) => {
  try {
    const user = await db.one("SELECT * FROM users WHERE id=$1", [id]);
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
      "SELECT * FROM users INNER JOIN community_board_id ON users.id = community_board_id.user_id WHERE users.id=$1",
      id
    );
    return discussion;
  } catch (err) {
    return err;
  }
};

const userJob = async (id) => {
  try {
    const jobs = await db.any(
      "SELECT user_id, jobs.id, job_title, company, jobs.email, location, job_type, description, jobs.native_language, is_favorite  FROM jobs INNER JOIN users ON jobs.user_id = users.id WHERE jobs.user_id=$1",
      id
    );
    return jobs;
  } catch (err) {
    return err;
  }
};

const createJob = async (job) => {
  try {
    const newJob = await db.one(
      "INSERT INTO jobs (job_title, user_id, company, email, location, job_type, description, native_language, is_favorite) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *",
      [
        job.job_title,
        job.user_id,
        job.company,
        job.email,
        job.location,
        job.job_type,
        job.description,
        job.native_language,
        job.is_favorite,
      ]
    );
    return newJob;
  } catch (err) {
    return err;
  }
};

module.exports = {
  signUpUser,
  loginUser,
  userProfile,
  userListings,
  userDiscussion,
  userJob,

  createJob,
};
