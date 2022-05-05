const router=require('express').Router();
const controller=require('../conrtollers/hyzmatController');

router.get('/serviceKatalogs',controller.getServiceKatalogs);
router.get('/serviceShops/:catalog_id', controller.getServiceShops);
router.post('/serviceProducts',controller.getServiceProduct);
router.get('/service-detail/:service_id',controller.getServiceDetail)
module.exports = router;
