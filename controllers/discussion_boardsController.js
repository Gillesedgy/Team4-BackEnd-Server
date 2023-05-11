const express = require("express");

const discussionsRouter = express.Router({ mergeParams: true });

const {
  getAllDiscussions,
  getDiscussion,
  createDiscussion,
  deleteDiscussion,
  updateDiscussion,
} = require("../queries/discussions_board");

discussionsRouter.get("/", async (req, res) => {
  const allDiscussions = await getAllDiscussions();
  allDiscussions[0]
    ? res.status(200).json(allDiscussions)
    : res.status(500).json({ error: "server error" });
});

discussionsRouter.get("/:id", async (req, res) => {
  const { id } = req.params;
  const oneDiscussion = await getDiscussion(id);
  !oneDiscussion.message
    ? res.status(200).json(oneDiscussion)
    : res.status(404).json({ error: "Discussion not Found!" });
});

discussionsRouter.post("/", async (req, res) => {
  const newDiscussion = await createDiscussion(req.body);
  newDiscussion.id
    ? res.status(200).json(newDiscussion)
    : res.status(500).json({ error: "" });
});

discussionsRouter.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deleteOneDiscussion = await deleteDiscussion(id);
  deleteOneDiscussion.id
    ? res.status(200).json({ deleteOneDiscussion })
    : res.status(404).json({ error: "id not found!" });
});

discussionsRouter.put("/:id", async (req, res) => {
  const { id } = req.params;
  const updattingDiscussion = await updateDiscussion(id, req.body);
  updattingDiscussion.id
    ? res.status(200).json(updattingDiscussion)
    : res.status(500).json({ error: "Did not update discussion" });
});

module.exports = discussionsRouter;
