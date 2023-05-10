const express = require("express")
const app = express()
const cors = require("cors")
const listingsController = require("./controllers/listingsController")
// const discussionController = require("./controllers/discussion_boardsController")
// const categoriesController = require("./controllers/categoriesController")
// const commentsController = require("./controllers/commentsController")
const usersController = require("./controllers/usersController")

//MIDDLEWARE
app.use(express.json())
app.use(cors())

//routes
app.use("/users", usersController)
// app.use("/categories", categoriesController)
// app.use("/comments", commentsController)
// app.use("/discussion_boards", discussionController)
app.use("/listings", listingsController)

app.get("/", (req, res) => {
  res.send("Welcome to Out&Abt!!")
})

app.get("*", (req, res) => {
  res.status(404).send("Page not found")
})

//exports
module.exports = app
