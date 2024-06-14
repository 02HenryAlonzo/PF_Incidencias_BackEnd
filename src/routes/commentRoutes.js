import express from 'express'
import { addComment, getComments } from '../controllers/commentController.js'
import { authenticate } from '../middlewares/authMiddleware.js'
import { validateCommentCreate } from '../middlewares/validationMiddleware.js'

const router = express.Router()

router.post('/', authenticate, validateCommentCreate, addComment)
router.get('/incidence/:incidenceId', authenticate, getComments)

export default router
