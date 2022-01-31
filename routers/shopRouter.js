const router=require('express').Router();
const controller=require('../conrtollers/shopController');

router.get('/shopdetailmini/:id',controller.getShopMiniById)
router.get('/shopdetailfull/:id',controller.getShopFullById)
router.get('/shopads/:id',controller.getShopAds);
router.get('/shopbanners/:id',controller.getShopBanners)
router.get('/shopkatalogs/:id',controller.getShopCatalogs);

router.get('/katalogshops/:catalog_id',controller.getShopsWithCckg);

router.get('/bolum-shops/:bolum_id',controller.getBolumShops);

module.exports = router;