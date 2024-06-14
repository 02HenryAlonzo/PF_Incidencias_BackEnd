import express from 'express'
import http from 'http'
import { Server } from 'socket.io'
import cors from 'cors'
import morgan from 'morgan'
import authRoutes from './routes/authRoutes.js'
import incidenceRoutes from './routes/incidenceRoutes.js'
import commentRoutes from './routes/commentRoutes.js'
import reportRoutes from './routes/reportRoutes.js'
import { i18nMiddleware } from './middlewares/i18nMiddleware.js'
import swaggerUi from 'swagger-ui-express'
import swaggerDocument from '../swagger-output.json' assert { type: 'json' }

const app = express()

const server = http.createServer(app)
export const io = new Server(server, {
  cors: {
    origin: 'http://127.0.0.1:5500',
    methods: ['GET', 'POST']
  }
})

app.use(cors())
app.use(morgan('dev'))
app.use(express.json())
app.use('/uploads', express.static('uploads'))
app.use(i18nMiddleware)

app.use('/api/auth', authRoutes)
app.use('/api/incidences', incidenceRoutes)
app.use('/api/comments', commentRoutes)
app.use('/api/reports', reportRoutes)

io.on('connection', (socket) => {
  console.log('Un cliente se ha conectado')

  socket.on('disconnect', () => {
    console.log('Un cliente se ha desconectado')
  })
})

// Configuración de Swagger UI
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument))

app.use((err, req, res, next) => {
  console.error(err.stack)
  res.status(500).json({ error: err.message || 'Algo salió mal!' })
})

export default server
