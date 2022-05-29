const router=require('express').Router();
const controller=require('../conrtollers/testController');

router.get('/success',controller.getSuccess);
router.get('/interlanerror',controller.getInternalServerError);
router.get('/invalidparams',controller.getInvalidParams);
router.post('/create-bonus',controller.createBonusAction)
router.post('/create-arzanladysh-kart',controller.createArzanladysh)
module.exports = router;
