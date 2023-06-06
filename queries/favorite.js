const db = require("../db/dbConfig");

/********************* FAVORITE JOBS *********************/

// GET ALL USER FAVORITE JOBS
const favoriteJobs = async (user_id) => {
  try {
    const allFavoritedJobs = await db.any(
      "SELECT * FROM jobs where id IN (SELECT job_id FROM fav_jobs WHERE user_id=$1)",
      [user_id]
    );
    return allFavoritedJobs;
  } catch (error) {
    return error;
  }
};

// CREATE A USER FAVORITE JOB BY USERID AND JOBID
const addFavoriteJob = async (user_id, job_id) => {
  try {
    const addedFavoriteJob = await db.one(
      "INSERT INTO fav_jobs(user_id, job_id) VALUES($1, $2) RETURNING *",
      [user_id, job_id]
    );
    return addedFavoriteJob;
  } catch (error) {
    return error;
  }
};

// DELETE A USER FAVORITE JOB BY USERID AND JOBID
const deleteFavoriteJob = async (user_id, job_id) => {
  try {
    const deletedFavoriteJob = await db.one(
      "DELETE FROM fav_jobs WHERE user_id=$1 AND job_id=$2 RETURNING *",
      [user_id, job_id]
    );
    return deletedFavoriteJob;
  } catch (error) {
    return error;
  }
};

/********************* FAVORITE LISTINGS *********************/

// GET ALL USER FAVORITE LISTINGS
const favoriteListings = async (user_id) => {
  try {
    const allFavoritedListings = await db.any(
      "SELECT * FROM listings where id IN (SELECT listing_id FROM fav_listings WHERE user_id=$1)",
      [user_id]
    );
    return allFavoritedListings;
  } catch (error) {
    return error;
  }
};

// CREATE A USER FAVORITE LISTING BY USERID AND LISTINGID
const addFavoriteListing = async (user_id, listing_id) => {
  try {
    const addedFavoriteListing = await db.one(
      "INSERT INTO fav_listings(user_id, listing_id) VALUES($1, $2) RETURNING *",
      [user_id, listing_id]
    );
    return addedFavoriteListing;
  } catch (error) {
    return error;
  }
};

// DELETE A USER FAVORITE LISTING BY USERID AND LISTINGID
const deleteFavoriteListing = async (user_id, listing_id) => {
  try {
    const deletedFavoriteListing = await db.one(
      "DELETE FROM fav_listings WHERE user_id=$1 AND listing_id=$2 RETURNING *",
      [user_id, listing_id]
    );
    return deletedFavoriteListing;
  } catch (error) {
    return error;
  }
};

/********************* FAVORITE COMMUNITY BOARD DISCUSSION *********************/

// GET ALL USER FAVORITE POSTS
const favoritePosts = async (user_id) => {
  try {
    const allFavoritedPosts = await db.any(
      "SELECT * FROM community_board where id IN (SELECT community_board_id FROM fav_community_posts WHERE user_id=$1)",
      [user_id]
    );
    return allFavoritedPosts;
  } catch (error) {
    return error;
  }
};

// CREATE A USER FAVORITE POST BY USERID AND COMMUNITYBOARDID
const addFavoritePost = async (user_id, community_board_id) => {
  try {
    const addedFavoritePost = await db.one(
      "INSERT INTO fav_community_posts(user_id, community_board_id) VALUES($1, $2) RETURNING *",
      [user_id, community_board_id]
    );
    return addedFavoritePost;
  } catch (error) {
    return error;
  }
};

// DELETE A USER FAVORITE POST BY USERID AND COMMUNITYBOARDID

const deleteFavoritePost = async (user_id, community_board_id) => {
  try {
    const deletedFavoritePost = await db.one(
      "DELETE FROM fav_community_posts WHERE user_id=$1 AND community_board_id=$2 RETURNING *",
      [user_id, community_board_id]
    );
    return deletedFavoritePost;
  } catch (error) {
    return error;
  }
};

module.exports = {
  favoriteJobs,
  addFavoriteJob,
  deleteFavoriteJob,

  favoriteListings,
  addFavoriteListing,
  deleteFavoriteListing,

  favoritePosts,
  addFavoritePost,
  deleteFavoritePost,
};
