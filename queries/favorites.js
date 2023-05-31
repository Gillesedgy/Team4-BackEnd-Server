const db = require("../db/dbConfig")

// get All favorited
async function allFavorites() {
  try {
    const allFavorited = await db.any("SELECT *  FROM favorites")
    return allFavorited
  } catch (error) {
    return error()
  }
}

// show a single favoritye by id, and  user
async function favoritesByID(id) {
  try {
    const favorite = await db.one("SELECT * FROM favorites WHERE id = $1", id)
    return favorite
  } catch (error) {
    return error
  }
}

// create a favorite by id, and user
async function addFavorite({ user_id, favorite_id }) {
  try {
    const addFavorited = await db.one(
      "INSERT INTO favorites(user_id, favorites_id)VALUES($1, $2) RETURNING *",
      [user_id, favorite_id]
    )
    return addFavorited
  } catch (error) {
    return error
  }
}

// update a favorite by id, and user
async function updateFavorite(id, user_id, favorite_id) {
  try {
    const updateFavorited = await db.one(
      "UPDATED favorites SET user_id = $1, favorites_id = $2 WHERE id = $3 RETURNING *",
      [user_id, favorite_id, id]
    )
    return updateFavorited
  } catch (error) {
    return error
  }
}

// delete a favorite by id, and user
async function deleteFavorite(id, userId) {
  try {
    const deletedFavorite = await db.one(
      "DELETE FROM favorites WHERE id = $1 AND user_id = $2 RETURNING *",
      [id, userId]
    )
    return deletedFavorite
  } catch (error) {
    return error
  }
}

module.exports = {
  allFavorites,
  addFavorite,
  favoritesByID,
  deleteFavorite,
  updateFavorite,
}
