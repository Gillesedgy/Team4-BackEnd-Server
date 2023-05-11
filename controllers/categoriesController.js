const express = require("express")
const router = express.Router()

const { getAllCategories, getCategories } = require("../queries/categories")

router.get("/", async (req, res) => {
  const allcategoriesList = await getAllCategories()
  allcategoriesList[0]
    ? res.status(200).json(allcategoriesList)
    : res.status(500).json({ error: " Category not Found!" })
})

router.get("/:id", async (req, res) => {
  const { id } = req.params
  const category = await getCategories(id)
  category
    ? res.status(200).json(category)
    : res.status(500).json({ error: "category not found" })
})
module.exports = router
