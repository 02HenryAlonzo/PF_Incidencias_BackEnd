import pool from '../config/database.js'

export const createComment = async (incidenceId, userId, content) => {
  const [result] = await pool.query(
    'INSERT INTO comments (incidence_id, user_id, content) VALUES (?, ?, ?)',
    [incidenceId, userId, content]
  )
  return result.insertId
}

export const getCommentsByIncidenceId = async (incidenceId) => {
  const [comments] = await pool.query(
    `SELECT c.*, u.username 
     FROM comments c 
     JOIN users u ON c.user_id = u.id 
     WHERE c.incidence_id = ? 
     ORDER BY c.created_at DESC`,
    [incidenceId]
  )
  return comments
}
