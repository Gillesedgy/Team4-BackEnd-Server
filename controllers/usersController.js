const express = require("express")
const users = express.Router({ mergeParams: true })

const jwtGenerator = require("../utils/jwtGenerator")
const authorization = require("../middleware/authorization")
const validInfo = require("../middleware/validInfo")

const {
  signUpUser,
  loginUser,
  userProfile,
  userListings,
  userDiscussion,
  userJob,
  createJob,
  userFavorite,
  userFavoriteListings,
  userFavoriteCommunityboard,
  userFavoriteJob,
} = require("../queries/users")
const { router } = require("../app")

// sign up

users.post("/signup", validInfo, async (req, res) => {
  try {
    const user = await signUpUser({
      ...req.body,
      image_url:
        req.body.image_url ||
        "https://res.cloudinary.com/dldvfnn89/image/upload/v1685495938/Screen_Shot_2023-05-30_at_9.18.39_PM_d8uzsv.png",
    })

    const { username } = user
    const token = jwtGenerator(user.id)

    res.status(200).json({ username, token: token })
  } catch (err) {
    return err
  }
})

// login

users.post("/login", validInfo, async (req, res) => {
  try {
    const user = await loginUser(req.body)

    const { username, id } = user
    if (username) {
      const token = jwtGenerator(user.id)
      res.status(200).json({ id, username, token, message: "login successful" })
    } else {
      res.status(404).json({ message: "user not found" })
    }
  } catch (err) {
    res.status(500).json({ message: "error" })
  }
})

// get user profile

users.get("/profile", authorization, async (req, res) => {
  try {
    const { userId } = req

    const user = await userProfile(userId)

    if (!user.id) {
      res.json({ message: "no user found" })
    }

    // destructure the user object
    const { username, email, address, native_language, image_url } = user

    res
      .status(200)
      .json({ username, email, address, native_language, image_url })
  } catch (err) {
    return err
  }
})

users.get("/listings/:id", async (req, res) => {
  try {
    const { id } = req.params

    const user = await userListings(id)

    if (!user.id) {
      res.json({ message: "you have no listings" })
    }
    res.json(user)
  } catch (err) {
    return err
  }
})

users.get("/jobs/:id", async (req, res) => {
  try {
    const { id } = req.params

    const user = await userJob(id)
    console.log(user)

    if (!user) {
      res.json({ message: "you have no job listings" })
    }

    res.json(user)
  } catch (err) {
    res.json(err)
  }
})

users.get("/discussion/:id", async (req, res) => {
  try {
    const { id } = req.params

    const user = await userDiscussion(id)

    if (!user.id) {
      res.json({ message: "you have discussions" })
    }

    const { username, post_title, post_content } = user

    //res.json(user);
    res.json({ username, post_title, post_content })
  } catch (err) {
    return err
  }
})

users.post("/profile/jobs", authorization, async (req, res) => {
  try {
    const newJob = await createJob(req.body)
    res.json(newJob)
  } catch (err) {
    console.error(err)
  }
})

// user Favorites
users.get("/favorites", authorization, async (req, res) => {
  try {
    const { userId } = req

    const favorites = await userFavorite(userId)

    res.status(200).json(favorites)
  } catch (err) {
    console.error(err)
    res.status(500).json({ error: "Error retrieving favorites" })
  }
})

// user favorite listings
users.get("/listings", authorization, async (req, res) => {
  try {
    const { userId } = req
    const favoriteListings = await userFavoriteListings(userId)
    res.status(200).json(favoriteListings)
  } catch (error) {
    console.error(error)
    res.status(500).json({ error: "Error retrieving favorite listings" })
  }
})

// user favorite communityboard Post
users.get("/communityboard", authorization, async (req, res) => {
  try {
    const { userId } = req
    const userFavoriteCommunityboardPosts =
      await userFavoriteCommunityboardPosts(userId)
    res.status(200).json(userFavoriteCommunityboardPosts)
  } catch (error) {
    console.error(error)
    res
      .status(500)
      .json({ error: "Error retrieving favorite community board posts" })
  }
})

// user favorite jobs
users.get("/jobs", authorization, async (req, res) => {
  try {
    const favoriteJobs = await userFavoriteJob(userId)
    res.status(200).json(userFavoriteJob)
  } catch (error) {
    console.error(error)
    res.status(500).json({ error: "Error retrieving favorite jobs" })
  }
})

// user verify
users.get("/verify", authorization, async (req, res) => {
  try {
    res.json(true)
  } catch (err) {
    console.error(err.message)
    res.status(500).send("Server error")
  }
})

module.exports = users
