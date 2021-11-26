const router=require('express').Router();
const controller=require('../conrtollers/hyzmatController');

router.get('/serviceKatalogs',controller.getServiceKatalogs);
router.get('/serviceShops', controller.getServiceShops);
router.get('/serviceProducts',controller.getServiceProduct);

module.exports = router;
