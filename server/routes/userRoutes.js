import express from 'express';
import { checkEmail, checkIsEmailVerified, checkSession, checkUsername, login, logout, profile, updateAccount, verifyEmail, verifyToken } from '../controller/userController.js';

const router = express.Router();

router.post('/login',login);
router.post('/logout',logout);
router.get('/check-session', checkSession);
router.post('/verify-email', verifyEmail)
router.get('/verify-token', verifyToken)
router.get('/check-verified', checkIsEmailVerified)
router.put('/update/:id', updateAccount)
router.get('/profile/:id', profile)
router.get('/check-username/:username', checkUsername)
router.get('/check-email/:email', checkEmail)

export default router;