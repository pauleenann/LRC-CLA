import express from 'express';
import { fetchCategory, fetchDetails, fetchReport, fetchReports, generateReports, saveReport } from '../controller/reportsController.js';

const router = express.Router();

router.get('/', fetchReports);
router.get('/categories', fetchCategory)
router.get('/details', fetchDetails)
router.post('/', saveReport)
router.get('/generate-report', generateReports);
router.get('/:id', fetchReport);

export default router;