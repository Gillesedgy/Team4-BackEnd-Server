const express = require("express");
const authorization = require("../middleware/authorization");

const router = express.Router({ mergeParams: true });

const {
  getAllDiscussions,
  getDiscussion,
  createDiscussion,
  deleteDiscussion,
  updateDiscussion,
} = require("../queries/communityBoard");

//INDEX
router.get("/", async (req, res) => {
  const allDiscussions = await getAllDiscussions();
  allDiscussions[0]
    ? res.status(200).json(allDiscussions)
    : res.status(500).json({ error: "server error" });
});

//GET Community posting by ID
router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const oneDiscussion = await getDiscussion(id);
  !oneDiscussion.message
    ? res.status(200).json(oneDiscussion)
    : res.status(404).json({ error: "Discussion not Found!" });
});

//CREATE
router.post("/", authorization, async (req, res) => {
  const {userId} = req

  const newDiscussion = await createDiscussion({...req.body, userId});
  newDiscussion
    ? res.status(200).json(newDiscussion)
    : res.status(500).json({ error: "Post not Created" });
});

//UPDATE
router.put("/:id", authorization, async (req, res) => {
  const { id } = req.params;
  const { userId } = req;  
  const updattingDiscussion = await updateDiscussion(id, userId, req.body);
  updattingDiscussion && updattingDiscussion.id
    ? res.status(200).json(updattingDiscussion)
    : res.status(500).json({ error: "Did not update discussion" });
});

//DELETE
router.delete("/:id", authorization, async (req, res) => {
  const { id } = req.params;
  const { userId } = req;  

  const deleteOneDiscussion = await deleteDiscussion(id, userId, req.body);
  deleteOneDiscussion && deleteOneDiscussion.id
    ? res.status(200).json({ deleteOneDiscussion })
    : res.status(404).json({ error: "Can not delete!" });
});



module.exports = router;
