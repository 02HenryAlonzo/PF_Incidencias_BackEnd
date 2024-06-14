import server from './src/app.js'
import dotenv from 'dotenv'

dotenv.config()

const PORT = process.env.PORT || 3000

server.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`)
  console.log(`Documentación disponible en http://localhost:${PORT}/api-docs`)
})
