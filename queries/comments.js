const db = require("../db/dbConfig");

// Index list of comments
async function getAllComments(communityBoardId) {
  try {
    const allComments = await db.any(
      "SELECT * FROM comments WHERE community_board_id=$1",
      [communityBoardId]
    );
    return allComments;
  } catch (error) {
    return error;
  }
}

// Show individual comment
async function getCommentById(id) {
  try {
    const oneComment = await db.one("SELECT * FROM comments WHERE id=$1", id);
    return oneComment;
  } catch (error) {
    return error;
  }
}

// Create
async function createComments(comment) {
  try {
    const newComment = await db.one(
      "INSERT INTO comments (user_id, community_board_id, commenter_name, comment_body) VALUES ($1, $2, $3, $4) RETURNING *",
      [
        comment.userId,
        comment.communityBoardId,
        comment.commenterName,
        comment.comment_body,
      ]
    );
    return newComment;
  } catch (error) {
    return error;
  }
}

// Update
async function updateComment(id, userId, comment) {
  try {
    const updatedComment = await db.one(
      "UPDATE comments SET user_id=$1, community_board_id=$2, comment_body=$3 WHERE id=$4 and user_id =$5 RETURNING *",
      [
        comment.userId,
        comment.community_board_id,
        comment.comment_body,
        id,
        userId,
      ]
    );
    return updatedComment;
  } catch (error) {
    return error;
  }
}

//Delete
async function deleteComment(id, userId) {
  try {
    const deletedComment = await db.one(
      "DELETE FROM comments WHERE id=$1 and user_id=$2 RETURNING*",
      [id, userId]
    );
    return deletedComment;
  } catch (error) {
    return error;
  }
}
module.exports = {
  getAllComments,
  getCommentById,
  deleteComment,
  updateComment,
  createComments,
};
