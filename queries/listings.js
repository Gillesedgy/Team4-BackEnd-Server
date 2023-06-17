const db = require("../db/dbConfig");

// GET ALL LISTINGS
const getAllListings = async () => {
  try {
    const allListings = await db.any("SELECT * FROM listings");
    return allListings;
  } catch (error) {
    return error;
  }
};

// GET A LISTING BY ID
const getOneListing = async (id) => {
  try {
    const onelisting = await db.one("SELECT * FROM listings WHERE id = $1", id);
    return onelisting;
  } catch (error) {
    return error;
  }
};

//Filter listing by native language
const filterByLanguage = async (language) => {
  try {
    let filteredListings = await db.any(
      "SELECT * FROM listings WHERE native_language = $1",
      [language]
    );
    return filteredListings;
  } catch (error) {
    return error;
  }
};

// CREATE A NEW LISTING
const addListing = async (listing) => {
  try {
    const newListing = await db.one(
      "INSERT INTO listings(description, native_language, image_url, date_posted, price, location, is_applied, is_favorite, title, company, rooms, user_id) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING*",
      [
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
        listing.userId,
      ]
    );
    return newListing;
  } catch (error) {
    return error;
  }
};

// UPDATE A LISTING
const updateListing = async (id, userId, listing) => {
  try {
    const updatedListing = await db.one(
      "UPDATE listings SET description=$1, native_language=$2, image_url=$3, date_posted=$4, price=$5, location=$6, is_applied=$7, is_favorite=$8, title=$9, company=$10, rooms=$11 WHERE id=$12 AND user_id=$13 RETURNING *",
      [
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
        userId,
      ]
    );

    return updatedListing;
  } catch (error) {
    return error;
  }
};

// DELETE A LISTING
const deleteListing = async (id, userId) => {
  try {
    const deletedListing = await db.one(
      "DELETE FROM listings WHERE id=$1 AND user_id=$2 RETURNING *",
      [id, userId]
    );
    return deletedListing;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllListings,
  getOneListing,
  addListing,
  updateListing,
  deleteListing,
  filterByLanguage,
};
