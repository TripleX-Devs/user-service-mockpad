import express from 'express';

import multer from 'multer';


// Importing the all controller 
import adminSignup from '@/controllers/Admin/public/authOps'
import addTeachersData from '@/controllers/Admin/public/addTeachers'

const router = express.Router();
const upload = multer(); 


router.post('/login' , adminSignup); 
router.post('/allTeacher',upload.single('file') , addTeachersData);


export default router;
