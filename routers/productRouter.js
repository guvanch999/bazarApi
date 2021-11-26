const router=require('express').Router();
const controller=require('../conrtollers/productController');

router.get('/detailsmini/:id',controller.productDetailsMini);
router.get('/detailsfull/:id',controller.productDetailsFull);


module.exports = router;