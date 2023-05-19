const db = require("../db/dbConfig");

// INDEX ALL DISCUSSIONS
const getAllDiscussions = async () => {
  try {
    const allDiscussions = await db.any("SELECT * FROM community_board");
    return allDiscussions;
  } catch (err) {
    return err;
  }
};

// SHOW ONE DISCUSSION
const getDiscussion = async (id) => {
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

// CREATE DISCUSSION
const createDiscussion = async (discussion) => {
  try {
    const newDiscussion = await db.one(
      "INSERT INTO community_board (post_title, post_content, image_url, native_language) VALUES($1, $2, $3, $4) RETURNING *",
      [
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

// DELETE DISCUSSION
const deleteDiscussion = async (id) => {
  try {
    const deletedDiscussion = await db.one(
      "DELETE FROM community_board WHERE id=$1 RETURNING *",
      id
    );
    return deletedDiscussion;
  } catch (error) {
    return error;
  }
};

// UPDATE DISSUSSION
const updateDiscussion = async (id, discussion) => {
  try {
    const updatedDiscussion = await db.one(
      "UPDATE community_board SET post_title=$1, post_content=$2, image_url=$3, native_language=$4 WHERE id=$5 RETURNING *",
      [
        discussion.post_title,
        discussion.post_content,
        discussion.image_url,
        discussion.native_language,
        id,
      ]
    );
    return updatedDiscussion;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllDiscussions,
  getDiscussion,
  createDiscussion,
  deleteDiscussion,
  updateDiscussion,
};
