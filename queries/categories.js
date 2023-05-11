const db = require("../db/dbConfig")

// Index list of comments
async function getAllCategories() {
  try {
    const categories = await db.any("SELECT * FROM catergories")
    return categories
  } catch (error) {
    return error
  }
}

// show
async function getCategories(id) {
  try {
    const oneCategories = await db.one(
      "SELECT * FROM categories WHERE id=$1",
      id
    )
    return oneCategories
  } catch (error) {
    return error
  }
}

module.exports = { getAllCategories, getCategories }
