const express = require("express");
const authorization = require("../middleware/authorization");

const router = express.Router({ mergeParams: true });

const {
  getAllJobs,
  getOneJob,
  createJob,
  deleteJob,
  updateJob,
  filterByNativeLanguage,
} = require("../queries/jobs");

const { userJob } = require("../queries/users");

// GET ALL JOBS
router.get("/", async (req, res) => {
  const { language } = req.query;
  if (language) {
    const filtered = await filterByNativeLanguage(language);
    if (!filtered.message) {
      res.status(200).json(filtered);
    } else {
      res
        .status(500)
        .json({ error: "An issue occurred with the language filter" });
    }
  } else {
    const allJobs = await getAllJobs();
    allJobs[0]
      ? res.status(200).json(allJobs)
      : res.status(500).json({ error: "server error" });
  }
});

// GET A JOB POSTED BY USER
router.get("/user", authorization, async (req, res) => {
  const { userId } = req;
  const usersJobs = await userJob(userId);
  res.status(200).json(usersJobs);
});

// GET A JOB BY ID
router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const oneJob = await getOneJob(id);
  !oneJob.message
    ? res.status(200).json(oneJob)
    : res.status(404).json({ error: "Job not Found!" });
});

// CREATE A JOB
router.post("/", authorization, async (req, res) => {
  const { userId } = req;

  const newJob = await createJob({
    ...req.body,
    userId,
    logo:
      req.body.logo ||
      "https://res.cloudinary.com/dldvfnn89/image/upload/v1685548548/Screen_Shot_2023-05-31_at_11.54.57_AM_mikwba.png",
  });
  newJob
    ? res.status(200).json(newJob)
    : res.status(500).json({ error: "Job not posted" });
});

// UPDATE A JOB
router.put("/:id", authorization, async (req, res) => {
  const { id } = req.params;
  const { userId } = req;
  const updatedJob = await updateJob(id, userId, req.body);

  updatedJob && updatedJob.id
    ? res.status(200).json(updatedJob)
    : res.status(500).json({ error: "Job not updated!" });
});

// DELETE A JOB
router.delete("/:id", authorization, async (req, res) => {
  const { id } = req.params;
  const { userId } = req;

  const deletedJob = await deleteJob(id, userId, req.body);
  deletedJob && deletedJob.id
    ? res.status(200).json({ deletedJob })
    : res.status(404).json({ error: "Job not Deleted!" });
});

module.exports = router;
