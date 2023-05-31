const db = require("../db/dbConfig")

// INDEX ALL JOBS

const getAllJobs = async () => {
  try {
    const allJobs = await db.any("SELECT * FROM jobs")
    return allJobs
  } catch (err) {
    return err
  }
}

// SHOW ONE JOB
const getJob = async (id) => {
  try {
    const oneJob = await db.one("SELECT * FROM jobs WHERE id=$1", id)
    return oneJob
  } catch (err) {
    return err
  }
}

// CREATE JOB
const createJob = async (job) => {
  try {
    const newJob = await db.one(
      "INSERT INTO jobs (job_title, company, email, location, job_type, description, native_language, is_favorite, skills, requirements, salary, logo, user_id) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10 ,$11, $12, $13) RETURNING *",
      [
        job.job_title,
        job.company,
        job.email,
        job.location,
        job.job_type,
        job.description,
        job.native_language,
        job.is_favorite,
        job.skills,
        job.requirements,
        job.salary,
        job.logo,
        job.userId
      ]
    )
    return newJob
  } catch (err) {
    return err
  }
}

// UPDATE
const updateJob = async (id, userId, job) => {
  try {
    const updatedJob = await db.one(
      "UPDATE jobs SET job_title=$1, company=$2, email=$3, location=$4, job_type=$5, description=$6, native_language=$7, is_favorite=$8, skills=$9, requirements=$10, salary=$11, logo=$12 WHERE id=$13 AND user_id=$14 RETURNING *",
      [
        job.job_title,
        job.company,
        job.email,
        job.location,
        job.job_type,
        job.description,
        job.native_language,
        job.is_favorite,
        job.skills,
        job.requirements,
        job.salary,
        job.logo,
        id,       
        userId

      ]
    );
    return updatedJob;
  } catch (err) {
    return err;
  }
};



// DELETE JOB
const deleteJob = async (id, userId) => {
  try {
    const deletedJob = await db.one(
      "DELETE FROM jobs WHERE id=$1 AND user_id=$2 RETURNING *",
      [id, userId]
    );

    return deletedJob
  } catch (err) {
    return err
  }
}

module.exports = {
  getAllJobs,
  getJob,
  createJob,
  deleteJob,
  updateJob,
}
