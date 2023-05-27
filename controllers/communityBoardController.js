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

router.get("/", async (req, res) => {
  const allDiscussions = await getAllDiscussions();
  allDiscussions[0]
    ? res.status(200).json(allDiscussions)
    : res.status(500).json({ error: "server error" });
});

router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const oneDiscussion = await getDiscussion(id);
  !oneDiscussion.message
    ? res.status(200).json(oneDiscussion)
    : res.status(404).json({ error: "Discussion not Found!" });
});

router.post("/",authorization, async (req, res) => {
  const {userId} = req
  const newDiscussion = await createDiscussion({...req.body, userId});
  newDiscussion
    ? res.status(200).json(newDiscussion)
    : res.status(500).json({ error: "" });
});

router.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deleteOneDiscussion = await deleteDiscussion(id);
  deleteOneDiscussion.id
    ? res.status(200).json({ deleteOneDiscussion })
    : res.status(404).json({ error: "id not found!" });
});

router.put("/:id", async (req, res) => {
  const { id } = req.params;
  const updattingDiscussion = await updateDiscussion(id, req.body);
  updattingDiscussion.id
    ? res.status(200).json(updattingDiscussion)
    : res.status(500).json({ error: "Did not update discussion" });
});

module.exports = router;
