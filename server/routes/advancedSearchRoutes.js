import express from 'express';
import { getAdvancedSearch } from '../controller/advancedSearchController.js';

const router = express.Router()

router.get('/', getAdvancedSearch);

export default router