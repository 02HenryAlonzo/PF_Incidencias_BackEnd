import pool from '../config/database.js'

export const generateReport = async (startDate, endDate) => {
  const [report] = await pool.query(`
    SELECT status, COUNT(*) as count
    FROM incidences
    WHERE created_at BETWEEN ? AND ?
    GROUP BY status
  `, [startDate, endDate])

  return report
}
