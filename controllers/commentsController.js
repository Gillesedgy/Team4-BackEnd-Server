const express = require("express")
const router = express.Router({ mergeParams: true })
const authorization = require("../middleware/authorization")
const {
  getAllComments,
  getCommentById,
  deleteComment,
  updateComment,
  createComments,
} = require("../queries/comments")

// Index
router.get("/", async (req, res) => {
  const { communityBoardId } = req.params
  try {
    const allComments = await getAllComments(communityBoardId)
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
router.post("/", authorization, async (req, res) => {
  const { communityBoardId } = req.params;
  const { userId } = req;
  try {
    const userInfo = await userProfile(userId);
    const { username } = userInfo;
    const createComment = await createComments({
      userId,
      communityBoardId,
      commenterName: username,
      comment_body: req.body.comment_body,
    });

    res.status(200).json(createComment);
  } catch (error) {
    res.status(400).json({ error: "An error has occurred!" });
  }
});

// / Update
router.put("/:id", authorization, async (req, res) => {
  const { id } = req.params
  const { userId } = req
  const updatedComment = await updateComment(id, userId, req.body)
  updatedComment.id
    ? res.status(200).json(updatedComment)
    : res.status(404).json({ error: "comment not update" })
})

// Delete
router.delete("/:id", authorization, async (req, res) => {
  const { id } = req.params
  const { userId } = req
  const deletedComments = await deleteComment(id, userId)
  deletedComments.id
    ? res.status(200).json(deletedComments)
    : res.status(404).json("Comment Not Found!")
})
module.exports = router
