import { createComment, getCommentsByIncidenceId } from '../models/commentModel.js'
import { sendNotification } from '../services/notificationService.js'

export const addComment = async (req, res) => {
  try {
    const { incidenceId, content } = req.body
    const commentId = await createComment(incidenceId, req.user.userId, content)
    sendNotification(`Nuevo comentario en la incidencia ${incidenceId}`)
    res.status(201).json({ message: 'Comentario añadido', commentId })
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}

export const getComments = async (req, res) => {
  try {
    const comments = await getCommentsByIncidenceId(req.params.incidenceId)
    res.json(comments)
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}
