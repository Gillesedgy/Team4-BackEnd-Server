const express = require("express");

const router = express.Router({ mergeParams: true });

const {
  getAllJobs,
  getJob,
  createJob,
  deleteJob,
  updateJob,
} = require("../queries/jobs");

router.get("/", async (req, res) => {
  const allJobs = await getAllJobs();
  allJobs[0]
    ? res.status(200).json(allJobs)
    : res.status(500).json({ error: "server error" });
});

router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const oneJob = await getJob(id);
  !oneJob.message
    ? res.status(200).json(oneJob)
    : res.status(404).json({ error: "Job not Found!" });
});

router.post("/", async (req, res) => {
  const newJob = await createJob(req.body);
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
