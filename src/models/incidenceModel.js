import pool from '../config/database.js'

export const createIncidence = async (userId, title, description, location, imageUrl) => {
  const [result] = await pool.query(
    'INSERT INTO incidences (user_id, title, description, location, image_url) VALUES (?, ?, ?, ?, ?)',
    [userId, title, description, location, imageUrl]
  )
  return result.insertId
}

export const getAllIncidences = async (page = 1, pageSize = 10, status = null) => {
  let query = 'SELECT * FROM incidences'
  const params = []

  if (status) {
    query += ' WHERE status = ?'
    params.push(status)
  }

  query += ' ORDER BY created_at DESC LIMIT ? OFFSET ?'
  params.push(pageSize, (page - 1) * pageSize)

  const [incidences] = await pool.query(query, params)
  return incidences
}

export const getIncidenceById = async (id) => {
  const [incidences] = await pool.query('SELECT * FROM incidences WHERE id = ?', [id])
  return incidences[0]
}

export const updateIncidence = async (id, status, userId, role) => {
  if (role !== 'admin') {
    const [incidence] = await pool.query('SELECT user_id FROM incidences WHERE id = ?', [id])
    if (incidence[0].user_id !== userId) throw new Error('No autorizado')
  }
  await pool.query('UPDATE incidences SET status = ? WHERE id = ?', [status, id])
}

export const deleteIncidence = async (id, userId, role) => {
  if (role !== 'admin') {
    const [incidence] = await pool.query('SELECT user_id FROM incidences WHERE id = ?', [id])
    if (incidence[0].user_id !== userId) throw new Error('No autorizado')
  }
  await pool.query('DELETE FROM incidences WHERE id = ?', [id])
}

export const getIncidencesStats = async () => {
  const [stats] = await pool.query(`
    SELECT status, COUNT(*) as count
    FROM incidences
    GROUP BY status
  `)
  return stats
}

export const getIncidencesWithPagination = async (page = 1, pageSize = 10, status = null, startDate = null, endDate = null) => {
  let query = 'SELECT * FROM incidences WHERE 1=1'
  const params = []

  if (status) {
    query += ' AND status = ?'
    params.push(status)
  }
  if (startDate) {
    query += ' AND created_at >= ?'
    params.push(startDate)
  }
  if (endDate) {
    query += ' AND created_at <= ?'
    params.push(endDate)
  }

  query += ' ORDER BY created_at DESC LIMIT ? OFFSET ?'
  params.push(pageSize, (page - 1) * pageSize)

  const [incidences] = await pool.query(query, params)
  return incidences
}
