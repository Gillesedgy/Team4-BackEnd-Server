const express = require("express")
const authorization = require("../middleware/authorization")
const router = express.Router({ mergeParams: true })

const {
  allFavorites,
  addFavorite,
  favoritesByID,
  deleteFavorite,
  updateFavorite,
} = require("../queries/favorites")

const { userFavorites } = require("../queries/favorites")
router.get("/", async (req, res) => {
  const allFavorited = await allFavorites()
  allFavorites[0]
    ? res.status(200).json(allFavorited)
    : res.status(500).json({ error: "server error" })
})

router.get("/:id", async (req, res) => {
  const { id } = req.params
  const favorite = await favoritesByID(id)
  !favorite.message
    ? res.status(200).json(favorite)
    : res.status(404).json({ error: "Favorite not Found!" })
})

router.get("/user", authorization, async (req, res) => {
  try {
    const { userId } = req
    const userFavorite = await userFavorites(userId)
    res.status(200).json(userFavorite)
  } catch (error) {
    res
      .status(500)
      .json({ error: "An error occurred while retrieving user favorites." })
  }
})

// CREATE
router.post("/", authorization, async (req, res) => {
  const { userId } = req.body
  const newFavorite = await addFavorite({ ...req.body, user_id: userId })
  newFavorite
    ? res.status(201).json(newFavorite)
    : res.status(500).json({ error: "error with creating favorite" })
})

// UPDATE
router.put("/:id", authorization, async (req, res) => {
  const { id } = req.params
  const { userId } = req
  const { favorite_id } = req.body
  const updatedFavorite = await updateFavorite(id, userId, favorite_id)
  updatedFavorite && updatedFavorite.id
    ? res.status(200).json(updatedFavorite)
    : res.status(500).json({ error: "Favorite not updated!!" })
})

// DELETE
router.delete("/:id", authorization, async (req, res) => {
  const { id } = req.params
  const { userId } = req

  try {
    const deletedFavorite = await deleteFavorite(id, userId)
    if (deletedFavorite && deletedFavorite.id) {
      res.status(200).json({ deletedFavorite })
    } else {
      res.status(404).json({ error: "Favorite not deleted!" })
    }
  } catch (error) {
    res
      .status(500)
      .json({ error: "An error occurred while deleting the favorite." })
  }
})

module.exports = router
