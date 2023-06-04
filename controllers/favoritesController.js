const express = require("express");
const authorization = require("../middleware/authorization");
const favorites = express.Router({ mergeParams: true });

const {
  favoriteJobs,
  addFavoriteJob,
  deleteFavoriteJob,

  favoriteListings,
  addFavoriteListing,
  deleteFavoriteListing,

  favoritePosts,
  addFavoritePost,
  deleteFavoritePost,
} = require("../queries/favorite");

/********************* FAVORITE JOBS *********************/

// GET FAVORITE JOBS
favorites.get("/jobs", authorization, async (req, res) => {
  const { userId } = req;
  try {
    const allFavoritedJobs = await favoriteJobs(userId);

    if (allFavoritedJobs.length === 0) {
      res.status(200).json({ message: "Please select a favorite job!" });
    } else {
      res.status(200).json(allFavoritedJobs);
    }
  } catch (error) {
    res.status(500).json({ error: "Failed to get favorite jobs." });
  }
});

// CREATE FAVORITE JOB
favorites.post("/new-job", authorization, async (req, res) => {
  const { userId } = req;
  try {
    const newFavoriteJob = await addFavoriteJob(userId, req.body.job_id);

    if (newFavoriteJob) {
      res.status(200).json(newFavoriteJob);
    } else {
      res.status(500).json({ error: "Error with creating favorite job." });
    }
  } catch (error) {
    res.status(500).json({ error: "Failed to create new favorite job." });
  }
});

// DELETE FAVORITE JOB
favorites.delete("/jobs/:id", authorization, async (req, res) => {
  const { id } = req.params;
  const { userId } = req;

  try {
    const deletedFavoriteJob = await deleteFavoriteJob(userId, id);

    if (deletedFavoriteJob.received === 0) {
      res.status(200).json({ message: "Not one of your favorite job!" });
    } else {
      res.status(200).json({ message: "Sucessfully deleted job!" });
    }
  } catch (error) {
    res.status(500).json({ error: "Failed to delete favorite job." });
  }
});

/********************* FAVORITE LISTINGS *********************/

// GET FAVORITE LISTINGS
favorites.get("/listings", authorization, async (req, res) => {
  const { userId } = req;
  try {
    const allFavoritedListings = await favoriteListings(userId);
    if (allFavoritedListings.length === 0) {
      res.status(200).json({ message: "Please select a favorite listing!" });
    } else {
      res.status(200).json(allFavoritedListings);
    }
  } catch (error) {
    res.status(500).json({ error: "Failed to get favorite listing." });
  }
});

// CREATE FAVORITE LISTING
favorites.post("/new-listing", authorization, async (req, res) => {
  const { userId } = req;
  try {
    const newFavoriteListing = await addFavoriteListing(
      userId,
      req.body.listing_id
    );
    if (newFavoriteListing) {
      res.status(200).json(newFavoriteListing);
    } else {
      res.status(500).json({ error: "Error with creating favorite listing" });
    }
  } catch (error) {
    return error;
  }
});

// DELETE FAVORITE LISTING
favorites.delete("/listings/:id", authorization, async (req, res) => {
  const { id } = req.params;
  const { userId } = req;
  try {
    const deletedFavoriteListing = await deleteFavoriteListing(userId, id);

    if (deletedFavoriteListing.received === 0) {
      res.status(200).json({ message: "Not one of your favorite listing!" });
    } else {
      res.status(200).json({ message: "Sucessfully deleted listing!" });
    }
  } catch (error) {
    return error;
  }
});

/********************* FAVORITE COMMUNITY BOARD DISCUSSION *********************/

// GET FAVORITE DISCUSSIONS
favorites.get("/discussions", authorization, async (req, res) => {
  const { userId } = req;
  try {
    const allFavoritedPosts = await favoritePosts(userId);
    if (allFavoritedPosts.length === 0) {
      res.status(200).json({ message: "Please select a favorite discussion!" });
    } else {
      res.status(200).json(allFavoritedPosts);
    }
  } catch (error) {
    res.status(500).json({ error: "Failed to get favorite discussions." });
  }
});

// CREATE FAVORITE DISCUSSION
favorites.post("/new-discussion", authorization, async (req, res) => {
  const { userId } = req;
  try {
    const newFavoritePost = await addFavoritePost(
      userId,
      req.body.community_board_id
    );
    if (newFavoritePost) {
      res.status(200).json(newFavoritePost);
    } else {
      res.status(500).json({ error: "Error with creating favorite discussion" });
    }
  } catch (error) {
    return error;
  }
});

// DELETE FAVORITE DISCUSSION
favorites.delete("/discussions/:id", authorization, async (req, res) => {
  const { id } = req.params;
  const { userId } = req;
  try {
    const deletedFavoritePost = await deleteFavoritePost(userId, id);

    if (deletedFavoritePost.received === 0) {
      res.status(200).json({ message: "Not one of your favorite discussion!" });
    } else {
      res.status(200).json({ message: "Sucessfully deleted discussion!" });
    }
  } catch (error) {
    return error;
  }
});

module.exports = favorites;
