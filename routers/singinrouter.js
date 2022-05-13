const router=require('express').Router();
const controller=require('../conrtollers/singincontroller');


router.post('/postcode',controller.PostCode);
router.post('/verificode',controller.verificationCode);
router.post('/finish',controller.finishsingup);
router.put('/update-user-data/:id',controller.updateUserDatas);
router.get('/all-users',controller.getAllUsers)
module.exports=router;