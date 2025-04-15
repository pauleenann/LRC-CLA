import express from 'express'
import { activate, activateAccount, checkEmailIfExist, checkIfUnameExist, createAccount, deactivateAccount, deleteInvite, editAccount, getAccounts, invite, verifyToken, viewAccount } from '../controller/accountController.js'

const router = express.Router()

router.get('/', getAccounts)
router.post('/', createAccount)
router.post('/invite', invite)
router.post('/activate',activate)
router.get('/verify-token', verifyToken)
router.get('/check-email',checkEmailIfExist)
router.get('/check-uname',checkIfUnameExist)
router.delete('/delete-invite', deleteInvite)
router.get('/:id', viewAccount)
router.put('/:id', editAccount)
router.put('/activate/:id', activateAccount)
router.put('/deactivate/:id', deactivateAccount)

export default router