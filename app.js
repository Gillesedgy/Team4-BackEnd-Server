const express = require("express")
const app = express()
const cors = require("cors")
const bodyParser = require('body-parser');



const categoriesController = require("./controllers/categoriesController")
const favoritesController = require("./controllers/favoritesController")
const commentsController = require("./controllers/commentsController")
const communityBoardController = require("./controllers/communityBoardController.js")
const jobsController = require("./controllers/jobsController")
const listingsController = require("./controllers/listingsController")
const usersController = require("./controllers/usersController")

//MIDDLEWARE
app.use(bodyParser.json({ limit: '16mb' }));
app.use(express.json())
app.use(cors())
// app.use(express.json({limit: '16mb'})); // limits the request size
app.use(express.urlencoded({extended: false})); 
//routes
app.use("/categories", categoriesController)
app.use("/favorites", favoritesController)
app.use("/communityBoard", communityBoardController)
app.use("/jobs", jobsController)
app.use("/listings", listingsController)
app.use("/users", usersController)

app.get("/", (req, res) => {
  res.send("Welcome to Out&Abt!!")
})

app.get("*", (req, res) => {
  res.status(404).send("Page not found")
})

//exports
module.exports = app
