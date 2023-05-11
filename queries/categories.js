const db = require("../db/dbConfig")

// Index list of comments
async function getAllCategories() {
  try {
    const categories = await db.any("SELECT * FROM categories")
    return categories
  } catch (error) {
    // console.log("getAllCategories error", error)
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
    // console.log("getCategories error", error)
    return error
  }
}

module.exports = { getAllCategories, getCategories }
