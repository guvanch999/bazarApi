const router=require('express').Router();
const controller=require('../conrtollers/ordersController');
const auth=require('../midlwares/authToken')

router.use(auth.VerifyToken)
router.post('/get-product-list',controller.getProductList)
router.get('/get-all-promocodes',controller.getAllPromoCodes)
router.get('/get-all-arzanladysh-kard',controller.getAllUserArzanladyshKart)
router.get('/get-all-bonus-banks',controller.getAllUserBonusBanks)
router.get('/get-all-kupons',controller.getAllKupons)
router.post('/use-promocode',controller.usePromoCode)
router.post('/make-order',controller.makeOrderFunction)


router.get('/my-orders',controller.getPyOrders)
router.get('/order-detail/:order_id',controller.getShopDetailById)
module.exports = router;