const router=require('express').Router();
const controller=require('../conrtollers/testController');

router.get('/success',controller.getSuccess);
router.get('/interlanerror',controller.getInternalServerError);
router.get('/invalidparams',controller.getInvalidParams);

module.exports = router;
