const router=require('express').Router();
const controller=require('../conrtollers/CatalogsController');

router.get('/calaogsofshop/:s_id',controller.getShopCatalogs);


router.get('/allcatalogs',controller.getAllCatalogs);
router.get('/katalog-categories/:k_id',controller.getCategoriesForCatalog);

module.exports = router;