import swaggerAutogen from 'swagger-autogen'

const doc = {
  info: {
    version: '1.0.0',
    title: 'API Incidencias de un Edificio',
    description: 'Documentacion de la API'
  },
  host: 'localhost:3000',
  basePath: '/',
  schemes: ['http'],
  consumes: ['application/json'],
  produces: ['application/json']
}

const outputFile = './swagger-output.json'
const endpointsFiles = ['./src/app.js']

swaggerAutogen(outputFile, endpointsFiles, doc).then(() => {
  console.log('Documentacion Swagger fue generado exitosamente.')
})
