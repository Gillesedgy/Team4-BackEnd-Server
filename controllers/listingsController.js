const express = require("express");
const authorization = require("../middleware/authorization");

const router = express.Router({ mergeParams: true });
const {
  getAllListings,
  getOneListing,
  addListing,
  updateListing,
  deleteListing,
} = require("../queries/listings");

const { userListings } = require("../queries/users");

// GET ALL LISTINGS
router.get("/", async (req, res) => {
  const allListings = await getAllListings();
  allListings[0]
    ? res.status(200).json(allListings)
    : res
        .status(500)
        .json({ error: "An error has accured getting all the listings" });
});

// GET A LISTING POSTED BY USER
router.get("/user", authorization, async (req, res) => {
  const { userId } = req;
  const userListing = await userListings(userId);
  if (!userListing.length) {
    res.status(401).json({ message: "you have no listings" });
  } else {
    res.status(200).json(userListing);
  }
});

// GET A LISTING BY ID
router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const oneListing = await getOneListing(id);
  !oneListing.message
    ? res.status(200).json(oneListing)
    : res.status(404).json({ error: "Listing not Found!" });
});

// CREATE A NEW LISTING
router.post("/", authorization, async (req, res) => {
  const { userId } = req;

  const newlisting = await addListing({
    ...req.body,
    userId,
    image_url: req.body.image_url || [
      "https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image",
    ],
  });
  newlisting
    ? res.status(200).json(newlisting)
    : res.status(500).json({ error: "" });
});

// UPDATE A LISTING
router.put("/:id", authorization, async (req, res) => {
  const { userId } = req;
  const { id } = req.params;
  const updatedListing = await updateListing(id, userId, req.body);
  updatedListing && updatedListing.id
    ? res.status(200).json(updatedListing)
    : res.status(500).json({ error: "Listing didnot Update" });
});

// DELETE A LISTING
router.delete("/:id", authorization, async (req, res) => {
  const { userId } = req;
  const { id } = req.params;
  const deleteOneListing = await deleteListing(id, userId, req.body);
  deleteOneListing && deleteOneListing.id
    ? res.status(200).json({ deleteOneListing })
    : res.status(404).json({ error: "Listing not deleted!" });
});

module.exports = router;
