import { io } from '../app.js'

export const sendNotification = (message, userId = null) => {
  if (userId) {
    io.to(userId).emit('notification', { message })
  } else {
    io.emit('notification', { message })
  }
}
