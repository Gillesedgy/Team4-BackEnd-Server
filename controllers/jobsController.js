const express = require("express");

const jobsRouter = express.Router({ mergeParams: true });

const {
  getAllJobs,
  getJob,
  createJob,
  deleteJob,
  updateJob,
} = require("../queries/jobs");


jobsRouter.get("/", async (req, res) => {
    const allJobs = await getAllJobs();
    allJobs[0]
      ? res.status(200).json(allJobs)
      : res.status(500).json({ error: "server error" });
  });
  
  jobsRouter.get("/:id", async (req, res) => {
    const { id } = req.params;
    const oneJob = await getJob(id);
    !oneJob.message
      ? res.status(200).json(oneJob)
      : res.status(404).json({ error: "Job not Found!" });
  });
  
  jobsRouter.post("/", async (req, res) => {
    const newJob = await createJob(req.body);
    newJob.id
      ? res.status(200).json(newJob)
      : res.status(500).json({ error: "" });
  });
  
  jobsRouter.delete("/:id", async (req, res) => {
    const { id } = req.params;
    const deleteJob = await deleteJob(id);
    deleteJob.id
      ? res.status(200).json({ deleteJob })
      : res.status(404).json({ error: "id not found!" });
  });
  
  jobsRouter.put("/:id", async (req, res) => {
    const { id } = req.params;
    const updatedJob = await updateJob(id, req.body);
    updatedJob.id
      ? res.status(200).json(updatedJob)
      : res.status(500).json({ error: "Did not update job" });
  });
  
  module.exports = jobsRouter;