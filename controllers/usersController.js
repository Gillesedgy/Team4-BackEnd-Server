const express = require("express");
const users = express.Router({ mergeParams: true });

const jwtGenerator = require("../utils/jwtGenerator");
const authorization = require("../middleware/authorization");
const validInfo = require("../middleware/validInfo");

const {
  signUpUser,
  loginUser,
  userProfile,
  userListings,
  userDiscussion,
  userJob,
} = require("../queries/users");

// sign up

users.post("/signup", validInfo, async (req, res) => {
  try {
    const user = await signUpUser(req.body);

    const { username } = user;
    res.status(200).json({ username });
  } catch (err) {
    return err;
  }
});

// login

users.post("/login", validInfo, async (req, res) => {
  try {
    const user = await loginUser(req.body);
    const { username } = user;
    if (username) {
      res.status(200).json({ message: "login successful", username });
    } else {
      res.status(200).json({ message: "user not found" });
    }
  } catch (err) {
    return err;
  }
});

// get user profile

users.get("/profile/:id", async (req, res) => {
  try {
    const { id } = req.params;

    const user = await userProfile(id);

    if (!user.id) {
      res.json({ message: "no user found" });
    }

    // const token = jwtGenerator(user.id);
    // res.json({ token });

    // destructure the user object
    const { username, email, address, native_language } = user;

    res.status(200).json({ username, email, address, native_language });
  } catch (err) {
    return err;
  }
});

users.get("/profile/listings/:id", async (req, res) => {
  try {
    const { id } = req.params;

    const user = await userListings(id);

    if (!user.id) {
      res.json({ message: "you have no listings" });
    }
    res.json(user);
  } catch (err) {
    return err;
  }
});

users.get("/profile/jobs/:id", async (req, res) => {
  try {
    const { id } = req.params;

    const user = await userJob(id);

    if (user.result.rowCount === 0) {
      res.json({ message: "you have no job listings" });
    }

    //const { username, job_title, company } =  user;
    //console.log(user.result.rows)
    //res.json({username, job_title, company})
    res.json(user.result.rows);
    //res.json(user);
  } catch (err) {
    return err;
  }
});

users.get("/profile/discussion/:id", async (req, res) => {
  try {
    const { id } = req.params;

    const user = await userDiscussion(id);

    if (!user.id) {
      res.json({ message: "you have discussions" });
    }

    const { username, post_title, post_content } = user;

    //res.json(user);
    res.json({ username, post_title, post_content });
  } catch (err) {
    return err;
  }
});

users.get("/verify", authorization, async (req, res) => {
  try {
    res.json(true);
  } catch (err) {
    console.error(err.message);
    res.status(500).send("Server error");
  }
});

module.exports = users;
