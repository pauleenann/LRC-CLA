import express from 'express'
import { featuredBooks, featuredDepartment, getSearch, mostBorrowed } from '../controller/onlineCatalogController.js'

const router = express.Router()

router.get('/featured-books', featuredBooks)
router.get('/most-borrowed', mostBorrowed)
router.get('/featured-department', featuredDepartment)
router.get('/resources', getSearch)

export default router

