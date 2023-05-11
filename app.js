const express = require("express")
const app = express()
const cors = require("cors")

const usersController = require("./controllers/usersController")
const listingsController = require("./controllers/listingsController")
const discussionController = require("./controllers/discussion_boardsController")
const categoriesController = require("./controllers/categoriesController")
const commentsController = require("./controllers/commentsController")
const jobsController = require("./controllers/jobsController")

//MIDDLEWARE
app.use(express.json())
app.use(cors())

//routes
app.use("/users", usersController)
app.use("/categories", categoriesController)
app.use("/comments", commentsController)
app.use("/discussions", discussionController)
app.use("/listings", listingsController)
app.use("/jobs", jobsController)

app.get("/", (req, res) => {
  res.send("Welcome to Out&Abt!!")
})

app.get("*", (req, res) => {
  res.status(404).send("Page not found")
})

//exports
module.exports = app
