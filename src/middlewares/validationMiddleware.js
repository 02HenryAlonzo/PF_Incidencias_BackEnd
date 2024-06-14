import { check, validationResult } from 'express-validator'

export const validateIncidenceCreate = [
  check('title')
    .notEmpty()
    .withMessage((value, { req }) => req.t('validation.required', { field: req.t('fields.title') })),
  check('description')
    .notEmpty()
    .withMessage((value, { req }) => req.t('validation.required', { field: req.t('fields.description') })),
  check('location')
    .notEmpty()
    .withMessage((value, { req }) => req.t('validation.required', { field: req.t('fields.location') })),
  (req, res, next) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() })
    }
    next()
  }
]

export const validateStatusUpdate = [
  check('status').isIn(['pending', 'in_progress', 'resolved']).withMessage('Estado inválido'),
  (req, res, next) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() })
    }
    next()
  }
]

export const validateCommentCreate = [
  check('incidenceId').isNumeric().withMessage('ID de incidencia inválido'),
  check('content').notEmpty().withMessage('El contenido es obligatorio'),
  (req, res, next) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() })
    }
    next()
  }
]
