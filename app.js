const express = require("express")
const app = express()
const cors = require("cors")

<<<<<<< HEAD
const listingsController = require("./controllers/listingsController")
// const discussionController = require("./controllers/discussion_boardsController")
const categoriesController = require("./controllers/categoriesController")
const commentsController = require("./controllers/commentsController")
const usersController = require("./controllers/usersController")
=======
const usersController = require("./controllers/usersController")
const listingsController = require("./controllers/listingsController")
const discussionController = require("./controllers/discussion_boardsController")
// const categoriesController = require("./controllers/categoriesController")
// const commentsController = require("./controllers/commentsController")
const jobsController = require("./controllers/jobsController")
>>>>>>> a4e60dd31698dc9c4e4d0e2016c559b8296197db

//MIDDLEWARE
app.use(express.json())
app.use(cors())

//routes
app.use("/users", usersController)
<<<<<<< HEAD
app.use("/categories", categoriesController)
app.use("/comments", commentsController)
// app.use("/discussion_boards", discussionController)
=======
// app.use("/categories", categoriesController)
// app.use("/comments", commentsController)
app.use("/discussions", discussionController)
>>>>>>> a4e60dd31698dc9c4e4d0e2016c559b8296197db
app.use("/listings", listingsController)
app.use('/jobs', jobsController)

app.get("/", (req, res) => {
  res.send("Welcome to Out&Abt!!")
})

app.get("*", (req, res) => {
  res.status(404).send("Page not found")
})

//exports
module.exports = app
