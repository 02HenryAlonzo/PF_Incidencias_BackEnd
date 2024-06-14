import jwt from 'jsonwebtoken'
import bcrypt from 'bcrypt'
import { createUser, getUserByEmail } from '../models/userModel.js'

export const register = async (req, res) => {
  try {
    const { username, email, password } = req.body
    const userId = await createUser(username, email, password)
    res.status(201).json({ message: 'Usuario registrado', userId })
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}

export const login = async (req, res) => {
  try {
    const { email, password } = req.body
    const user = await getUserByEmail(email)

    if (!user || !(await bcrypt.compare(password, user.password))) {
      return res.status(401).json({ error: 'Credenciales inválidas' })
    }

    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' })
    res.json({ token, role: user.role })
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}
