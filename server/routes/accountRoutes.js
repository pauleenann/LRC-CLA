import express from 'express'
import { activate, activateAccount, createAccount, deactivateAccount, editAccount, getAccounts, invite, verifyToken, viewAccount } from '../controller/accountController.js'

const router = express.Router()

router.get('/', getAccounts)
router.post('/', createAccount)
router.post('/invite', invite)
router.post('/activate',activate)
router.get('/verify-token', verifyToken)
router.get('/:id', viewAccount)
router.put('/:id', editAccount)
router.put('/activate/:id', activateAccount)
router.put('/deactivate/:id', deactivateAccount)

export default router