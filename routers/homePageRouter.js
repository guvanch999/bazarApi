const router=require('express').Router();
const controller=require('../conrtollers/homePageController');
const tokenConvertor=require('../midlwares/tokenConverter');
router.get('/bannersl1',controller.getAllBanners);
router.get('/adsadminl1',controller.getAdsAdmin);
router.get('/adsfromshopsl1',controller.getAdsFromShops);
router.get('/bannerl2/:id',controller.getBannerL2);
router.get('/catalog/:b_id',controller.getCatalogsByBolumId);
router.get('/vipshopsc6/:b_id',controller.getVipShopsc6);
router.get('/vipservicesc6',controller.getVipServicesc6);
router.post('/productscard',controller.getProductsCard);
router.get('/categories/:k_id',controller.getCategoriesByBid);
router.get('/subcategories/:c_id',controller.getSubCategories);

router.get('/brands/:bolum_id',controller.getAllBrands)


router.get('/secondvariantpage',controller.secondpageDetails);
router.get('/theeShops-homePage',controller.theeShopsForHomePage);
router.post('/follow',controller.followFunction);

router.get('/allshops/:b_id',controller.getAllShopsOfBolum);

router.get('/bolumler',controller.getBolumler);
router.post('/banners',controller.getBannerler);
router.get('/adshome',tokenConvertor,controller.getAdsForHomePage)
module.exports = router;
