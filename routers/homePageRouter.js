const router=require('express').Router();
const controller=require('../conrtollers/homePageController');

router.get('/bannersl1',controller.getAllBanners);
router.get('/adsadminl1',controller.getAdsAdmin);
router.get('/adsfromshopsl1',controller.getAdsFromShops);
router.get('/bannerl2/:id',controller.getBannerL2);
router.get('/catalog/:b_id',controller.getCatalogsByBolumId);
router.get('/vipshopsc6/:b_id',controller.getVipShopsc6);
router.post('/productscard',controller.getProductsCard);
router.get('/categories/:k_id',controller.getCategoriesByBid);
router.get('/subcategories/:c_id',controller.getSubCategories);
router.get('/allshops/:b_id',controller.getAllShopsOfBolum);



router.get('/secondvariantpage',controller.secondpageDetails);
router.get('/theeShops-homePage',controller.theeShopsForHomePage);
router.post('/follow',controller.followFunction);

module.exports = router;
