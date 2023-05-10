const express = require("express")

const router = express.Router({ mergeParams: true })
const {
  getAllListings,
  getAllListingsById,
  getOneListings,
  addListing,
  deleteListing,
  updateListing,
} = require("../queries/listings")

// INDEX
router.get("/", async (req, res) => {
  const allListings = await getAllListings()
  allListings[0]
    ? res.status(200).json(allListings)
    : res
        .status(500)
        .json({ error: "An error has accured getting all the listings" })
})

// SHOW
router.get("/:id", async (req, res) => {
  const { id } = req.params
  const oneListing = await getOneListings(id)
  !oneListing.message
    ? res.status(200).json(oneListing)
    : res.status(404).json({ error: "Listing not Found!" })
})

// CREATE
router.post("/", async (req, res) => {
  const newlisting = await addListing(req.body)
  newlisting.id
    ? res.status(200).json(newlisting)
    : res.status(500).json({ error: "" })
})

//  DELETE
router.delete("/:id", async (req, res) => {
  const id = req.params.id
  const deleteOneListing = await deleteListing(id)
  deleteOneListing.id
    ? res.status(200).json({ deleteOneListing })
    : res.status(404).json({ error: "id not found!" })
})

// UPDATE
router.put("/:id", async (req, res) => {
  const { id } = req.params
  const updatingListing = await updateListing(id, req.body)
  updatingListing.id
    ? res.status(200).json(updatingListing)
    : res.status(500).json({ error: "Did not Update" })
})

module.exports = router
