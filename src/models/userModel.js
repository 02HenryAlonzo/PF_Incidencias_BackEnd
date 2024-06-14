import pool from '../config/database.js'
import bcrypt from 'bcrypt'

export const createUser = async (username, email, password, role = 'resident') => {
  const hashedPassword = await bcrypt.hash(password, 10)
  const [result] = await pool.query(
    'INSERT INTO users (username, email, password, role) VALUES (?, ?, ?, ?)',
    [username, email, hashedPassword, role]
  )
  return result.insertId
}

export const getUserByEmail = async (email) => {
  const [users] = await pool.query('SELECT * FROM users WHERE email = ?', [email])
  return users[0]
}
