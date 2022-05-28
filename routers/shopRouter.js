const router=require('express').Router();
const controller=require('../conrtollers/shopController');
const authToken=require('../midlwares/authToken')

router.use(authToken.VerifyToken)
router.get('/shopdetailmini/:id',controller.getShopMiniById)
router.get('/shopdetailfull/:id',controller.getShopFullById)
router.get('/shopads/:id',controller.getShopAds);
router.get('/shop-lenta/:id',controller.getShopLenta);
router.get('/shopbanners/:id',controller.getShopBanners)
router.get('/shopkatalogs/:id',controller.getShopCatalogs);
router.get('/katalogshops/:catalog_id',controller.getShopsWithCckg);
router.get('/shop-categories',controller.getShopCategories);

router.get('/bolum-shops/:bolum_id',controller.getBolumShops);

module.exports = router;