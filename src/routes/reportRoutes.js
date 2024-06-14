import express from 'express'
import { getReport } from '../controllers/reportController.js'
import { authenticate, authorize } from '../middlewares/authMiddleware.js'

const router = express.Router()

router.get('/export', authenticate, authorize(['admin']), getReport)

export default router
