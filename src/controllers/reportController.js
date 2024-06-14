import { generateReport } from '../models/reportModel.js'
import { parse } from 'json2csv'

export const getReport = async (req, res) => {
  try {
    const { startDate, endDate } = req.query
    const report = await generateReport(startDate, endDate)

    const csv = parse(report)
    res.header('Content-Type', 'text/csv')
    res.attachment('report.csv')
    res.send(csv)
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}
