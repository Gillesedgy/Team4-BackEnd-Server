const db = require("../db/dbConfig")

// Index
async function getAllUsers() {
  const allUsers = await db.any("SELECT * FROM users")
  return allUsers
}
getAllUsers().catch((error) => console.error(error))

// show
async function getOneUser(user) {
  const oneUser = await db.one("SELECT * FROM users WHERE username=$1", user)
  return oneUser
}
getOneUser(user).catch((error) => console.error(error))

// create
async function createUser(user) {
  const newUser = await db.one(
    " INSERT INTO users (username, email, password, address, native_language) VALUES ($1, $2, $3, $4, $5) RETURNING *",
    [
      user.username,
      user.email,
      user.password,
      user.address,
      user.native_language,
    ]
  )
  return newUser
}
createUser(user).catch((error) => console.error(error))

//update
async function deleteUser(user) {
  const erasedUser = await db.one("DELETE FROM user WHERE user=$1")
  return erasedUser
}

deleteUser(user).catch((error) => console.error(error))

module.exports = { deleteUser, createUser, getOneUser, getAllUsers }
