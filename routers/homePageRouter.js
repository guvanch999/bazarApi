const router = require('express').Router();
const controller = require('../conrtollers/homePageController');
const tokenConvertor = require('../midlwares/tokenConverter');
const auth = require('../midlwares/authToken')
router.get('/bannersl1', controller.getAllBanners);
router.get('/bannerl2/:id', controller.getBannerL2);
router.get('/catalog/:b_id', controller.getCatalogsByBolumId);
router.get('/vipshopsc6/:b_id', controller.getVipShopsc6);
router.get('/vipservicesc6', controller.getVipServicesc6);


router.post('/productscard', controller.getProductsCard);
router.get('/categories/:k_id', controller.getCategoriesByBid);
router.get('/subcategories/:c_id', controller.getSubCategories);

router.get('/brands/:bolum_id', controller.getAllBrands)

router.get('/theeShops-homePage', controller.theeShopsForHomePage);

router.get('/allshops/:b_id', controller.getAllShopsOfBolum);

router.get('/bolumler', controller.getBolumler);
router.post('/banners', controller.getBannerler);
router.get('/adshome', tokenConvertor, controller.getAdsForHomePage, controller.getProductsAsAds, controller.getServiceProductsAsAds)
router.get('/like/:like/:id', auth.VerifyToken, controller.likeAllParams)

router.get('/search',controller.searchFromAll)
module.exports = router;
