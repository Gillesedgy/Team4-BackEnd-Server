const express = require("express");
const users = express.Router({ mergeParams: true });

const { newUser, loginUser } = require("../queries/users");

// sign up

users.post("/signup", async (req, res) => {
  const user = await newUser(req.body);

  const { username } = user;
  res.status(200).json({ username });
});

// login

users.post("/login", async (req, res) => {
  const user = await loginUser(req.body);

  if (user.username) {
    const { username } = user;
    res.status(200).json({ message: "login successful", username });
  } else {
    res.status(200).json({ message: "user not found" });
  }
});

module.exports = users;
