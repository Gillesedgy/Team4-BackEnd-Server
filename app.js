const express = require("express");
const app = express();
const cors = require("cors");

//MIDDLEWARE
app.use(express.json());
app.use(cors());

//routes
app.get("/", (req, res) => {
  res.send("Welcome to team 4 (hyphen-hyphen)");
});
//exports
module.exports = app;
