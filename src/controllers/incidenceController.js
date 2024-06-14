import { createIncidence, /* getAllIncidences, */ getIncidenceById, updateIncidence, deleteIncidence, getIncidencesStats, getIncidencesWithPagination } from '../models/incidenceModel.js'
import { sendNotification } from '../services/notificationService.js'

export const createNewIncidence = async (req, res) => {
  try {
    const { title, description, location } = req.body
    const imageUrl = req.file ? req.file.path : null
    const incidenceId = await createIncidence(req.user.userId, title, description, location, imageUrl)
    await sendNotification(`Nueva incidencia creada con ID ${incidenceId}`)
    res.status(201).json({ message: req.i18n.t('success.created') })
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}

export const getIncidences = async (req, res) => {
  try {
    const { page, status, startDate, endDate } = req.query
    const incidences = await getIncidencesWithPagination(page, undefined, status, startDate, endDate)
    res.json(incidences)
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}

export const getIncidenceDetails = async (req, res) => {
  try {
    const incidence = await getIncidenceById(req.params.id)
    if (!incidence) return res.status(404).json({ error: 'Incidencia no encontrada' })
    res.json(incidence)
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}

export const updateIncidenceStatus = async (req, res) => {
  try {
    const { id } = req.params
    const { status } = req.body
    await updateIncidence(id, status, req.user.userId, req.user.role)
    sendNotification(`Incidencia ${id} actualizada a ${status}`)
    res.status(201).json({ message: req.i18n.t('success.updated') })
  } catch (error) {
    res.status(error.message === 'No autorizado' ? 403 : 500).json({ error: error.message })
  }
}

export const removeIncidence = async (req, res) => {
  try {
    await deleteIncidence(req.params.id, req.user.userId, req.user.role)
    res.json({ message: 'Incidencia eliminada' })
  } catch (error) {
    res.status(error.message === 'No autorizado' ? 403 : 500).json({ error: error.message })
  }
}

export const getStatistics = async (req, res) => {
  try {
    const stats = await getIncidencesStats()
    res.json(stats)
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}
