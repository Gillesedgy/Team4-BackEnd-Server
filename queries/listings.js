const db = require("../db/dbConfig")

// Index

const getAllListings = async () => {
  const allListings = await db.any("SELECT * FROM listings")
  return allListings
}
getAllListings().catch((error) => console.error(error))

// show
const getOneListings = async (id) => {
  const onelistings = await db.one("SELECT * FROM listings WHERE id = $1", [id])
  return onelistings
}
getOneListings(id).catch((error) => console.error(error))

const getAllListingsById = async (user_id) => {
  const allListingsByUser = await db.any(
    "SELECT * FROM listings WHERE user_id = $1",
    [user_id]
  )
  return allListingsByUser
}
getAllListingsById(user_id).catch((error) => console.error(error))

// create
const addListing = async (listing) => {
  const newListing = await db.one(
    "INSERT INTO listings(user_id, description, native_language, image_url, date_posted, price, longitude, latitude, is_applied, category_id, is_favorite, title, company) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13) RETURNING*",
    [
      listing.user_id,
      listing.description,
      listing.native_language,
      listing.image_url,
      listing.date_posted,
      listing.price,
      listing.longitude,
      listing.latitude,
      listing.is_applied,
      listing.category_id,
      listing.is_favorite,
      listing.title,
      listing.company,
    ]
  )
  return newListing
}
addListing(listing).catch((error) => console.error(error))

// delete
const deleteListing = async (id) => {
  const deletedListing = await db.one(
    "DELETE * FROM listings WHERE id=$1 RETURNING *",
    id
  )
  return deletedListing
}
deleteListing(id).catch((error) => console.error(error))

//Update
const updateListing = async (id, listing) => {
  const updatedListing = await db.one(
    "UPDATE listings SET user_id=$1, description=$2, native_language=$3, image_url=$4, date_posted=$5, price=$6, longitude=$7, latitude=$8, is_applied=$9, category_id=$10, is_favorite=$11, title=$12, company=$13 WHERE id=$14 RETURNING *",
    [
      listing.user_id,
      listing.description,
      listing.native_language,
      listing.image_url,
      listing.date_posted,
      listing.price,
      listing.longitude,
      listing.latitude,
      listing.is_applied,
      listing.category_id,
      listing.is_favorite,
      listing.title,
      listing.company,
      id,
    ]
  )
  return updatedListing
}
updateListing(id, listing).catch((error) => console.error(error))

module.exports = {
  getAllListings,
  getAllListingsById,
  getOneListings,
  addListing,
  deleteListing,
  updateListing,
}
