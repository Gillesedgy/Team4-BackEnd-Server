const express = require("express")
const router = express.Router({ mergeParams: true })
const {
  getAllComments,
  getCommentById,
  deleteComment,
  updateComment,
  createComments,
} = require("../queries/comments")

// Index
router.get("/", async (req, res) => {
  const { discussion_id } = req.params
  try {
    const allComments = await getAllComments(discussion_id)
    res.status(200).json(allComments)
  } catch (error) {
    res.status(500).json({ error: "Sorry not available" })
  }
})

// show
router.get("/:id", async (req, res) => {
  const { id } = req.params
  const showComment = await getCommentById(id)
  !showComment.message
    ? res.status(200).json(showComment)
    : res.status(404).json({ error: "Not Found!" })
})

// create
router.post("/", async (req, res) => {
  try {
    const createComment = await createComments(req.body)
    res.status(200).json(createComment)
  } catch (error) {
    res.status(400).json({ error: "An error has accurred!" })
  }
})

// Update
router.put("/:id", async (req, res) => {
  const { id } = req.params
  const updatedComment = await updateComment(id, req.body)
  updatedComment.id
    ? res.status(200).json(updatedComment)
    : res.status(404).json({ error: "comment not update" })
})

// Delete
router.delete("/:id", async (req, res) => {
  const { id } = req.params
  const deletedComments = await deleteComment(id)
  deletedComments.id
    ? res.status(200).json(deletedComments)
    : res.status(404).json("Comment Not Found!")
})

module.exports = router
