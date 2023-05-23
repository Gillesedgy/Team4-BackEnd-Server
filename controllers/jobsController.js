const express = require("express");
const authorization = require("../middleware/authorization");

const router = express.Router({ mergeParams: true });

const {
  getAllJobs,
  getJob,
  createJob,
  deleteJob,
  updateJob,
} = require("../queries/jobs");

const { userJob } = require("../queries/users")

router.get("/", async (req, res) => {
  const allJobs = await getAllJobs();
  allJobs[0]
    ? res.status(200).json(allJobs)
    : res.status(500).json({ error: "server error" });
});

router.get("/user", authorization, async (req, res) => {
  const { userId } = req
  const usersJobs = await userJob(userId)
  res.status(200).json(usersJobs)
});

router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const oneJob = await getJob(id);
  !oneJob.message
    ? res.status(200).json(oneJob)
    : res.status(404).json({ error: "Job not Found!" });
});

router.post("/", authorization, async (req, res) => {
  const { userId } = req

  const newJob = await createJob({...req.body, userId});
  newJob
    ? res.status(200).json(newJob)
    : res.status(500).json({ error: "error" });
});

router.put("/:id", async (req, res) => {
  const { id } = req.params;
  const updatedJob = await updateJob(id, req.body);
  updatedJob.id
    ? res.status(200).json(updatedJob)
    : res.status(500).json({ error: "Did not update job" });
});

router.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedJob = await deleteJob(id);
  deletedJob.id
    ? res.status(200).json({ deletedJob })
    : res.status(404).json({ error: "id not found!" });
});

module.exports = router;
