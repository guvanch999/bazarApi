const router=require('express').Router();
const controller=require('../conrtollers/productController');
const auth=require('../midlwares/authToken')
router.get('/get-colors',controller.getAllColors)
router.use(auth.VerifyToken)
router.get('/detailsfull/:id',controller.productDetailsFull);
router.post('/get-products',controller.getAllProducts)

module.exports = router;