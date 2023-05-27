const db = require("../db/dbConfig")

// Index

const getAllListings = async () => {
  try {
    const allListings = await db.any("SELECT * FROM listings")
    return allListings
  } catch (error) {
    return error
  }
}

// show
const getOneListings = async (id) => {
  try {
    const onelistings = await db.one("SELECT * FROM listings WHERE id = $1", id)
    return onelistings
  } catch (error) {
    return error
  }
}

const getAllListingsById = async (user_id) => {
  try {
    const allListingsByUser = await db.any(
      "SELECT * FROM listings WHERE user_id = $1",
      [user_id]
    )
    return allListingsByUser
  } catch (error) {
    return error
  }
}

// create
const addListing = async (listing) => {
  try {
    const newListing = await db.one(
      "INSERT INTO listings(user_id, description, native_language, image_url, date_posted, price, location, is_applied, is_favorite, title, company, rooms) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING*",
      [
        listing.userId,
        listing.description,
        listing.native_language,
        listing.image_url,
        listing.date_posted,
        listing.price,
        listing.location,
        listing.is_applied,
        listing.is_favorite,
        listing.title,
        listing.company,
        listing.rooms
      ]
    )
    return newListing
  } catch (error) {
    return error
  }
}

//Update
const updateListing = async (id, listing) => {
  try {
    const updatedListing = await db.one(
      "UPDATE listings SET user_id=$1, description=$2, native_language=$3, image_url=$4, date_posted=$5, price=$6, location=$7, is_applied=$8,  is_favorite=$9, title=$10, company=$11, rooms=$12 WHERE id=$13 RETURNING *",
      [
        listing.userId,
        listing.description,
        listing.native_language,
        listing.image_url,
        listing.date_posted,
        listing.price,
        listing.location,
        listing.is_applied,
        
        listing.is_favorite,
        listing.title,
        listing.company,
        listing.rooms,
        id,
      ]
    )
    return updatedListing
  } catch (error) {
    return error
  }
}

// delete
const deleteListing = async (id) => {
  try {
    const deletedListing = await db.one(
      "DELETE FROM listings WHERE id=$1 RETURNING *",
      id
    )
    return deletedListing
  } catch (error) {
    return error
  }
}

module.exports = {
  getAllListings,
  getAllListingsById,
  getOneListings,
  addListing,
  updateListing,
  deleteListing,
}
