import express from 'express'
import {
  createNewIncidence, getIncidences, getIncidenceDetails,
  updateIncidenceStatus, removeIncidence, getStatistics
} from '../controllers/incidenceController.js'
import { authenticate, authorize } from '../middlewares/authMiddleware.js'
import upload from '../middlewares/uploadMiddleware.js'
import { validateIncidenceCreate, validateStatusUpdate } from '../middlewares/validationMiddleware.js'

const router = express.Router()

router.get('/stats', authenticate, authorize(['admin']), getStatistics)

router.post('/', authenticate, upload.single('image'), validateIncidenceCreate, createNewIncidence)
router.get('/', authenticate, getIncidences)
router.get('/:id', authenticate, getIncidenceDetails)
router.delete('/:id', authenticate, removeIncidence)

router.put('/:id/status', authenticate, validateStatusUpdate, updateIncidenceStatus)

export default router
