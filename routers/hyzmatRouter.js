const router=require('express').Router();
const controller=require('../conrtollers/hyzmatController');
const auth=require('../midlwares/authToken')
router.use(auth.VerifyToken)
router.get('/serviceKatalogs',controller.getServiceKatalogs);
router.get('/serviceShops/:catalog_id', controller.getServiceShops);
router.post('/serviceProducts',controller.getServiceProduct);
router.get('/service-detail/:service_id',controller.getServiceDetail)
router.get('/service-product/:id',controller.getProductDetail)
module.exports = router;
