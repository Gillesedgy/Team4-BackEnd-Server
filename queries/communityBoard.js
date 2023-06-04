const db = require("../db/dbConfig");

// GET ALL DISCUSSIONS
const getAllDiscussions = async () => {
  try {
    const allDiscussions = await db.any("SELECT * FROM community_board");
    return allDiscussions;
  } catch (err) {
    return err;
  }
};

// GET ONE DISCUSSION
const getOneDiscussion = async (id) => {
  try {
    const discussion = await db.one(
      "SELECT * FROM community_board WHERE id=$1",
      id
    );
    return discussion;
  } catch (error) {
    return error;
  }
};

// CREATE A DISCUSSION
const createDiscussion = async (discussion) => {
  try {
    const newDiscussion = await db.one(
      "INSERT INTO community_board (user_id, post_title, post_content, image_url, native_language) VALUES($1, $2, $3, $4, $5) RETURNING *",
      [
        discussion.userId,
        discussion.post_title,
        discussion.post_content,
        discussion.image_url,
        discussion.native_language,
      ]
    );
    return newDiscussion;
  } catch (error) {
    return error;
  }
};

// UPDATE A DISSUSSION
const updateDiscussion = async (id, userId, discussion) => {
  try {
    const updatedDiscussion = await db.one(
      "UPDATE community_board SET post_title=$1, post_content=$2, image_url=$3, native_language=$4 WHERE id=$5 AND user_id=$6 RETURNING *",
      [
        discussion.post_title,
        discussion.post_content,
        discussion.image_url,
        discussion.native_language,
        id,
        userId,
      ]
    );
    return updatedDiscussion;
  } catch (error) {
    return error;
  }
};

// DELETE A DISCUSSION
const deleteDiscussion = async (id, userId) => {
  try {
    const deletedDiscussion = await db.one(
      "DELETE FROM community_board WHERE id=$1 AND user_id=$2 RETURNING *",
      [id, userId]
    );
    return deletedDiscussion;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllDiscussions,
  getOneDiscussion,
  createDiscussion,
  updateDiscussion,
  deleteDiscussion,
};
