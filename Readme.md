# Backend para Plataforma de Gestión de Incidencias

Este repositorio contiene el código del backend desarrollado para una plataforma web que facilita la gestión de incidencias en edificios, permitiendo a los residentes reportar problemas y comunicarse eficientemente con el equipo administrativo.

## Tecnologías Utilizadas

- **Express.js**: Framework de Node.js utilizado para el desarrollo del servidor.
- **MySQL**: Base de datos relacional para almacenar los datos de manera estructurada.
- **API RESTful**: Implementación para permitir la comunicación eficiente entre el frontend y el backend.


## Estructura del Repositorio

El repositorio está estructurado de la siguiente manera:

- **/src**: Contiene el código fuente del backend.
  - **/models**: Definiciones de modelos de datos para interacción con la base de datos.
  - **/routes**: Rutas definidas para la API RESTful.
  - **/controllers**: Lógica de control para manejar las solicitudes HTTP.
  - **/middlewares**: Middleware para manejar aspectos como autenticación, manejo de errores, etc.
  - **/config**: Configuraciones del servidor y de la base de datos.
  - **/servides**: consumo de servicios como socket.io.

