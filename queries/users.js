const db = require("../db/dbConfig")

const bcrypt = require("bcrypt")
const saltRounds = 10

const signUpUser = async (user) => {
  const { username, email, password, address, native_language, image_url } =
    user
  try {
    const salt = await bcrypt.genSalt(saltRounds)

    const hashedPassword = await bcrypt.hash(password, salt)

    const newUser = await db.one(
      "INSERT INTO users(username, email, password, address, native_language, image_url) VALUES($1, $2, $3, $4, $5, $6) RETURNING *",
      [username, email, hashedPassword, address, native_language, image_url]
    )

    if (newUser) {
      return newUser
    }
  } catch (err) {
    return err
  }
}

const loginUser = async (user) => {
  const { username, password } = user
  try {
    const oneUser = await db.one("SELECT * FROM users WHERE username=$1", [
      username,
    ])
    if (oneUser) {
      const foundUser = await bcrypt.compare(password, oneUser.password)

      if (foundUser) {
        const { username, id } = oneUser
        return { username, id }
      }
    }
  } catch (err) {
    return err
  }
}

const userProfile = async (id) => {
  try {
    const user = await db.one("SELECT * FROM users WHERE id=$1", [id])
    return user
  } catch (err) {
    return err
  }
}

const userJob = async (id) => {
  try {
    const jobs = await db.any(
      "SELECT user_id, jobs.id, job_title, company, jobs.email, location, job_type, description, jobs.native_language, is_favorite  FROM jobs INNER JOIN users ON jobs.user_id = users.id WHERE jobs.user_id=$1",
      id
    )
    return jobs
  } catch (err) {
    return err
  }
}

const userListings = async (id) => {
  try {
    const listings = await db.any(
      "SELECT user_id, listings.id, description, listings.native_language, listings.image_url, date_posted, price, location, is_applied, is_favorite, title, company, rooms FROM listings INNER JOIN users ON listings.user_id = users.id WHERE listings.user_id=$1",
      id
    )

    return listings
  } catch (err) {
    return err
  }
}

const userDiscussion = async (id) => {
  try {
    const discussion = await db.one(
      "SELECT * FROM  community_board INNER JOIN users ON community_board.users_id = users.id WHERE community_board.users_id=$1",
      id
    )
    return discussion
  } catch (err) {
    return err
  }
}

async function userFavorite(id) {
  try {
    const userFavorites = await db.any(
      " SELECT * FROM favorites WHERE user_id=$1",
      id
    )
    return userFavorites
  } catch (error) {
    return error
  }
}

module.exports = {
  signUpUser,
  loginUser,
  userProfile,
  userListings,
  userDiscussion,
  userJob,
}
