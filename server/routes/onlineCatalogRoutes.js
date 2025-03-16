import express from 'express'
import { featuredBooks, mostBorrowed, resources, resourcesView } from '../controller/onlineCatalogController.js'

const router = express.Router()

router.get('/featured-books', featuredBooks)
router.get('/most-borrowed', mostBorrowed)
router.get('/resources/view', resourcesView)
router.get('/resources', resources)

export default router

