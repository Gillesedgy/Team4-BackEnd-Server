const express = require("express");
const users = express.Router({ mergeParams: true });

const jwtGenerator = require("../utils/jwtGenerator");
const authorization = require("../middleware/authorization");
const validInfo = require("../middleware/validInfo");

const {
  signUpUser,
  loginUser,
  userProfile,
  userJob,
} = require("../queries/users");

// sign up

users.post("/signup", validInfo, async (req, res) => {
  try {
    const user = await signUpUser({
      ...req.body,
      image_url:
        req.body.image_url ||
        "https://res.cloudinary.com/dldvfnn89/image/upload/v1685495938/Screen_Shot_2023-05-30_at_9.18.39_PM_d8uzsv.png",
    });

    const { username } = user;
    const token = jwtGenerator(user.id);

    res.status(200).json({ message: "sign up successful, please login" });
  } catch (err) {
    res.status(500).json({ error: err });
  }
});

// login

users.post("/login", validInfo, async (req, res) => {
  try {
    const user = await loginUser(req.body);
    if (user.username) {
      const token = jwtGenerator(user.id);
      res.status(200).json({ ...user, token, message: "login successful" });
    } else {
      res.status(404).json({ message: "user not found" });
    }
  } catch (err) {
    res.status(500).json({ message: "error" });
  }
});

// get user profile

users.get("/profile", authorization, async (req, res) => {
  try {
    const { userId } = req;

    const user = await userProfile(userId);

    if (!user.id) {
      res.json({ message: "no user found" });
    }

    // destructure the user object
    const { username, email, address, native_language, image_url } = user;

    res
      .status(200)
      .json({ username, email, address, native_language, image_url });
  } catch (err) {
    return err;
  }
});

// user verify
users.get("/verify", authorization, async (req, res) => {
  try {
    res.json(true);
  } catch (err) {
    console.error(err.message);
    res.status(500).send("Server error");
  }
});

module.exports = users;
