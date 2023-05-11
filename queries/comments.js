const db = require("../db/dbConfig")

// Index
async function getAllComments() {
  try {
    const allComments = await db.any("SELECT * FROM comments")
    return allComments
  } catch (error) {
    return error
  }
}
